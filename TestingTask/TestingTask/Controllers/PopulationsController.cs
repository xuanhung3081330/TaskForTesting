using MediatR;
using Microsoft.AspNetCore.Mvc;
using System.Net;
using System.Threading.Tasks;
using TestingTask.Application.Queries.GetPopulationsQuery;
using TestingTask.Common;

namespace TestingTask.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class PopulationsController : ControllerBase
    {
        private IUrlHelper _urlHelper;
        private readonly IMediator _mediator;

        public PopulationsController(
            IUrlHelper urlHelper,
            IMediator mediator)
        {
            _urlHelper = urlHelper;
            _mediator = mediator;
        }

        public async Task<IActionResult> GetPopulations([FromQuery]GetPopulationsRequestModel request)
        {
            string route = _urlHelper.ActionContext.HttpContext.Request.Path.Value;
            TraceLogWriter.LogWriter(route, request.State);
            var response = _mediator.Send(request);

            return Ok(HttpStatusCode.OK);
        }
    }
}
