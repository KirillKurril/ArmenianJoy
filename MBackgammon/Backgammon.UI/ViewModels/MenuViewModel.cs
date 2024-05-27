using CommunityToolkit.Mvvm.Input;

namespace Backgammon.UI.ViewModels
{
    public partial class MenuViewModel
    {
        [RelayCommand]
        async Task GoToConnectionPage() => await GoToConnectionHandler();
        
        [RelayCommand]
        async Task GoToOfflineGame() => await GoToOfflineGameHandler();
        
        [RelayCommand]
        async Task GoToAnecdotes() => await GoToAnecdotesHandler();

        [RelayCommand]
        async Task GoToSettings() => await GoToSettingsHandler();


        private async Task GoToConnectionHandler()
            => await Shell.Current.GoToAsync("connecting");

        private async Task GoToOfflineGameHandler()
            => await Shell.Current.GoToAsync("offline_game");

        private async Task GoToSettingsHandler()
            => await Shell.Current.GoToAsync("connecting_page");
        private async Task GoToAnecdotesHandler()
            => await Shell.Current.GoToAsync("anecdotes");
    }
}
