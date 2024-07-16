﻿using ApartmentReservationApp.Models.ApartmentModel;
using ApartmentReservationApp.Models.ApartmentModel.OccupancyModel;
using ApartmentReservationApp.Models.UserModel;
using Microsoft.EntityFrameworkCore;

namespace ApartmentReservationApp.DB
{
    public class OccupancyContext : DbContext
    {
        private readonly string _connectionString;

        public DbSet<User> Users { get; set; }
        public DbSet<ApartmentInfo> Apartments { get; set; }
        public DbSet<Occupancy> Occupancies { get; set; }

        public OccupancyContext(DbContextOptions<OccupancyContext> optBuilder) 
            : base(optBuilder) 
        { }
        

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<User>(entity =>
            {
                entity.ToTable("users");
                entity.HasKey(x => x.Id);

                entity.HasMany(x => x.Apartments)
                    .WithOne(x => x.Owner)
                    .HasForeignKey(x => x.OwnerId);
            });

            modelBuilder.Entity<ApartmentInfo>(entity =>
            {
                entity.ToTable("ApartmentsInfo");
                entity.HasKey(x => x.Id);
            });

            modelBuilder.Entity<Occupancy>(entity =>
            {
                entity.ToTable("Occupancies");
                entity.HasKey(x => x.Id);

                entity.HasOne(x => x.Apartment)
                    .WithMany(x => x.Occupancies)
                    .HasForeignKey(x => x.ApartmentId);
            });
        }
    }
}
