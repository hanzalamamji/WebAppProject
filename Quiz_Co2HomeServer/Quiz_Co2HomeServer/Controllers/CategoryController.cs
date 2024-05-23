using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Quiz_Co2HomeServer.Models;

namespace Quiz_Co2HomeServer.Controllers
{
    public class CategoryController : Controller
    {
        public class UsernameModel
        {
            public string Username { get; set; }
        }

        public ActionResult SelectCategory()
        {
            using (db_Co2HomeSaversEntities1 context = new db_Co2HomeSaversEntities1()) // Replace with your DbContext class
            {
                // Call the stored procedure and retrieve the result
                var result = context.Database.SqlQuery<UsernameModel>("EXEC InsertUsernameAndReturn").FirstOrDefault();

                // Store the result in the session
                Session["UsernameModelResult"] = result;

                // Pass the result to the view
                return View(result);
            }
        }

    }
}