﻿using ApartmentReservationAppClone.Models.UserModel;

namespace ApartmentReservationAppClone.Models.ApartmentModel
{
    public class Review
    {
        public int Id { get; set; }
        public double Rate { get; set; }
        public string? Message { get; set; }
        public string? Answer { get; set; }
        public virtual int OccupancyId { get; set; }
    }
}
