using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Infrastructure;
using Microsoft.AspNetCore.Mvc.Routing;
using Microsoft.AspNetCore.Routing;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using TestingTask.Domain.Actuals;
using TestingTask.Domain.Estimates;
using TestingTask.Infrastructure.EFCore;
using TestingTask.Infrastructure.Implementations.Repositories;
using System.Web;
using System.Linq;

namespace TestingTask
{
    public class Startup
    {
        private readonly IConfiguration _configuration;
        public Startup(IConfiguration configuration)
        {
            _configuration = configuration;
        }


        // This method gets called by the runtime. Use this method to add services to the container.
        // For more information on how to configure your application, visit https://go.microsoft.com/fwlink/?LinkID=398940
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddMvc(options => options.EnableEndpointRouting = false);

            var connectionString = _configuration.GetSection("HeidiSQL:ConnectionString").Value;
            services.AddTransient<IActualRepository, ActualRepository>();
            services.AddTransient<IEstimateRepository, EstimateRepository>();
            services.AddDbContext<ApplicationDbContext>(options => options.UseMySql(connectionString));
            services.AddTransient<IActionContextAccessor, ActionContextAccessor>();
            services.AddTransient<IUrlHelper>(x =>
            {
                var actionContext = x.GetService<IActionContextAccessor>().ActionContext;
                return new UrlHelper(actionContext);
            });

            TestingTask.Application.IoC.MapperConfiguration.Configuration(services);
            TestingTask.Application.IoC.MediatorConfiguration.Configuration(services);

            // Register the Swagger generator, defining 1 or more Swagger documents
            services.AddSwaggerGen(x =>
            {
                x.SwaggerDoc("v1", new Microsoft.OpenApi.Models.OpenApiInfo
                {
                    Title = "Testing Swagger API",
                    Version = "v1"
                });
                // To make sure API doesn't contain any conflicting action.
                x.ResolveConflictingActions(item => item.First());
            });
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            // Enable middleware to serve generated Swagger as a JSON endpoint.
            app.UseSwagger();

            // Enable middleware to serve swagger-ui (HTML, JS, CSS, etc.)
            // specifying the Swagger JSON endpoint.
            app.UseSwaggerUI(x =>
            {
                x.SwaggerEndpoint("/swagger/v1/swagger.json", "Testing Swagger API v1");
            });

            app.UseMvc(routes =>
            {
                routes.MapRoute(
                    name: "default",
                    template: "{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}
