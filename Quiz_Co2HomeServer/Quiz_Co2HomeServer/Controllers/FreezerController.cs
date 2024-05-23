using OpenAI_API;
using OpenAI_API.Completions;
using OpenAI_API.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using Quiz_Co2HomeServer.Models;
using System.Data.SqlClient;
using static Quiz_Co2HomeServer.Controllers.CategoryController;

namespace Quiz_Co2HomeServer.Controllers
{
    public class FreezerController : Controller
    {
        // GET: Freezer
        // GET: Refrigerator
        private db_Co2HomeSaversEntities1 dbContext = new db_Co2HomeSaversEntities1(); // Replace with your DbContext class

        // Question 1

        public ActionResult Index()
        {
            ViewData["Username"] = "YourUsername"; // Replace with the actual username
            return View();
        }

        [HttpPost]
        public JsonResult InsertRefrigilator(string username, int noOfRefrigilators)
        {
            try
            {
                // Check if a record with the given username exists in the database
                var existingRefrigerator = dbContext.tbl_Freezer.FirstOrDefault(r => r.Usernme == username);

                if (existingRefrigerator != null)
                {
                    // If a record with the username exists, update the NoOfRefrigilators value
                    existingRefrigerator.NoOfFreezers = noOfRefrigilators;
                }
                else
                {
                    // If the username doesn't exist, create a new record
                    var refrigerator = new tbl_Freezer
                    {
                        CategoryID = 1,
                        Appliance = "Freezer",
                        Usernme = username,
                        NoOfFreezers = noOfRefrigilators
                        // Set other properties to null or default values if necessary
                    };

                    // Add the new entity to the context
                    dbContext.tbl_Freezer.Add(refrigerator);
                }

                // Save changes to the database
                dbContext.SaveChanges();

                return Json(new { success = true, message = "Value inserted/updated successfully" });
            }
            catch (Exception ex)
            {
                return Json(new { success = false, message = "Error inserting/updating value: " + ex.Message });
            }
        }

        public class RefrigeratorResult
        {
            public int NoOfFreezers { get; set; }
        }

        // Question 2
        public ActionResult Question2()
        {
            try
            {
                UsernameModel usernameModel = Session["UsernameModelResult"] as UsernameModel;

                string username = usernameModel.Username;
                if (usernameModel != null)
                {
                    //string username = 1.ToString();
                    var result = dbContext.Database.SqlQuery<RefrigeratorResult>("exec SelectFreezersByUsernme @Username",
                        new SqlParameter("@Username", username)).FirstOrDefault();
                    if (result != null)
                    {
                        ViewBag.NoOfRefrigilators = result.NoOfFreezers;
                    }
                    else
                    {
                        // Handle the case when the stored procedure didn't return a result
                        ViewBag.NoOfRefrigilators = 0; // Default value
                    }
                }
            }
            catch (Exception ex)
            {
                ViewBag.ErrorMessage = "An error occurred while generating refrigerator names: " + ex.Message;
                return View();
            }
            return View();
        }

        [HttpPost]
        public ActionResult q2update(List<string> makes)
        {
            UsernameModel usernameModel = Session["UsernameModelResult"] as UsernameModel;

            string username = usernameModel.Username;
            if (usernameModel != null)
            {
                //string username = 1.ToString();
                using (var dbContext = new db_Co2HomeSaversEntities1())
                {
                    var refrigerator = dbContext.tbl_Freezer.FirstOrDefault(r => r.Usernme == username);

                    if (refrigerator != null)
                    {
                        int numberOfDropdowns = makes.Count;

                        if (numberOfDropdowns >= 1)
                            refrigerator.Make1 = makes[0];
                        // Assuming 'refrigerator.Make1' is a string
                        //Session["Make1"] = refrigerator.Make1;

                        if (numberOfDropdowns >= 2)
                            refrigerator.Make2 = makes[1];
                        if (numberOfDropdowns >= 3)
                            refrigerator.Make3 = makes[2];

                        dbContext.SaveChanges();

                        dbContext.Database.ExecuteSqlCommand("EXEC UpdateTotalWattsForUser2 @Username", new SqlParameter("@Username", username));
                    }
                }
            }

            return RedirectToAction("Question3");
        }


