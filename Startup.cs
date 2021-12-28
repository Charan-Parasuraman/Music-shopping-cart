using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ids410Clnu4Pro.Startup))]
namespace ids410Clnu4Pro
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
