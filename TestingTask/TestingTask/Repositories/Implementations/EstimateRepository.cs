using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TestingTask.DALs;
using TestingTask.Repositories.Interfaces;

namespace TestingTask.Repositories.Implementations
{
    public class EstimateRepository : IEstimateRepository
    {
        private readonly ApplicationDbContext _context;

        public EstimateRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<Estimates>> GetAllEstimates(string state)
        {
            List<string> states = state.Split(",").ToList();
            List<int> convertedStates = states.ConvertAll(int.Parse);
            List<Estimates> result = new List<Estimates>();
            result = await _context.Estimates
                .Where(item => convertedStates.Contains(item.State))
                .GroupBy(item => item.State)
                .Select(item => new Estimates
                {
                    EstimatesHouseholds = item.Sum(x => x.EstimatesHouseholds),
                    EstimatesPopulation = item.Sum(x => x.EstimatesPopulation)
                })
                .ToListAsync();

            return result;
        }
    }
}
