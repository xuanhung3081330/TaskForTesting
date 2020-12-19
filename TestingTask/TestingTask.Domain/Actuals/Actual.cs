using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace TestingTask.Domain.Actuals
{
    public class Actual
    {
        public int Id { get; set; }
        public int State { get; set; }
        public double ActualPopulation { get; set; }
        public double ActualHouseholds { get; set; }
    }
}
