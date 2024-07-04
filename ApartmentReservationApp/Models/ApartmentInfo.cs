namespace ApartmentReservationApp.Models
{
    public class ApartmentInfo
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public double Longitute { get; set; }
        public double Latitude { get; set; }
        public string CapacityInfo { get; set; }
        public string? ShortDescription { get; set; }
        public string? LongDescription { get; set; }
        public double Cost { get; set; }
        public double Rate { get; set; }
        public List<byte []> Photos { get; set; }
    }
}
