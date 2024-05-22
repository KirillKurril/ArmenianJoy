using Backgammon.UI.ViewModels;

namespace Backgammon.UI.Pages;

public partial class ConnectionInitView : ContentPage
{
    private readonly ConnectionInitViewModel _viewModel;
    public ConnectionInitView(ConnectionInitViewModel viewModel)
    {
        InitializeComponent();
        _viewModel = viewModel;
        BindingContext = _viewModel;
    }
}