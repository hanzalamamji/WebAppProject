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
    public class GasDryerController : Controller
    {
        // GET: GasDryer
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
                var existingRefrigerator = dbContext.tbl_GasDryer.FirstOrDefault(r => r.Usernme == username);

                if (existingRefrigerator != null)
                {
                    // If a record with the username exists, update the NoOfRefrigilators value
                    existingRefrigerator.NoOfGasDryers = noOfRefrigilators;
                }
                else
                {
                    // If the username doesn't exist, create a new record
                    var refrigerator = new tbl_GasDryer
                    {
                        CategoryID = 5,
                        Appliance = "Gas Dryer",
                        Usernme = username,
                        NoOfGasDryers = noOfRefrigilators
                        // Set other properties to null or default values if necessary
                    };

                    // Add the new entity to the context
                    dbContext.tbl_GasDryer.Add(refrigerator);
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
            public int NoOfGasDryers { get; set; }
        }

        // Question 2
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                dbContext.Dispose();
            }
            base.Dispose(disposing);
        }
        [HttpPost]
        public ActionResult UpdateMakes(List<string> makes)
        {
            // Check if makes is null
            if (makes == null)
            {
                return RedirectToAction("Index");
            }

            int numberOfDropdowns = makes.Count;
            UsernameModel usernameModel = Session["UsernameModelResult"] as UsernameModel;
            if (usernameModel != null)
            {
                string username = usernameModel.Username;
                // Assuming you have a DbContext called "dbContext"
                using (var dbContext = new db_Co2HomeSaversEntities1())
                {
                    var refrigerator = dbContext.tbl_GasDryer.FirstOrDefault(r => r.Usernme == username);

                    if (refrigerator != null)
                    {
                        if (numberOfDropdowns >= 1)
                            refrigerator.Make1 = makes[0];
                        // Assuming 'refrigerator.Make1' is a string
                        //Session["Make1"] = refrigerator.Make1;

                        if (numberOfDropdowns >= 2)
                            refrigerator.Make2 = makes[1];
                        if (numberOfDropdowns >= 3)
                            refrigerator.Make3 = makes[2];

                        dbContext.SaveChanges();
                    }
                }
            }

            return RedirectToAction("Question3");
        }

        public async Task<ActionResult> Question2()
        {
            //await Task.Delay(20000);
            try
            {
                var refrigeratorNames = await GetRefrigeratorNamesAsync();
                ViewBag.RefrigeratorNames = refrigeratorNames;
                UsernameModel usernameModel = Session["UsernameModelResult"] as UsernameModel;
                if (usernameModel != null)
                {
                    string username = usernameModel.Username;
                    var result = dbContext.Database.SqlQuery<RefrigeratorResult>("exec SelectGasDryerByUsernme @Username",
                    new SqlParameter("@Username", username)).FirstOrDefault();

                    if (result != null)
                    {
                        ViewBag.NoOfRefrigilators = result.NoOfGasDryers;
                    }
                    else
                    {
                        // Handle the case when the stored procedure didn't return a result
                        ViewBag.NoOfRefrigilators = 0; // Default value
                    }

                }



                var openAIApiKey = "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";


                var openAI = new OpenAIAPI(openAIApiKey);

                var completionRequest = new CompletionRequest
                {
                    Prompt = "show 10 asian names of model of Gas Dryer along there companies",
                    Model = Model.DavinciText,
                    MaxTokens = 100,
                };


                var completions = await openAI.Completions.CreateCompletionAsync(completionRequest);


                var refrigeratorNames2 = new List<string>();
                foreach (var completion in completions.Completions)
                {
                    var r = completion.Text.Split('\n');
                    foreach (var item in r.Where(x => !string.IsNullOrEmpty(x)))
                    {
                        string Val = item.Split('.')[1];
                        if (Val.Contains("."))
                        {
                            Val = Val.Split('.')[1];
                        }
                        refrigeratorNames.Add(Val);
                    }

                }

                ViewBag.RefrigeratorNames = refrigeratorNames;

                return View();

            }
            catch (Exception ex)
            {
                ViewBag.ErrorMessage = "An error occurred while generating refrigerator names: " + ex.Message;
                return View();
            }
        }
        public async Task<List<string>> GetRefrigeratorNamesAsync()
        {
            var openAIApiKey = "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";

            var openAI = new OpenAIAPI(openAIApiKey);

            var completionRequest = new CompletionRequest
            {
                Prompt = "Top 10 Gas Dryer companies",
                Model = Model.DavinciText,
                MaxTokens = 100,
            };

            var completions = await openAI.Completions.CreateCompletionAsync(completionRequest);

            var refrigeratorNames = new List<string>();
            foreach (var completion in completions.Completions)
            {
                var r = completion.Text.Split('\n');
                foreach (var item in r.Where(x => !string.IsNullOrEmpty(x)))
                {
                    string Val = item.Split('.')[1];
                    if (Val.Contains("."))
                    {
                        Val = Val.Split('.')[1];
                    }
                    refrigeratorNames.Add(Val);
                }
            }

            return refrigeratorNames;
        }


        // Question 3
        public async Task<List<string>> GetRefrigeratorNamesAsyncn()
        {
            UsernameModel usernameModel = Session["UsernameModelResult"] as UsernameModel;

            string username = usernameModel.Username;
            var openAIApiKey = "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";

            var openAI = new OpenAIAPI(openAIApiKey);

            var make1 = dbContext.tbl_GasDryer.Where(r => r.Usernme == username).Select(r => r.Make1).FirstOrDefault();

            var completionRequest = new CompletionRequest
            {
                Prompt = "Generate 10 Model Of" + make1 + "Gas Dryers ",
                Model = Model.DavinciText,
                MaxTokens = 100,
            };

            var completions = await openAI.Completions.CreateCompletionAsync(completionRequest);

            var refrigeratorNames = new List<string>();
            foreach (var completion in completions.Completions)
            {
                var r = completion.Text.Split('\n');
                foreach (var item in r.Where(x => !string.IsNullOrEmpty(x)))
                {
                    string Val = item.Split('.')[1];
                    if (Val.Contains("."))
                    {
                        Val = Val.Split('.')[1];
                    }
                    refrigeratorNames.Add(Val);
                }
            }

            return refrigeratorNames;

        }

        public async Task<List<string>> GetRefrigeratorNamesAsync2()
        {
            UsernameModel usernameModel = Session["UsernameModelResult"] as UsernameModel;

            string username = usernameModel.Username;
            var openAIApiKey = "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";

            var openAI = new OpenAIAPI(openAIApiKey);

            var make2 = dbContext.tbl_GasDryer.Where(r => r.Usernme == username).Select(r => r.Make2).FirstOrDefault();

            var completionRequest = new CompletionRequest
            {
                Prompt = "Generate 10 Model Of" + make2 + "Gas Dryers ",
                Model = Model.DavinciText,
                MaxTokens = 100,
            };

            var completions = await openAI.Completions.CreateCompletionAsync(completionRequest);

            var refrigeratorNames2 = new List<string>();
            foreach (var completion in completions.Completions)
            {
                var r = completion.Text.Split('\n');
                foreach (var item in r.Where(x => !string.IsNullOrEmpty(x)))
                {
                    string Val = item.Split('.')[1];
                    if (Val.Contains("."))
                    {
                        Val = Val.Split('.')[1];
                    }
                    refrigeratorNames2.Add(Val);
                }
            }

            return refrigeratorNames2;
        }
        public async Task<List<string>> GetRefrigeratorNamesAsync3()
        {
            UsernameModel usernameModel = Session["UsernameModelResult"] as UsernameModel;

            string username = usernameModel.Username;
            var openAIApiKey = "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";

            var openAI = new OpenAIAPI(openAIApiKey);

            var make3 = dbContext.tbl_GasDryer.Where(r => r.Usernme == username).Select(r => r.Make3).FirstOrDefault();

            var completionRequest = new CompletionRequest
            {
                Prompt = "Generate 10 Model Of" + make3 + "Gas Dryers ",
                Model = Model.DavinciText,
                MaxTokens = 100,
            };

            var completions = await openAI.Completions.CreateCompletionAsync(completionRequest);

            var refrigeratorNames2 = new List<string>();
            foreach (var completion in completions.Completions)
            {
                var r = completion.Text.Split('\n');
                foreach (var item in r.Where(x => !string.IsNullOrEmpty(x)))
                {
                    string Val = item.Split('.')[1];
                    if (Val.Contains("."))
                    {
                        Val = Val.Split('.')[1];
                    }
                    refrigeratorNames2.Add(Val);
                }
            }

            return refrigeratorNames2;
        }

        public async Task<ActionResult> Question3()
        {
            //await Task.Delay(20000);
            db_Co2HomeSaversEntities1 dbContext = new db_Co2HomeSaversEntities1();
            try
            {
                UsernameModel usernameModel = Session["UsernameModelResult"] as UsernameModel;

                string username = usernameModel.Username;
                if (usernameModel != null)
                {

                    var refrigeratorNames = await GetRefrigeratorNamesAsyncn();
                    ViewBag.RefrigeratorNames = refrigeratorNames;

                    var refrigeratorNames2 = await GetRefrigeratorNamesAsync2();
                    ViewBag.RefrigeratorNames2 = refrigeratorNames2;

                    var refrigeratorNames3 = await GetRefrigeratorNamesAsync3();
                    ViewBag.RefrigeratorNames3 = refrigeratorNames3;

                    var result = dbContext.Database.SqlQuery<RefrigeratorResult>("exec SelectGasDryerByUsernme @Username",
                        new SqlParameter("@Username", username)).FirstOrDefault();
                    if (result != null)
                    {
                        ViewBag.NoOfRefrigilators = result.NoOfGasDryers;
                        if (result.NoOfGasDryers == 2)
                        {
                            var newOptions = new List<string> { "Option X", "Option Y", "Option Z" }; // Replace with your actual new options
                            ViewBag.RefrigeratorNames2 = refrigeratorNames2; // Set the new options in ViewBag
                        }
                        if (result.NoOfGasDryers == 3)
                        {
                            var newOptions = new List<string> { "Option X", "Option Y", "Option Z" }; // Replace with your actual new options
                            ViewBag.NewOptionsForThirdDropdown = refrigeratorNames3; // Set the new options in ViewBag
                        }
                    }
                    else
                    {
                        ViewBag.NoOfRefrigilators = 0; // Default value
                    }
                }

                return View();
            }
            catch (Exception ex)
            {
                ViewBag.ErrorMessage = "An error occurred while generating refrigerator names: " + ex.Message;
                return View();
            }
        }
        [HttpPost]
        public ActionResult QuestionUpdate(List<string> makes)
        {
            if (makes == null)
            {
                return RedirectToAction("Question2");
            }
            UsernameModel usernameModel = Session["UsernameModelResult"] as UsernameModel;

            string username = usernameModel.Username;
            if (usernameModel != null)
            {
                // Assuming you have a DbContext called "dbContext"
                using (var dbContext = new db_Co2HomeSaversEntities1())
                {
                    var refrigerator = dbContext.tbl_GasDryer.FirstOrDefault(r => r.Usernme == username);

                    if (refrigerator != null)
                    {
                        try
                        {
                            int numberOfDropdowns = makes.Count;

                            if (numberOfDropdowns >= 1)
                                refrigerator.Model1 = makes[0];
                            if (numberOfDropdowns >= 2)
                                refrigerator.Model2 = makes[1];
                            if (numberOfDropdowns >= 3)
                                refrigerator.Model3 = makes[2];

                            dbContext.SaveChanges();
                        }
                        catch (Exception ex)
                        {
                            ViewBag.ErrorMessage = "An error occurred while generating refrigerator names: " + ex.Message;
                            return View();
                        }
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
                    var result = dbContext.Database.SqlQuery<RefrigeratorResult>("exec SelectGasDryerByUsernme @Username",
                    new SqlParameter("@Username", username)).FirstOrDefault();
                    if (result != null)
                    {
                        ViewBag.NoOfRefrigilators = result.NoOfGasDryers;
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
                using (var dbContext = new db_Co2HomeSaversEntities1())
                {
                    var refrigerator = dbContext.tbl_GasDryer.FirstOrDefault(r => r.Usernme == username);

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

                        dbContext.Database.ExecuteSqlCommand("EXEC UpdateTotalWattsForGasDryer @Username", new SqlParameter("@Username", username));
                    }
                }
            }

            return RedirectToAction("Tips");
        }

        public async Task<ActionResult> Tips()
        {
            try
            {
                int id = 36;
                using (var context = new db_Co2HomeSaversEntities1())
                {
                    var affilaiteLink = context.tbl_AffilaiteLink.SingleOrDefault(link => link.AfflilateLinkID == id);

                    if (affilaiteLink != null)
                    {
                        ViewBag.AffilaiteLink = affilaiteLink.Link;
                    }
                    else
                    {
                        ViewBag.AffilaiteLink = "Link not found";
                    }
                }
                using (var context = new db_Co2HomeSaversEntities1())
                {
                    var ImageAddress = context.tbl_ResutImages.SingleOrDefault(link => link.ResutImagesID == id);

                    if (ImageAddress != null)
                    {
                        ViewBag.ImageAddress = ImageAddress.ImageAddress;
                    }
                    else
                    {
                        ViewBag.ImageAddress = "Link not found";
                    }
                }

                // Replace with your actual API key
                var openAIApiKey = "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";

                // Create an instance of the OpenAI API client
                var openAI = new OpenAIAPI(openAIApiKey);

                // Configure the completion request for RefrigeratorNames
                var completionRequest1 = new CompletionRequest
                {
                    Prompt = "Generate Energy saving only 1 tip for Gas Dryer without numbering and special charactors",
                    Model = Model.DavinciText,
                    MaxTokens = 100, // Adjust the number of tokens as needed
                };

                // Make an asynchronous API call to get completions for RefrigeratorNames
                var completions1 = await openAI.Completions.CreateCompletionAsync(completionRequest1);

                // Extract the tips for RefrigeratorNames from completions
                var refrigeratorNames = new List<string>();
                foreach (var completion in completions1.Completions)
                {
                    refrigeratorNames.Add(completion.Text);
                }

                // Pass the generated names to the view
                ViewBag.RefrigeratorNames = refrigeratorNames;

                // Configure the completion request for RefrigeratorNames2
                var completionRequest2 = new CompletionRequest
                {
                    Prompt = "Generate Energy saving only 1 tip for Gas Dryer without numbering and special charactors",
                    Model = Model.DavinciText,
                    MaxTokens = 100, // Adjust the number of tokens as needed
                };

                // Make an asynchronous API call to get completions for RefrigeratorNames2
                var completions2 = await openAI.Completions.CreateCompletionAsync(completionRequest2);

                // Extract the tips for RefrigeratorNames2 from completions
                var refrigeratorNames2 = new List<string>();
                foreach (var completion in completions2.Completions)
                {
                    refrigeratorNames2.Add(completion.Text);
                }

                // Pass the generated names to the view
                ViewBag.RefrigeratorNames2 = refrigeratorNames2;

                // Configure the completion request for RefrigeratorNames3
                var completionRequest3 = new CompletionRequest
                {
                    Prompt = "Generate Energy saving only 1 tip for Gas Dryer without numbering and special charactors",
                    Model = Model.DavinciText,
                    MaxTokens = 100, // Adjust the number of tokens as needed
                };

                // Make an asynchronous API call to get completions for RefrigeratorNames3
                var completions3 = await openAI.Completions.CreateCompletionAsync(completionRequest3);

                // Extract the tips for RefrigeratorNames3 from completions
                var refrigeratorNames3 = new List<string>();
                foreach (var completion in completions3.Completions)
                {
                    refrigeratorNames3.Add(completion.Text);
                }

                // Pass the generated names to the view
                ViewBag.RefrigeratorNames3 = refrigeratorNames3;

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
                    var refrigerator = dbContext.tbl_GasDryer.FirstOrDefault(r => r.Usernme == username);

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
                    var refrigeratorEntry = new tbl_Refrigilator
                    {
                        Tip1 = model.Tip1,
                        Tip2 = model.Tip2,
                        Tip3 = model.Tip3
                    };

                    // Add the entry to the database and save changes
                    db.tbl_Refrigilator.Add(refrigeratorEntry);
                    db.SaveChanges();
                }
            }

            return RedirectToAction("Index", "Barbecue");
        }

    }
}