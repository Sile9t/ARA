namespace ApartmentReservationApp.Models.ApartmentModel
{
    public class Review
    {
        public double Rate { get; set; }
        public string? Message { get; set; }
        public string? Answer { get; set; }
        public virtual int ApartmentId { get; set; }
        public virtual ApartmentInfo Apartment { get; set; }
    }
}
