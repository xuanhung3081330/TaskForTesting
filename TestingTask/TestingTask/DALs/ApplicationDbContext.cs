using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TestingTask.DALs
{
    public class ApplicationDbContext : DbContext
    {
        public DbSet<Actuals> Actuals { get; set; }
        public DbSet<Estimates> Estimates { get; set; }

        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options) { }
    }
}
