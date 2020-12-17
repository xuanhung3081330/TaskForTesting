using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TestingTask.DALs;
using TestingTask.Repositories.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace TestingTask.Repositories.Implementations
{
    public class ActualRepository : IActualRepository
    {
        private readonly ApplicationDbContext _context;

        public ActualRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<Actuals>> GetAll(string state, string route)
        {
            List<Actuals> result = new List<Actuals>();
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
