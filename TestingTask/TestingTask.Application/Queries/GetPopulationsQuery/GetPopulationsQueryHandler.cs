using AutoMapper;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using TestingTask.Domain.Actuals;
using TestingTask.Domain.Estimates;

namespace TestingTask.Application.Queries.GetPopulationsQuery
{
    public class GetPopulationsQueryHandler : IRequestHandler<GetPopulationsRequestModel, IEnumerable<GetPopulationsResponseModel>>
    {
        private readonly IActualRepository _actualRepo;
        private readonly IEstimateRepository _estimateRepo;
        private readonly IMapper _mapper;

        public GetPopulationsQueryHandler(
            IActualRepository actualRepo,
            IEstimateRepository estimateRepo,
            IMapper mapper)
        {
            _actualRepo = actualRepo;
            _estimateRepo = estimateRepo;
            _mapper = mapper;
        }

        public async Task<IEnumerable<GetPopulationsResponseModel>> Handle(GetPopulationsRequestModel request, CancellationToken cancellationToken)
        {
            IEnumerable<GetPopulationsResponseModel> result = null;
            var actualRecords = await _actualRepo.GetAllActualsAsync(request.State);
            if (actualRecords.Count() == 0)
            {
                var estimateRecords = await _estimateRepo.GetAllEstimates(request.State);
                result = _mapper.Map<IEnumerable<GetPopulationsResponseModel>>(estimateRecords);
            }
            else
            {
                result = _mapper.Map<IEnumerable<GetPopulationsResponseModel>>(actualRecords);
            }

            return result;
        }
    }
}
