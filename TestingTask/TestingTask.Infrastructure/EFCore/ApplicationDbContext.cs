using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TestingTask.Domain.Actuals;
using TestingTask.Domain.Estimates;

namespace TestingTask.Infrastructure.EFCore
{
    public class ApplicationDbContext : DbContext
    {
        public DbSet<Actual> Actuals { get; set; }
        public DbSet<Estimate> Estimates { get; set; }

        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options) { }
    }
}