        // Question 3
        public ActionResult Question3()
        {
            try
            {
                UsernameModel usernameModel = Session["UsernameModelResult"] as UsernameModel;

                string username = usernameModel.Username;
                if (usernameModel != null)
                {
                    var result = dbContext.Database.SqlQuery<RefrigeratorResult>("exec SelectFreezersByUsernme @Username",
                    new SqlParameter("@Username", username)).FirstOrDefault();
                    if (result != null)
                    {
                        ViewBag.NoOfRefrigilators = result.NoOfFreezers;
                    }
                    else
                    {
                        // Handle the case when the stored procedure didn't return a result
                        ViewBag.NoOfRefrigilators = 0; // Default value
                    }
                }
            }
            catch (Exception ex)
            {
                ViewBag.ErrorMessage = "An error occurred while generating refrigerator names: " + ex.Message;
                return View();
            }
            return View();
        }

        [HttpPost]
        public ActionResult q3update(List<string> makes)
        {
            UsernameModel usernameModel = Session["UsernameModelResult"] as UsernameModel;

            string username = usernameModel.Username;
            if (usernameModel != null)
            {
                using (var dbContext = new db_Co2HomeSaversEntities1())
                {
                    var refrigerator = dbContext.tbl_Freezer.FirstOrDefault(r => r.Usernme == username);

                    if (refrigerator != null)
                    {
                        int numberOfDropdowns = makes.Count;

                        if (numberOfDropdowns >= 1)
                            refrigerator.Model1 = makes[0];

                        if (numberOfDropdowns >= 2)
                            refrigerator.Model2 = makes[1];
                        if (numberOfDropdowns >= 3)
                            refrigerator.Model3 = makes[2];

                        dbContext.SaveChanges();

                        dbContext.Database.ExecuteSqlCommand("EXEC UpdateTotalWattsForUser @Username", new SqlParameter("@Username", username));
                    }
                }
            }

            return RedirectToAction("Question4");
        }

        // Question 4
        public async Task<ActionResult> Question4()
        {
            await Task.Delay(4000);
            try
            {
                UsernameModel usernameModel = Session["UsernameModelResult"] as UsernameModel;

                string username = usernameModel.Username;
                if (usernameModel != null)
                {
                    //string username = 1.ToString();
                var result = dbContext.Database.SqlQuery<RefrigeratorResult>("exec SelectFreezersByUsernme @Username",
                    new SqlParameter("@Username", username)).FirstOrDefault();
                    if (result != null)
                    {
                        ViewBag.NoOfRefrigilators = result.NoOfFreezers;
                    }
                    else
                    {
                        // Handle the case when the stored procedure didn't return a result
                        ViewBag.NoOfRefrigilators = 0; // Default value
                    }
               }
            }
            catch (Exception ex)
            {
                ViewBag.ErrorMessage = "An error occurred while generating refrigerator names: " + ex.Message;
                return View();
            }
            return View();
        }

