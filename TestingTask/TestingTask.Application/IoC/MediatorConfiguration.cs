using MediatR;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Reflection;
using System.Text;
using TestingTask.Application.Queries.GetPopulationsQuery;
using TestingTask.Domain.Actuals;
using TestingTask.Domain.Estimates;
using TestingTask.Infrastructure.Implementations.Repositories;

namespace TestingTask.Application.IoC
{
    public static class MediatorConfiguration
    {
        public static IServiceCollection Configuration(IServiceCollection services)
        {
            services.AddMediatR(typeof(GetPopulationsRequestModel).GetTypeInfo().Assembly);

            return services;
        }
    }
}
