using Backgammon.UI.ViewModels;

namespace Backgammon.UI.Pages;

public partial class OnlineBackgammonView : ContentPage
{
    private readonly OnlineBackgammonViewModel _viewModel;
    public OnlineBackgammonView(OnlineBackgammonViewModel viewModel)
    {
        _viewModel = viewModel;
        BindingContext = _viewModel;
        InitializeComponent();
    }

}