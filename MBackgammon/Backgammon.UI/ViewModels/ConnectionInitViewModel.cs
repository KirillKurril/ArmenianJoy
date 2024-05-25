using Backgammon.Client.Abstractions;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;


namespace Backgammon.UI.ViewModels
{
    public partial class ConnectionInitViewModel : ObservableObject
    {
        IGameClient _client;

        [ObservableProperty]
        string _roomName;

        [ObservableProperty]
        string _responseMessage;

        [ObservableProperty]
        bool _responseMessageReceived;

        [ObservableProperty]
        bool _joinOrCreateActive;

        [ObservableProperty]
        bool _createButtonActive;

        [ObservableProperty]
        bool _joinButtonActive;

        [RelayCommand]
        async Task CreateButtonСlicked() => await CreateButtonСlickedHandler();

        [RelayCommand]
        async Task JoinButtonСlicked() => await JoinButtonСlickedHandler();

        [RelayCommand]
        async Task BackButtonСlicked() => await BackButtonСlickedHandler();

        [RelayCommand]
        async Task ConfirmCreateButtonСlicked() => await ConfirmCreateButtonСlickedHandler();

        [RelayCommand]
        async Task ConfirmJoinButtonСlicked() => await ConfirmJoinButtonСlickedHandler();

        public delegate void ResponseDelegate(object sender, string message, string header);
        public event ResponseDelegate ResponseEvent;

        public ConnectionInitViewModel(IGameClient client)
        {
            _client = client;
            _client.SetURL("https://localhost:7250/game");
            _client.ConnectionStatusEvent += ConnectionStatusHandler;
            _client.CreateRoomResponseEvent += CreateResponseHandler;
            _client.JoinRoomResponseEvent += JoinResponseHandler;
            _client.RoomCompleted += RoomCompleteHandler;
            Task.Run(() => _client.Connect());

            JoinOrCreateActive = true;
            CreateButtonActive = false;
            JoinButtonActive = false;
            ResponseMessage = "response message";
        }
        private void ConnectionStatusHandler(object sender, string message)
            =>  ResponseEvent?.Invoke(this, message, "Попытка подключения к серверу");
        private void CreateResponseHandler(object sender, bool successFlag, string message)
            => ResponseEvent?.Invoke(this, message, "Попытка создания комнаты");
        private void JoinResponseHandler(object sender, bool successFlag, string message)
            => ResponseEvent?.Invoke(this, message, "Попытка присоединения к комнате");

        private async Task CreateButtonСlickedHandler()
        {
            await Task.Run(() =>
            {
                CreateButtonActive = true;
                JoinOrCreateActive = false;
            });
        }

        private async Task JoinButtonСlickedHandler()
        {
            await Task.Run(() =>
            {
                JoinButtonActive = true;
                JoinOrCreateActive = false;
            });
        }

        private async Task BackButtonСlickedHandler()
        {
            await Task.Run(() =>
            {
                CreateButtonActive = false;
                JoinButtonActive = false;
                JoinOrCreateActive = true;
            });
        }

        private async Task ConfirmCreateButtonСlickedHandler()
        {
            if (!string.IsNullOrEmpty(RoomName))
                await _client.CreateRoom(RoomName);
        }

        private async Task ConfirmJoinButtonСlickedHandler()
        {
            if (!string.IsNullOrEmpty(RoomName))
                await _client.JoinRoom(RoomName);
        }
        private async static void RoomCompleteHandler(object? sender, EventArgs e)
        {
            await Shell.Current.GoToAsync("online_game");
        }

    }
}
