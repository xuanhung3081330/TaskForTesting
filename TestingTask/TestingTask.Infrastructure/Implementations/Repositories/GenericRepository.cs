using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TestingTask.Domain;
using TestingTask.Infrastructure.EFCore;

namespace TestingTask.Infrastructure.Implementations.Repositories
{
    public class GenericRepository<T> : IGenericRepository<T> where T : class
    {
        private readonly ApplicationDbContext _context;
        private DbSet<T> tbl;

        public GenericRepository(ApplicationDbContext context)
        {
            _context = context;
            tbl = _context.Set<T>();
        }

        public async Task DeleteAsync(object id)
        {
            var item = await tbl.FindAsync(id);
            tbl.Remove(item);
        }

        public async Task<IEnumerable<T>> GetAllAsync()
        {
            return await tbl.ToListAsync();
        }

        public async Task<T> GetByIdAsync(object id)
        {
            return await tbl.FindAsync(id);
        }

        public async Task InsertAsync(T obj)
        {
            await tbl.AddAsync(obj);
        }

        public async Task SaveAsync()
        {
            await _context.SaveChangesAsync();
        }

        public async Task UpdateAsync(T obj)
        {
            tbl.Attach(obj);
            _context.Entry(obj).State = EntityState.Modified;
        }
    }
}
