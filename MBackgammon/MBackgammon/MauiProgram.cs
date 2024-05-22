using CommunityToolkit.Maui;
using Microsoft.Extensions.Logging;
using Network.Services.Client;
using Network.Interfaces;
using MBackgammon.Pages;
using MBackgammon.ViewModels;

namespace MBackgammon
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
                .RegisterPages()
                .RegisterViewModels();

#if DEBUG
            builder.Logging.AddDebug();
#endif

            return builder.Build();
        }

        static IServiceCollection RegisterPages(this IServiceCollection services)
        {
            services.AddTransient<ConnectionInitView>();
            services.AddTransient<OnlineBackgammonView>();
            services.AddTransient<MenuView>();
            return services;
        }
        static IServiceCollection RegisterViewModels(this IServiceCollection services)
        {
            services.AddTransient<ConnectionInitViewModel>();
            services.AddTransient<OnlineBackgammonViewModel>();
            services.AddTransient<MenuViewModel>();
            return services;
        }
        static IServiceCollection RegisterClient(this IServiceCollection services)
        {
            Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions.AddSingleton<IClient, Client>(services);
            return services;
        }
    }
}
