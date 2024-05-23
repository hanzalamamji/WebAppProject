using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Quiz_Co2HomeServer.Models;

namespace Quiz_Co2HomeServer.Controllers
{
    public class ResultController : Controller
    {
        // GET: Result

        db_Co2HomeSaversEntities1 db = new db_Co2HomeSaversEntities1();
        public ActionResult Index()
        {
            var data = db.Database.SqlQuery<GetWattsRecordsForKitchen_Result>("GetWattsRecordsForKitchen @username", new SqlParameter("@username", "1")).ToList();

            if (data.Count >= 3)
            {
                var lowestRecord = data.OrderBy(x => x.TotalWatts).First();
                var secondLowestRecord = data.OrderBy(x => x.TotalWatts).Skip(1).First();
                var thirdLowestRecord = data.OrderBy(x => x.TotalWatts).Skip(2).First();

                ViewBag.LowestRecord = lowestRecord;
                ViewBag.SecondLowestRecord = secondLowestRecord;
                ViewBag.ThirdLowestRecord = thirdLowestRecord;
            }
            else
            {
        
                ViewBag.LowestRecord = null;
                ViewBag.SecondLowestRecord = null;
                ViewBag.ThirdLowestRecord = null;
            }


            return View(data);
        }

    }
}