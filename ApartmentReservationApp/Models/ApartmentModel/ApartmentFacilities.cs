namespace ApartmentReservationApp.Models.ApartmentModel
{
    public class ApartmentFacilities
    {
        public int Id { get; set; }
        public virtual List<ApartmentFacility> FacilitiesList{ get; set; }
    }
}
