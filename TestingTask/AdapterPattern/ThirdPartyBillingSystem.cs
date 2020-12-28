using System;
using System.Collections.Generic;
using System.Text;

namespace AdapterPattern
{
    public class ThirdPartyBillingSystem
    {
        public void ProcessSalary(List<Employee> lstEmployee)
        {
            foreach(var employee in lstEmployee)
            {
                Console.WriteLine("Rs." + employee.Salary + " Salary credited to " + employee.Name + " Account");
            }
        }
    }
}
