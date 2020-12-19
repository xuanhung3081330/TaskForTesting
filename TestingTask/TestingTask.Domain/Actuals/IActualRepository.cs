using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TestingTask.Domain.Actuals
{
    public interface IActualRepository
    {
        Task<List<Actual>> GetAll(string state, string route);
    }
}
