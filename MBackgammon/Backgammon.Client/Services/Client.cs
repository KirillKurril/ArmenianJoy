﻿using Backgammon.Client.Abstractions;
using Entities.Models;
using Microsoft.AspNetCore.SignalR.Client;
using Newtonsoft.Json;
using System.Diagnostics;

namespace Backgammon.Client.Services
{
    public class GameClient : IGameClient
    {
        public string _roomName { get; private set; }
        public string URL { get; private set; }
        public HubConnection hubConnection { get; private set; }

        public delegate void ReceiveGameStatusDelegate(object sender, GameStatusData data);
        public delegate void CreateRoomResponseDelegate(object sender, bool answer, string message);
        public delegate void ConnectionStatusDelegate(object sender, bool succeeded, string status);

        public event IGameClient.ReceiveGameStatusDelegate ReceiveGameStatusEvent;
        public event IGameClient.CreateRoomResponseDelegate CreateRoomResponseEvent;
        public event IGameClient.CreateRoomResponseDelegate JoinRoomResponseEvent;
        public event IGameClient.ConnectionStatusDelegate ConnectionStatusEvent;
        public event EventHandler RoomCompleted;
        public event EventHandler EndGame;
        public event EventHandler<int> ColorResponse;
        public GameClient() { }
        public void SetURL(string url)
            => URL = url;

        public async Task Connect()
        {
            hubConnection = new HubConnectionBuilder()
                .WithUrl(URL)
                .WithAutomaticReconnect()
                .Build();

            hubConnection.Closed += async (error) =>
            {
                Debug.WriteLine("\n\n\nConnection closed. Trying to reconnect...\n\n\n");
                await Task.Delay(new Random().Next(0, 5) * 1000);
                await hubConnection.StartAsync();
            };

            hubConnection.Reconnecting += (error) =>
            {
                Debug.WriteLine("\n\n\nConnection lost. Reconnecting...\n\n\n");
                return Task.CompletedTask;
            };

            hubConnection.Reconnected += (connectionId) =>
            {
                Debug.WriteLine("\n\n\nReconnected with connection ID: " + connectionId);
                return Task.CompletedTask;
            };

            hubConnection.ServerTimeout = TimeSpan.FromSeconds(30); 
            hubConnection.KeepAliveInterval = TimeSpan.FromSeconds(15);
            try
            {
                await hubConnection.StartAsync();
                if (hubConnection.State == HubConnectionState.Connected)
                    ConnectionStatusEvent?.Invoke(this, true, "Подключение выполнено успешно");
                else
                    ConnectionStatusEvent?.Invoke(this, false, "Неизвестная ошибка подключения\n" +
                        "Проверьте подключение к интернету и попробуйте ещё раз");
            }
            catch (Exception ex)
            {
                ConnectionStatusEvent?.Invoke(this, false, ex.Message);
                Console.WriteLine($"Connection error: {ex.Message}" +
                    $"\nПроверьте подключение к интернету и попробуйте ещё раз");
            }

            hubConnection.On<string>("Test", (amongus) =>
            {
                File.WriteAllText("test.txt", amongus);
            });

            hubConnection.On<string>("GameStatusHandler", (amongus) =>
            {
                var data = JsonConvert.DeserializeObject<GameStatusData>(amongus);
                //File.WriteAllText("test.txt", data.ToString());
                ReceiveGameStatusEvent?.Invoke(this, data);

            });

            hubConnection.On<string>("ReceiveGameStatus", (json) =>
            {
                var data = JsonConvert.DeserializeObject<GameStatusData>(json);
                //File.WriteAllText("test0.txt", data.ToString());
                ReceiveGameStatusEvent?.Invoke(this, data);
            });


            hubConnection.On<bool, string>("CreateRoomAnswer", (bool createdSuccessfully, string message) =>
            {
                CreateRoomResponseEvent?.Invoke(this, createdSuccessfully, message);
            });

            hubConnection.On<bool, string>("JoinRoomAnswer", (bool joinedSuccessfully, string message) =>
            {
                JoinRoomResponseEvent?.Invoke(this, joinedSuccessfully, message);
            });

            hubConnection.On<string>("RoomCompleted", (string roomName) =>
            {
                _roomName = roomName;
                RoomCompleted?.Invoke(this, EventArgs.Empty);
            });

            hubConnection.On("EndGame", () =>
            {
                EndGame?.Invoke(this, EventArgs.Empty);
            });

            hubConnection.On("ColorResponse", (int color) =>
            {
                Console.WriteLine($"Пришел ответ на запрос цвета: {color}");
                ColorResponse?.Invoke(this, color);
            });
        }
        public async Task MoveRequest(int source, int destination)
        {
            Debug.WriteLine("CONNECTION STATUS: " + hubConnection.State);
            await hubConnection.InvokeAsync("MoveRequest", source, destination, _roomName);
        }
        public async Task GameDataRequest(string roomName)
        {
            await hubConnection.InvokeAsync("SendGameStatus", roomName);
        }
        public async Task CreateRoom(string roomName)
        {
            await hubConnection.InvokeAsync("CreateRoomRequest", roomName);
        }
        public async Task JoinRoom(string roomName)
        {
            await hubConnection.InvokeAsync("JoinRoomRequest", roomName);
        }
        public async Task LeaveRoom()
        {
            await hubConnection.InvokeAsync("LeaveRoom", _roomName);
        }
        public async Task RequestColor()
            => await hubConnection.InvokeAsync("ColorRequest", _roomName);
        public async Task Disconnect()
        {
            await hubConnection.StopAsync();
        }
    }
}
