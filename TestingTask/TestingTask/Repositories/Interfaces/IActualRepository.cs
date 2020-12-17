using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TestingTask.DALs;

namespace TestingTask.Repositories.Interfaces
{
    public interface IActualRepository
    {
        Task<List<Actuals>> GetAll(string state, string route);
    }
}
