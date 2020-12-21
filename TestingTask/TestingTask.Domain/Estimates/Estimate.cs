using System;
using System.Collections.Generic;
using System.Text;

namespace TestingTask.Domain.Estimates
{
    public class Estimate
    {
        public int Id { get; set; }
        public int State { get; set; }
        public int Districts { get; set; }
        public int EstimatesPopulation { get; set; }
        public int EstimatesHouseholds { get; set; }
    }
}
