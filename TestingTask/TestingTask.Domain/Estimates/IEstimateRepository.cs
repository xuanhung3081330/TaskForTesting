using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TestingTask.Domain.Estimates
{
    public interface IEstimateRepository
    {
        Task<List<Estimate>> GetAllEstimates(string state);
    }
}
