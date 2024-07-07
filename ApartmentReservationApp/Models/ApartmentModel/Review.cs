using ApartmentReservationApp.Models.UserModel;

namespace ApartmentReservationApp.Models.ApartmentModel
{
    public class Review
    {
        public int Id { get; set; }
        public double Rate { get; set; }
        public string? Message { get; set; }
        public string? Answer { get; set; }
        public virtual int ApartmentId { get; set; }
        public virtual ApartmentInfo Apartment { get; set; }
        public virtual int UserId { get; set; }
        public virtual User User { get; set; }
    }
}
