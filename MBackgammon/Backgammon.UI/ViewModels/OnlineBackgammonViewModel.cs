﻿using Entities.GameServices;
using Entities.Models;
using Microsoft.Maui.Controls.Shapes;
using Backgammon.Client.Abstractions;
using CommunityToolkit.Mvvm.Input;
using CommunityToolkit.Mvvm.ComponentModel;
using System.Collections.ObjectModel;

namespace Backgammon.UI.ViewModels
{
    public partial class OnlineBackgammonViewModel : ObservableObject
    {
        IGameClient _client;
        MoveVerifier _moveVerifier;

        int _firstPosition = -1;

        [ObservableProperty]
        bool _throwEnabled;

        [ObservableProperty]
        bool _fieldEnabled;

        [ObservableProperty]
        int _diceSize;

        [ObservableProperty]
        int _whiteScore;    

        [ObservableProperty]
        int _blackScore;    

        [ObservableProperty]
        bool _throwButtonIsActive;

        [ObservableProperty]
        string _firstDicePicture;

        [ObservableProperty]
        string _secondDicePicture;

        [ObservableProperty]
        int _moveColor;     

        public ObservableCollection<ObservableCollection<EllipseModel>> EllipseCollections { get; }

        [RelayCommand]
        async Task PositionSelected(string stringPositionIndex)
            => await PositionSelectedHandler(stringPositionIndex);

        [RelayCommand]
        async Task CancelChoiсe() => await CancelChoiсeHandler();

        public OnlineBackgammonViewModel(IGameClient client)
        {
            ThrowEnabled = false;
            FieldEnabled = false;
            MoveColor = 0;
            WhiteScore = -1;
            BlackScore = -1;
            _client = client;
            _client.ColorResponse += ReceiveColorHandler;
            _client.ReceiveGameStatusEvent += ReceiveGameDataHandler;
            _client.EndGame += EndGameHandler;
        }

        private async Task PositionSelectedHandler(string stringPositionIndex)
        {
            int selectedCellIndex = int.Parse(stringPositionIndex);
            if (selectedCellIndex != 25)
            {
                if (_moveVerifier.Color == Entities.Models.Colors.Black)
                    selectedCellIndex = (selectedCellIndex + 12) % 24;
            }

            if (_firstPosition != -1
                && _moveVerifier.MoveConfirm(_firstPosition, selectedCellIndex))
            {
                await Task.Run(()
                    => _client.MoveRequest(_firstPosition, selectedCellIndex));
                _firstPosition = -1;
                ThrowButtonIsActive = false;
            }
            else if (_moveVerifier.MoveConfirm(_firstPosition, selectedCellIndex))
            {
                _firstPosition = selectedCellIndex;
                if (_moveVerifier.Throwable(selectedCellIndex))
                    ThrowButtonIsActive = true;
            }
        }

        private async Task CancelChoiсeHandler()
            => await Task.Run(() => _firstPosition = -1);
        private void ReceiveColorHandler(object sender, int color)
            => _moveVerifier = new MoveVerifier(color);
        public void ReceiveGameDataHandler(object sender, GameStatusData data)
        {
            _moveVerifier.Update(data.Status.ToArray(), data.DiceValues, data.MoveValues, data.ReachedHome, data.HatsOffToYou, data.Safemode);
            RefreshField(data.ExtraStatus);
            FieldEnabled = _moveVerifier.Color == data.MoveColor;
            WhiteScore = data.Score.Item1;
            BlackScore = data.Score.Item2;
            MoveColor = data.MoveColor;
        }

        public void EndGameHandler(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        void RefreshField(List<(int, int)> extraStatus)
        {
            for(int i = 0; i < 24; ++i)
            {
                var collection = EllipseCollections[i];
                
                collection.Clear();
                foreach((int color, int amount) in extraStatus)
                    for(int j = 0; i < amount; ++i)
                    {
                        var ellipse = new EllipseModel(DiceSize, color);
                        collection.Add(ellipse);
                    }
            }
        }

        public async Task LeavePageHandler()
            =>  await Task.Run(() => _client.Disconnect());
    }
}
