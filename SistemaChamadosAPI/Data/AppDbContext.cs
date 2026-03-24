using Microsoft.EntityFrameworkCore;
using SistemaChamadosAPI.Models;

namespace SistemaChamadosAPI.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {
        }

        public DbSet<Cliente> Clientes { get; set; }
    }
}