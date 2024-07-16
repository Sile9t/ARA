using Microsoft.Extensions.Logging;
using CommunityToolkit.Maui;
using ApartmentReservationApp.DB;
using Microsoft.Extensions.Configuration;
using Microsoft.EntityFrameworkCore;
using ApartmentReservationApp.Services;
using ApartmentReservationApp.ViewModels;

namespace ApartmentReservationApp
{
    public static class MauiProgram
    {
        public static MauiAppBuilder RegisterAppServices(this MauiAppBuilder appBuilder) 
        {
            appBuilder.Services.AddDbContext<OccupancyContext>(
                opt => { opt.UseSqlServer(appBuilder.Configuration
                    .GetConnectionString("db")).LogTo(Console.WriteLine); },
                ServiceLifetime.Singleton);

            appBuilder.Services.AddSingleton<IConnectivity>();
            appBuilder.Services.AddSingleton<IGeolocation>();
            appBuilder.Services.AddSingleton<IMap>();

            appBuilder.Services.AddSingleton<ApartmentService>();
            appBuilder.Services.AddSingleton<ApartmentsViewModel>();
            appBuilder.Services.AddSingleton<MainPage>();

            appBuilder.Services.AddTransient<DetailsPage>();

            return appBuilder;
        }

        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder.UseMauiApp<App>().ConfigureFonts(fonts =>
            {
                fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
            }).UseMauiCommunityToolkit();
            builder.RegisterAppServices();
#if DEBUG
            builder.Logging.AddDebug();
#endif
            return builder.Build();
        }
    }
}