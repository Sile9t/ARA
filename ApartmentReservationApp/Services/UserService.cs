﻿using ApartmentReservationApp.DB;
using ApartmentReservationApp.Dtos;
using ApartmentReservationApp.Models.UserModel;
using AutoMapper;

namespace ApartmentReservationApp.Services
{
    public class UserService
    {
        private readonly OccupancyContext _context;
        private readonly IMapper _mapper;

        public UserService(OccupancyContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public int AddUser(UserDto userDto)
        {
            if (_context.Users.Any(x => x.Phone == userDto.Phone))
                throw new Exception("User with this phone number already exist!");

            var entity = _mapper.Map<User>(userDto);

            _context.Users.Add(entity);
            _context.SaveChanges();

            return entity.Id;
        }

        public UserDto GetUserByPhone(string phone)
        {
            var user = _context.Users.FirstOrDefault(x => x.Phone == phone);

            if (user == null)
                throw new Exception("User with this phone number not exist!");

            return _mapper.Map<UserDto>(user);
        }

        public UserDto RemoveUser(int id)
        {
            var user = _context.Users.FirstOrDefault(x => x.Id == id);

            if (user == null)
                throw new Exception("User with this phone number not exist!");

            _context.Users.Remove(user);
            _context.SaveChanges();

            return _mapper.Map<UserDto>(user);
        }
    }
}
