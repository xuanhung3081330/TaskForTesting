using MediatR;
using System;
using System.Collections.Generic;
using System.Text;

namespace TestingTask.Application.Queries.GetPopulationsQuery
{
    public class GetPopulationsRequestModel : IRequest<IEnumerable<GetPopulationsResponseModel>>
    {
        public string State { get; set; }
    }
}
