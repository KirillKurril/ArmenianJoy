using Backgammon.UI.Pages;

namespace Backgammon.UI
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Routing.RegisterRoute("menu", typeof(MenuView));
            Routing.RegisterRoute("connecting", typeof(ConnectionInitView));
            Routing.RegisterRoute("online_game", typeof(OnlineBackgammonView));
            Routing.RegisterRoute("offline_game", typeof(OfflineBackgammonView));
            Routing.RegisterRoute("anecdotes", typeof(AnecdotesView));
            Routing.RegisterRoute("settings", typeof(SettingsView));
        }
    }
}
