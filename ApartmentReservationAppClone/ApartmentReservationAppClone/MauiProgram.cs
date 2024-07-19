using ApartmentReservationAppClone.DB;
using ApartmentReservationAppClone.Services;
using ApartmentReservationAppClone.Views;
using ApartmentReservationAppCLone.ViewModels;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;

namespace ApartmentReservationAppClone
{
    public static class MauiProgram
    {
        public static MauiAppBuilder RegisterAppServices(this MauiAppBuilder appBuilder)
        {
            appBuilder.Services.AddDbContext<OccupancyContext>(
                opt => {
                    opt.UseSqlServer(appBuilder.Configuration
                    .GetConnectionString("db")).LogTo(Console.WriteLine);
                },
                ServiceLifetime.Singleton);

            appBuilder.Services.AddSingleton<IConnectivity>(Connectivity.Current);
            appBuilder.Services.AddSingleton<IGeolocation>(Geolocation.Default);
            appBuilder.Services.AddSingleton<IMap>(Map.Default);

            appBuilder.Services.AddSingleton<ApartmentService>();
            appBuilder.Services.AddSingleton<ApartmentsViewModel>();
            appBuilder.Services.AddSingleton<MainPage>();

            //appBuilder.Services.AddTransient<DetailsPage>();

            return appBuilder;
        }

        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                });
            builder.RegisterAppServices();

#if DEBUG
    		builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}
