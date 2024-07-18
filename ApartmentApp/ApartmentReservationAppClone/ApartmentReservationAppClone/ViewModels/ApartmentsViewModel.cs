using ApartmentReservationAppClone.Models.ApartmentModel;
using ApartmentReservationAppClone.Services;
using ApartmentReservationAppClone.Views;
using CommunityToolkit.Mvvm.Input;
using Microsoft.Maui.Networking;
using System.Collections.ObjectModel;
using System.Diagnostics;

namespace ApartmentReservationAppCLone.ViewModels
{
    public partial class ApartmentsViewModel : BaseViewModel
    {
        public ObservableCollection<ApartmentInfo> Apartments { get; } = new();
        ApartmentService _apartmentService;
        IConnectivity _connectivity;
        IGeolocation _geolocation;

        public ApartmentsViewModel(ApartmentService apartmentService, IConnectivity connectivity, IGeolocation geolocation)
        {
            Title = "Available apartments";
            _apartmentService = apartmentService;
            _connectivity = connectivity;
            _geolocation = geolocation;
        }

        [RelayCommand]
        async Task GoToDetails(ApartmentInfo apartmentInfo)
        {
            if (apartmentInfo == null) return;

            //await Shell.Current.GoToAsync(nameof(DetailsPage), true,
            //    new Dictionary<string, object> {
            //    { "ApartmentInfo", apartmentInfo}
            //});
        }

        [RelayCommand]
        async Task GetApartmentsAsync()
        {
            if (IsBusy)
                return;

            try
            {
                if (_connectivity.NetworkAccess != NetworkAccess.Internet)
                {
                    await Shell.Current.DisplayAlert("No connectivity!",
                        $"Please check internet and try again.", "OK");
                    return;
                }

                IsBusy = true;
                var apartments = _apartmentService.GetAllApartments();

                if (Apartments.Count != 0)
                    Apartments.Clear();

                foreach (var apartment in apartments)
                    Apartments.Add(apartment);

            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Unable to get data: {ex.Message}");
                await Shell.Current.DisplayAlert("Error!", ex.Message, "OK");
            }
            finally
            {
                IsBusy = false;
            }

        }
    }
}
