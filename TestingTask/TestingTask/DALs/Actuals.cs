using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace TestingTask.DALs
{
    public class Actuals
    {
        [Key]
        public int Id { get; set; }
        public int State { get; set; }
        public double ActualPopulation { get; set; }
        public double ActualHouseholds { get; set; }
    }
}
