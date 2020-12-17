using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TestingTask.DALs;

namespace TestingTask.Repositories.Interfaces
{
    public interface IEstimateRepository
    {
        Task<List<Estimates>> GetAllEstimates(string state);
    }
}
