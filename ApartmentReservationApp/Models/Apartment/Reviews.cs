namespace ApartmentReservationApp.Models.ApartmentModel
{
    public class Reviews
    {
        public virtual int? ApartmentId { get; set; }
        public virtual ApartmentInfo? Apartment { get; set; }
        public List<Review> List { get; set; }
    }
}
