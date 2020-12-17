using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace TestingTask.DALs
{
    public class Estimates
    {
        [Key]
        public int Id { get; set; }
        public int State { get; set; }
        public int Districts { get; set; }
        public int EstimatesPopulation { get; set; }
        public int EstimatesHouseholds { get; set; }
    }
}
