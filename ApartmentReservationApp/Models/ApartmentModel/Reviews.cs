namespace ApartmentReservationApp.Models.ApartmentModel
{
    public class Reviews
    {
        public virtual int? ApartmentId { get; set; }
        public int ReviewCount { get; set; }
        public List<Review> List { get; set; }
    }
}
