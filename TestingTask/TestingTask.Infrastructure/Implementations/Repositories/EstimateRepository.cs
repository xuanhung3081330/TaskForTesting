using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TestingTask.Domain.Estimates;
using TestingTask.Infrastructure.EFCore;

namespace TestingTask.Infrastructure.Implementations.Repositories
{
    public class EstimateRepository : IEstimateRepository
    {
        private readonly ApplicationDbContext _context;

        public EstimateRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<List<Estimate>> GetAllEstimates(string state)
        {
            List<string> states = state.Split(",").ToList();
            List<int> convertedStates = states.ConvertAll(int.Parse);
            List<Estimate> result = new List<Estimate>();
            result = await _context.Estimates
                .Where(item => convertedStates.Contains(item.State))
                .GroupBy(item => item.State)
                .Select(item => new Estimate
                {
                    EstimatesHouseholds = item.Sum(x => x.EstimatesHouseholds),
                    EstimatesPopulation = item.Sum(x => x.EstimatesPopulation)
                })
                .ToListAsync();

            return result;
        }
    }
}
