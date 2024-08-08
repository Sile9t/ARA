using ApartmentReservationAppCLone.ViewModels;

namespace ApartmentReservationAppClone.Views
{
    public partial class MainPage : ContentPage
    {
        public MainPage(ApartmentsViewModel viewModel)
        {
            InitializeComponent();
            BindingContext = viewModel;

        }
    }

}
