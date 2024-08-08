using ApartmentReservationAppClone.Models.ApartmentModel;
using ApartmentReservationAppClone.Services;
using ApartmentReservationAppClone.Views;
using CommunityToolkit.Mvvm.Input;
using System.Diagnostics;

namespace ApartmentReservationAppClone.ViewModels
{
    public partial class DetailsViewModel : BaseViewModel
    {
        ApartmentService _apartmentService;
        IConnectivity _connectivity;
        IGeolocation _geolocation;

        public DetailsViewModel(ApartmentService apartmentService, IConnectivity connectivity, IGeolocation geolocation)
        {
            Title = "Apartment details";
            _apartmentService = apartmentService;
            _connectivity = connectivity;
            _geolocation = geolocation;
        }

        [RelayCommand]
        async Task<ApartmentInfo> GetApartmentDetailsAsync(int id)
        {
            if (IsBusy) return null;

            ApartmentInfo apartment = null;

            try
            {
                if (_connectivity.NetworkAccess != NetworkAccess.Internet)
                {
                    await Shell.Current.DisplayAlert("No connectivity!",
                        $"Please check internet and try again.", "OK");
                    return null;
                }

                IsBusy = true;
                apartment = _apartmentService.GetApartmentById(id);

                if (apartment == null)
                    await Shell.Current.DisplayAlert("No data",
                        "This apartment is doesn't exist", "OK");

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

            return apartment;
        }
    }
}