        [HttpPost]
        public ActionResult q4update(List<string> makes)
        {
            UsernameModel usernameModel = Session["UsernameModelResult"] as UsernameModel;

            string username = usernameModel.Username;
            if (usernameModel != null)
            {
                //string username = 1.ToString();
                using (var dbContext = new db_Co2HomeSaversEntities1())
                {
                    var refrigerator = dbContext.tbl_Freezer.FirstOrDefault(r => r.Usernme == username);

                    if (refrigerator != null)
                    {
                        int numberOfDropdowns = makes.Count;

                        if (numberOfDropdowns >= 1)
                            refrigerator.Wallt1 = makes[0];
                        // Assuming 'refrigerator.Make1' is a string
                        //Session["Make1"] = refrigerator.Make1;

                        if (numberOfDropdowns >= 2)
                            refrigerator.Wallt2 = makes[1];
                        if (numberOfDropdowns >= 3)
                            refrigerator.Wallt3 = makes[2];

                        dbContext.SaveChanges();

                        dbContext.Database.ExecuteSqlCommand("EXEC UpdateTotalWattsForUser2 @Username", new SqlParameter("@Username", username));
                    }
                }
           }

            return RedirectToAction("Tips");
        }
        // Question Tips
        public ActionResult Tips()
        {
            try
            {

                // Hardcoded tips
                var hardcodedTips1 = new List<string>
        {
            "Set the freezer temperature to 0-5°F to keep food fresh and safe.",
            "Ensure proper air circulation by not overfilling your freezer.",
            "Keep the freezer door closed as much as possible to maintain the temperature."
        };

                // Another set of hardcoded freezer tips
                var hardcodedTips2 = new List<string>
        {
            "Defrost your freezer regularly to maintain efficiency and storage space.",
            "Check the door seals for any leaks and replace them if necessary.",
            "Organize your freezer with bins or shelves for easy access and better air flow."
        };

                // Another set of hardcoded freezer tips
                var hardcodedTips3 = new List<string>
        {
            "Label and date your frozen items to prevent keeping food too long.",
            "Store meat and poultry in the coldest part of the freezer.",
            "Keep the freezer coils clean to ensure it runs efficiently."
        };


                // Pass the hardcoded tips to the view
                ViewBag.HardcodedTips1 = hardcodedTips1;
                ViewBag.HardcodedTips2 = hardcodedTips2;
                ViewBag.HardcodedTips3 = hardcodedTips3;

                return View();
            }
            catch (Exception ex)
            {
                // Handle the exception (e.g., log it, display an error message)
                ViewBag.ErrorMessage = "An error occurred: " + ex.Message;
                return View();
            }
        }


        [HttpPost]
        public ActionResult UpdateTips(string AffilaiteLink, string ImageAddress, tbl_Refrigilator model)
        {
            // Check if makes is null
            //if (makes == null)
            //{
            //    return RedirectToAction("Index");
            //}

            //int numberOfDropdowns = makes.Count;
            UsernameModel usernameModel = Session["UsernameModelResult"] as UsernameModel;
            if (usernameModel != null)
            {
                string username = usernameModel.Username;

                //string username = 1.ToString();
                // Assuming you have a DbContext called "dbContext"
                using (var dbContext = new db_Co2HomeSaversEntities1())
                {
                    var refrigerator = dbContext.tbl_Freezer.FirstOrDefault(r => r.Usernme == username);

                    if (refrigerator != null)
                    {
                        refrigerator.AffilaiteLink = AffilaiteLink;
                        refrigerator.Image = ImageAddress;



                        //if (numberOfDropdowns >= 1)
                        //    refrigerator.Make1 = makes[0];
                        //if (numberOfDropdowns >= 2)
                        //    refrigerator.Make2 = makes[1];
                        //if (numberOfDropdowns >= 3)
                        //    refrigerator.Make3 = makes[2];

                        dbContext.SaveChanges();
                    }
                }
                using (var db = new db_Co2HomeSaversEntities1()) // Replace YourDbContext with your actual DbContext class name
                {
                    // Create a new instance of the Tbl_refregerator model and set the properties
                    var refrigeratorEntry = new tbl_Freezer
                    {
                        Tip1 = model.Tip1,
                        Tip2 = model.Tip2,
                        Tip3 = model.Tip3
                    };

                    // Add the entry to the database and save changes
                    db.tbl_Freezer.Add(refrigeratorEntry);
                    db.SaveChanges();
                }
            }

            return RedirectToAction("Index", "Microwave");
        }



    }
}