using Microsoft.AspNetCore.Mvc;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using TestingTask.Common;
using TestingTask.Domain.Actuals;
using TestingTask.Domain.Estimates;

namespace TestingTask.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class PopulationsController : ControllerBase
    {
        private readonly IActualRepository _actualRepo;
        private readonly IEstimateRepository _estimateRepo;
        private IUrlHelper _urlHelper;

        public PopulationsController(
            IActualRepository actualRepo,
            IEstimateRepository estimateRepo,
            IUrlHelper urlHelper)
        {
            _actualRepo = actualRepo;
            _estimateRepo = estimateRepo;
            _urlHelper = urlHelper;
        }

        public async Task<IActionResult> GetPopulations([FromQuery] string state)
        {
            string route = _urlHelper.ActionContext.HttpContext.Request.Path.Value;
            TraceLogWriter.LogWriter(route, state);
            var records = await _actualRepo.GetAll(state, route);
            var resultActual = records.Select(item => new { item.State, item.ActualPopulation }).ToList();
            if (resultActual.Count != 0)
            {
                return Ok(resultActual);
            }
            else
            {
                var recordsEstimate = await _estimateRepo.GetAllEstimates(state);
                var resultEstimate = recordsEstimate.Select(item => new { item.State, item.EstimatesPopulation }).ToList();
                if (resultEstimate.Count != 0)
                {
                    return Ok(resultEstimate);
                }
                else
                {
                    return Ok(HttpStatusCode.NotFound);
                }
            }
        }
    }
}
