﻿using Entities.GameServices;
using Entities.Models;
using Microsoft.Maui.Controls.Shapes;
using Backgammon.Client.Abstractions;
using CommunityToolkit.Mvvm.Input;
using CommunityToolkit.Mvvm.ComponentModel;

namespace Backgammon.UI.ViewModels
{
    public partial class OnlineBackgammonViewModel : ObservableObject
    {
        IGameClient _client;
        MoveVerifier verifier;

        int firstPosition = -1;
        bool throwEnabled = false;
        bool fieldEnabled = false;

        [ObservableProperty]
        int _diceSize;

        [ObservableProperty]
        int _whiteScore;        //= -1;

        [ObservableProperty]
        int _blackScore;        //= -1;

        [ObservableProperty]
        bool _throwButtonIsActive;

        [ObservableProperty]
        string _firstDicePicture;

        [ObservableProperty]
        string _secondDicePicture;

        [ObservableProperty]
        int _moveColor;     //=0

        public OnlineBackgammonViewModel(IGameClient client)
        {
            _client = client;
            _client.ColorResponse += ReceiveColorHandler;
            _client.ReceiveGameStatusEvent += ReceiveGameDataHandler;
            _client.EndGame += EndGameHandler;

            Unloaded += UnloadPageHandler;
        }

        private void PositionSelected(object sender, RoutedEventArgs e)
        {
            int position;
            if (((Button)sender).Name == "Throw")
                position = 25;
            else
            {
                position = Convert.ToInt32(((Button)sender).Name.Substring(1));
                if (verifier.Color == Entities.Models.Colors.Black)
                    position = (position + 12) % 24;
            }

            if (firstPosition != -1
                && verifier.MoveConfirm(firstPosition, position))
            {
                Task.Run(()
                    => _client.MoveRequest(firstPosition, position));
                firstPosition = -1;
                throwEnabled = false;
            }
            else if (verifier.MoveConfirm(firstPosition, position))
            {
                firstPosition = position;
                if (verifier.Throwable(position))
                    throwEnabled = true;
            }
        }

        private void CancelChoiсe(object sender, MouseButtonEventArgs e)
            => firstPosition = -1;
        private void ReceiveColorHandler(object sender, int color)
            => verifier.Color = color;
        public void ReceiveGameDataHandler(object sender, GameStatusData data)
        {
            verifier.Update(data.Status.ToArray(), data.DiceValues, data.MoveValues, data.ReachedHome, data.HatsOffToYou, data.Safemode);
            RefreshField(data.ExtraStatus);
            fieldEnabled = verifier.Color == data.MoveColor;
            whiteScore = data.Score.Item1;
            blackScore = data.Score.Item2;
            moveColor = data.MoveColor;
        }

        public void EndGameHandler(object sender, EventArgs e)
        {
            MessageBox.Show($"Congratulations!\n{((verifier.Color == Entities.Models.Colors.White) ?
           ("White") : ("Black"))}" +
           $" player win!");

        }

        void RefreshField(List<(int, int)> extraStatus)
        {
            ///надо колдовать через биндинг
            for (int i = 0; i < 24; ++i)
            {
                StackPanel stackPanel = (StackPanel)FindName($"S{i}");
                stackPanel.Children.Clear();
                for (int j = 0; j < extraStatus[i].Item2; ++j)
                {
                    Ellipse piece = new Ellipse();
                    piece.Width = 20;
                    piece.Height = 20;

                    if (extraStatus[i].Item1 == 1)
                        piece.Fill = Brushes.White;
                    else
                        piece.Fill = Brushes.Black;

                    stackPanel.Children.Add(piece);
                }
            }
            ///надо колдовать через биндинг
        }

        protected void UnloadPageHandler(object sender, RoutedEventArgs e)
        {
            Task.Run(() => _client.Disconnect());
        }
    }
}
