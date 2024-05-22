using Backgammon.UI.ViewModels;

namespace Backgammon.UI.Pages;

public partial class OfflineBackgammonView : ContentPage
{
    private readonly OfflineBackgammonViewModel _viewModel;
    public OfflineBackgammonView(OfflineBackgammonViewModel viewModel)
    {
        InitializeComponent();
        _viewModel = viewModel;
        BindingContext = _viewModel;
    }
}