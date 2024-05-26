using Entities.GameServices;
using Entities.Models;
using Microsoft.Maui.Controls.Shapes;
using Backgammon.Client.Abstractions;
using CommunityToolkit.Mvvm.Input;
using CommunityToolkit.Mvvm.ComponentModel;
using System.Collections.ObjectModel;
using System.Drawing;
using Backgammon.UI.Services.Abstractions;
using Backgammon.UI.Services.Services;

namespace Backgammon.UI.ViewModels
{
    public partial class TESTVIEWMODEL : ObservableObject
    {
        MoveVerifier _moveVerifier;
        int _firstPosition = -1;

        [ObservableProperty]
        bool _throwEnabled;

        [ObservableProperty]
        bool _fieldEnabled;

        [ObservableProperty]
        double _diceSize;

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

        public ObservableCollection<ObservableCollection<Ellipse>> EllipseCollections { get; set; }

        [RelayCommand]
        async Task PositionSelected(string stringPositionIndex)
            => await PositionSelectedHandler(stringPositionIndex);

        private async Task PositionSelectedHandler(string stringPositionIndex)
        {
            throw new NotImplementedException();
        }

        public TESTVIEWMODEL()
        {
            ThrowEnabled = false;
            FieldEnabled = true;
            MoveColor = 0;
            WhiteScore = -1;
            BlackScore = -1;
            DiceSize = 20;
            EllipseCollections = new ObservableCollection<ObservableCollection<Ellipse>>();

            for (int i = 0; i < 24; ++i)
                EllipseCollections.Add(new ObservableCollection<Ellipse>());

            for (int i = 0; i < 15; ++i)
            {
                Ellipse blackEllipse = new Ellipse
                {
                    HeightRequest = DiceSize,
                    WidthRequest = DiceSize,
                    Fill = Brush.Black
                };

                Ellipse whiteEllipse = new Ellipse
                {
                    HeightRequest = DiceSize,
                    WidthRequest = DiceSize,
                    Fill = Brush.White
                };
                EllipseCollections[0].Add(whiteEllipse);
                EllipseCollections[0].Add(blackEllipse);
            }
        }
    }
}
