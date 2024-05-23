using System.Web;
using System.Web.Mvc;

namespace Quiz_Co2HomeServer
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
