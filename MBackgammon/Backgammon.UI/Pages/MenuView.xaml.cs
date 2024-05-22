using Backgammon.UI.ViewModels;

namespace Backgammon.UI.Pages;

public partial class MenuView : ContentPage
{
    private readonly MenuViewModel _viewModel;
    public MenuView(MenuViewModel viewModel)
    {
        InitializeComponent();
        _viewModel = viewModel;
        BindingContext = _viewModel;
    }
}