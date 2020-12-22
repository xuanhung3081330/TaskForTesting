using MediatR;
using Microsoft.Extensions.DependencyInjection;
using System.Reflection;
using TestingTask.Application.Queries.GetPopulationsQuery;

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
