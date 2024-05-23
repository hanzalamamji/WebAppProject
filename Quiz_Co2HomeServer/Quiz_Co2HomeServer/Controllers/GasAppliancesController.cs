using System;
using OpenAI_API;
using OpenAI_API.Completions;
using OpenAI_API.Models;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Quiz_Co2HomeServer.Models;
using System.Threading.Tasks;
using static Quiz_Co2HomeServer.Controllers.CategoryController;

namespace Quiz_Co2HomeServer.Controllers
{
    public class GasAppliancesController : Controller
    {
        // GET: GasAppliances
        // GET: HomeEntertainmentResult
        db_Co2HomeSaversEntities1 db = new db_Co2HomeSaversEntities1();
        public async Task<ActionResult> Index()
        {
            UsernameModel usernameModel = Session["UsernameModelResult"] as UsernameModel;
            string username = usernameModel.Username;
            //string username = 63.ToString();

            var data = db.Database.SqlQuery<GetWattsRecordsForGasAppliance_Result>("GetWattsRecordsForGasAppliance @username", new SqlParameter("@username", username)).ToList();

            if (data.Count >= 3)
            {
                var lowestRecord = data.OrderBy(x => x.TotalWatts).First();

                // Get energy-saving tips for the LowestRecord.Appliance
                var tips = await GetEnergySavingTips(lowestRecord.Appliance, 3);

                // Assign the tips to lowestRecord properties
                lowestRecord.Tip1 = tips[0];
                lowestRecord.Tip2 = tips[1];
                lowestRecord.Tip3 = tips[2];


                var secondLowestRecord = data.OrderBy(x => x.TotalWatts).Skip(1).First();

                var SecondLowesttips = await GetEnergySavingTips(secondLowestRecord.Appliance, 3);

                secondLowestRecord.Tip1 = SecondLowesttips[0];
                secondLowestRecord.Tip2 = SecondLowesttips[1];
                secondLowestRecord.Tip3 = SecondLowesttips[2];


                var thirdLowestRecord = data.OrderBy(x => x.TotalWatts).Skip(2).First();

                var ThirdLowesttips = await GetEnergySavingTips(thirdLowestRecord.Appliance, 3);

                thirdLowestRecord.Tip1 = ThirdLowesttips[0];
                thirdLowestRecord.Tip2 = ThirdLowesttips[1];
                thirdLowestRecord.Tip3 = ThirdLowesttips[2];



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
        private async Task<List<string>> GetEnergySavingTips(string applianceName, int count)
        {
            // Replace with your actual API key
            var openAIApiKey = "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";

            // Create an instance of the OpenAI API client
            var openAI = new OpenAIAPI(openAIApiKey);

            var tips = new List<string>();

            for (int i = 0; i < count; i++)
            {
                // Example: Retry after waiting for 20 seconds
                ////await Task.Delay(20000);

                // Configure the completion request with the Appliance Name as the prompt and limit the length to one sentence
                var completionRequest = new CompletionRequest
                {
                    Prompt = $"Generate a one-sentence energy-saving tip for {applianceName} without numbering and special characters",
                    Model = Model.DavinciText,
                    MaxTokens = 20, // Adjust the number of tokens as needed to fit one sentence
                };

                // Make an asynchronous API call to get a completion
                var completion = await openAI.Completions.CreateCompletionAsync(completionRequest);

                // Extract the tip from the completion and add it to the list
                tips.Add(completion.Completions[0].Text);
            }

            return tips;
        }

    }
}