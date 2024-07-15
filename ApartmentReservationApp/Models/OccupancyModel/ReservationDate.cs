using ApartmentReservationApp.Models.ApartmentModel.OccupancyModel;
using ApartmentReservationApp.Models.UserModel;

namespace ApartmentReservationApp.Models.ApartmentModel
{
    public class ReservationDate
    {
        public DateOnly Date { get; set; }
        public virtual int ApartmentId { get; set; }
        public virtual ApartmentInfo Apartment { get; set; }
        public virtual int ReservedById { get; set; }
        public virtual User ReservedBy { get; set; }
        public virtual int StateId { get; set; }
        public virtual OccupancyState State { get; set; }
        public double Cost { get; set; }
        public double ExtraCharge { get; set; }
    }
}
