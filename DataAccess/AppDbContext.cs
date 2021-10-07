using Entities;
using Microsoft.EntityFrameworkCore;
using System;

namespace DataAccess
{
    public class AppDbContext : DbContext
    {
        public DbSet<Usuario> Usuario { get; set; }

        public AppDbContext(DbContextOptions<AppDbContext> opcionesConexion) : base(opcionesConexion) { }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            ModelConfig(modelBuilder);
        }

        private void ModelConfig(ModelBuilder modelBuilder)
        {
            new UserConfiguration(modelBuilder.Entity<Usuario>());
        }
    }
}
