using ApartmentReservationApp.DB;
using ApartmentReservationApp.Dtos;
using ApartmentReservationApp.Models.ApartmentModel;
using AutoMapper;

namespace ApartmentReservationApp.Services
{
    public class ApartmentService
    {
        private readonly OccupancyContext _context;
        private readonly IMapper _mapper;

        public ApartmentService(OccupancyContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public int AddApartment(ApartmentInfoDto apartmentDto)
        {
            if (_context.Apartments.Any(x => x.Latitude == apartmentDto.Latitude 
                && x.Longitude == apartmentDto.Longitude && x.OwnerId == apartmentDto.OwnerId))
                    throw new Exception("Apartment like this is already exist!");

            var entity = _mapper.Map<ApartmentInfo>(apartmentDto);

            _context.Add(entity);
            _context.SaveChanges();

            return entity.Id;
        }

        public ApartmentInfo? GetApartmentById(int id)
        {
            var apart = _context.Apartments.FirstOrDefault(x => x.Id == id);

            return apart;
        }

        public ApartmentInfo RemoveApartment(int id)
        {
            var entity = _context.Apartments.FirstOrDefault(x => x.Id == id);

            if (entity != null)
                throw new Exception("No apartment like this!");

            _context.Apartments.Remove(entity);
            _context.SaveChanges();

            return entity;
        }

        public IEnumerable<ApartmentInfo> GetAllApartments()
        {
            return _context.Apartments.AsEnumerable();
        }
    }
}
