using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TestingTask.Domain.Actuals
{
    public interface IActualRepository
    {
        Task<IEnumerable<Actual>> GetAllActualsAsync(string route);
    }
}
