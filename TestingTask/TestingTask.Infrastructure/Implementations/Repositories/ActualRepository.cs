using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TestingTask.Domain.Actuals;
using TestingTask.Infrastructure.EFCore;

namespace TestingTask.Infrastructure.Implementations.Repositories
{
    public class ActualRepository : IActualRepository
    {
        private readonly ApplicationDbContext _context;

        public ActualRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<IEnumerable<Actual>> GetAllActualsAsync(string state)
        {
            IEnumerable<Actual> result = null;
            if (!string.IsNullOrEmpty(state))
            {
                List<string> states = state.Split(",").ToList();
                List<int> convertedStates = states.ConvertAll(int.Parse);

                result = await _context.Actuals.Where(item => convertedStates.Contains(item.State)).ToListAsync();
            }
            else
            {
                result = await _context.Actuals.Where(item => true).ToListAsync();
            }

            return result;
        }
    }
}
