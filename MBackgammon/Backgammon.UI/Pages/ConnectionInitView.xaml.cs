using Backgammon.UI.ViewModels;

namespace Backgammon.UI.Pages;

public partial class ConnectionInitView : ContentPage
{
    private readonly ConnectionInitViewModel _viewModel;
    public ConnectionInitView(ConnectionInitViewModel viewModel)
    {
        InitializeComponent();
        _viewModel = viewModel;
        _viewModel.ResponseEvent += ServerRequestHandler;
        BindingContext = _viewModel;
    }

    private void ServerRequestHandler(object sender, string message, string header)
    {
        Dispatcher.Dispatch(async () =>
        {
            await DisplayAlert(header, message, "OK");
        });
    }
}