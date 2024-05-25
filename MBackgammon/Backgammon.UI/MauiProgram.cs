using Backgammon.UI.Pages;
using Backgammon.UI.ViewModels;
using Backgammon.UI.Services.Services;
using Backgammon.UI.Services.Abstractions;
using Microsoft.Extensions.Logging;
using CommunityToolkit.Maui;
using Backgammon.Client.Abstractions;
using Backgammon.Client.Services;

namespace Backgammon.UI
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .UseMauiCommunityToolkit()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                });
            builder.Services
                .RegisterServices()
                .RegisterPages()
                .RegisterViewModels();

#if DEBUG
            builder.Logging.AddDebug();
#endif

            return builder.Build();
        }

        static IServiceCollection RegisterPages(this IServiceCollection services)
        {
            services.AddTransient<AnecdotesView>();
            services.AddTransient<ConnectionInitView>();
            services.AddTransient<MenuView>();
            services.AddTransient<OfflineBackgammonView>();
            services.AddTransient<OnlineBackgammonView>();
            services.AddTransient<SettingsView>();
            return services;
        }
        static IServiceCollection RegisterViewModels(this IServiceCollection services)
        {
            services.AddTransient<AnecdotesViewModel>();
            services.AddTransient<ConnectionInitViewModel>();
            services.AddTransient<MenuViewModel>();
            services.AddTransient<OfflineBackgammonViewModel>();
            services.AddTransient<OnlineBackgammonViewModel>();
            services.AddTransient<SettingsViewModel>();
            return services;
        }
        static IServiceCollection RegisterServices(this IServiceCollection services)
        {
            services.AddSingleton<IGameClient, GameClient> ();
            services.AddSingleton<INavigationService, NavigationService>();
            return services;
        }
    }
}
