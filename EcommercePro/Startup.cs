using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EcommercePro.Startup))]
namespace EcommercePro
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
