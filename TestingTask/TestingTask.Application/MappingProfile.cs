using AutoMapper;
using System;
using System.Collections.Generic;
using System.Text;
using TestingTask.Application.Queries.GetPopulationsQuery;
using TestingTask.Domain.Actuals;
using TestingTask.Domain.Estimates;

namespace TestingTask.Application
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            CreateMap<Actual, GetPopulationsResponseModel>();
        }
    }
}
