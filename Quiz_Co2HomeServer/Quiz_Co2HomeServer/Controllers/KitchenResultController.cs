using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web.Mvc;
using Quiz_Co2HomeServer.Models;
using static Quiz_Co2HomeServer.Controllers.CategoryController;

namespace Quiz_Co2HomeServer.Controllers
{
    public class KitchenResultController : Controller
    {
        db_Co2HomeSaversEntities1 db = new db_Co2HomeSaversEntities1();

        public ActionResult Index()
        {
            UsernameModel usernameModel = Session["UsernameModelResult"] as UsernameModel;
            string username = usernameModel.Username;
            //string username = 70.ToString();

            var data = db.Database.SqlQuery<GetWattsRecordsForKitchenResults_Result>("GetWattsRecordsForKitchenResults @username", new SqlParameter("@username", username)).ToList();

            if (data.Count >= 3)
            {
                var lowestRecord = data.OrderBy(x => x.TotalWatts).First();
                var secondLowestRecord = data.OrderBy(x => x.TotalWatts).Skip(1).First();
                var thirdLowestRecord = data.OrderBy(x => x.TotalWatts).Skip(2).First();

                // Get energy-saving tips for each appliance
                var lowestTips = GetEnergySavingTips(lowestRecord.Appliance, 3);
                var secondLowestTips = GetEnergySavingTips(secondLowestRecord.Appliance, 3);
                var thirdLowestTips = GetEnergySavingTips(thirdLowestRecord.Appliance, 3);

                // Ensure that we have enough tips for each record
                lowestRecord.Tip1 = lowestTips.ElementAtOrDefault(0) ?? "No tip available";
                lowestRecord.Tip2 = lowestTips.ElementAtOrDefault(1) ?? "No tip available";
                lowestRecord.Tip3 = lowestTips.ElementAtOrDefault(2) ?? "No tip available";

                secondLowestRecord.Tip1 = secondLowestTips.ElementAtOrDefault(0) ?? "No tip available";
                secondLowestRecord.Tip2 = secondLowestTips.ElementAtOrDefault(1) ?? "No tip available";
                secondLowestRecord.Tip3 = secondLowestTips.ElementAtOrDefault(2) ?? "No tip available";

                thirdLowestRecord.Tip1 = thirdLowestTips.ElementAtOrDefault(0) ?? "No tip available";
                thirdLowestRecord.Tip2 = thirdLowestTips.ElementAtOrDefault(1) ?? "No tip available";
                thirdLowestRecord.Tip3 = thirdLowestTips.ElementAtOrDefault(2) ?? "No tip available";

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

        private List<string> GetEnergySavingTips(string applianceName, int count)
        {
            var tips = new Dictionary<string, List<string>>
            {
                {
                    "Stove", new List<string>
                    {
                        "Use the right size burner for your pots and pans to save energy.",
                        "Keep burners and reflectors clean to improve efficiency.",
                        "Cover pots and pans to reduce cooking times and save energy.",
                        "Turn off the burner a few minutes before the cooking time is up to let residual heat finish the cooking.",
                        "Use flat-bottomed cookware that makes full contact with the burner.",
                        "Avoid using the stove to heat your kitchen.",
                        "Match the pot size to the burner size to avoid wasting energy.",
                        "Use a pressure cooker to reduce cooking time and energy usage.",
                        "Always cover pots and pans to trap heat and cook food faster."
                    }
                },
                {
                    "Refrigerator", new List<string>
                    {
                        "Replace old refrigerators with Energy Star certified models.",
                        "Set the refrigerator temperature to 37-40°F and the freezer temperature to 0-5°F.",
                        "Keep the refrigerator coils clean to ensure efficient operation.",
                        "Place your refrigerator away from direct sunlight and heat sources.",
                        "Regularly defrost your freezer to maintain efficiency.",
                        "Check door seals for any leaks and replace them if necessary.",
                        "Avoid overfilling your refrigerator to allow proper air circulation.",
                        "Keep perishable items towards the back of the refrigerator where it's coldest.",
                        "Consider investing in a refrigerator thermometer to monitor temperature."
                    }
                },
                {
                    "Freezer", new List<string>
                    {
                        "Keep your freezer at 0°F for optimal energy efficiency.",
                        "Defrost your freezer regularly to maintain efficiency.",
                        "Keep your freezer full but not overcrowded to maintain temperature.",
                        "Organize items in the freezer to minimize the time the door is open.",
                        "Use freezer-friendly containers that maximize space.",
                        "Ensure the freezer door seals are tight and not leaking cold air.",
                        "Place the freezer in a cool area away from direct sunlight and heat sources.",
                        "Clean the coils behind or underneath the freezer to improve efficiency.",
                        "Avoid placing hot items directly into the freezer to prevent it from overworking."
                    }
                },
                {
                    "Microwaves", new List<string>
                    {
                        "Use the microwave instead of the oven for smaller meals to save energy.",
                        "Avoid using the microwave for extended periods.",
                        "Keep the microwave clean to ensure efficient operation.",
                        "Use microwave-safe covers to cook food more efficiently.",
                        "Cut food into smaller pieces to reduce cooking time.",
                        "Use preset cooking times to avoid overcooking and wasting energy.",
                        "Place the microwave away from other heat-producing appliances.",
                        "Defrost food in the microwave instead of the fridge to save energy.",
                        "Use the microwave for reheating instead of cooking from scratch."
                    }
                },
                {
                    "Oven", new List<string>
                    {
                        "Preheat the oven only when necessary to save energy.",
                        "Keep the oven door closed as much as possible to retain heat.",
                        "Cook multiple dishes at once to make the most of the oven's heat.",
                        "Use glass or ceramic dishes, which retain heat better.",
                        "Turn off the oven a few minutes before the cooking time is up to use residual heat.",
                        "Use the convection setting if available to cook food faster and more evenly.",
                        "Avoid using the oven to heat your kitchen.",
                        "Clean the oven regularly to maintain efficiency.",
                        "Check the oven door seal to ensure it is tight and not leaking heat."
                    }
                },
                {
                    "Dishwasher", new List<string>
                    {
                        "Run the dishwasher only when it's full to maximize energy use.",
                        "Use the air-dry setting instead of heat-dry to save energy.",
                        "Scrape off food before loading, but avoid pre-rinsing to save water and energy.",
                        "Use the eco or energy-saving cycle for most loads.",
                        "Load the dishwasher properly to ensure maximum efficiency.",
                        "Use a rinse aid to help dishes dry faster and avoid using the heat-dry setting.",
                        "Check the dishwasher's filter and clean it regularly.",
                        "Ensure the dishwasher is properly leveled to function efficiently.",
                        "Upgrade to an Energy Star certified dishwasher if yours is old."
                    }
                },
                {
                    "Washing machine", new List<string>
                    {
                        "Wash clothes in cold water whenever possible to save energy.",
                        "Wait until you have a full load before running the washing machine.",
                        "Use high-efficiency detergents for high-efficiency washers.",
                        "Clean the lint filter after every load to improve efficiency.",
                        "Avoid using too much detergent, which can lead to additional rinse cycles.",
                        "Choose a front-loading washer if you're looking to upgrade, as they use less water and energy.",
                        "Use the high-speed or extended spin cycle to reduce drying time.",
                        "Wash during off-peak hours to save on energy costs.",
                        "Keep the washing machine clean to maintain efficiency."
                    }
                },
                {
                    "Dryer", new List<string>
                    {
                        "Clean the lint filter after every load to improve efficiency.",
                        "Use the moisture sensor setting to avoid over-drying clothes.",
                        "Dry similar fabrics together to optimize drying time.",
                        "Use dryer balls to help clothes dry faster and reduce static.",
                        "Hang-dry clothes when possible to save energy.",
                        "Don't overload the dryer, which can lead to longer drying times.",
                        "Ensure the dryer vent is clean and unobstructed.",
                        "Use the lowest heat setting that will get the job done.",
                        "Consider air-drying heavy items like towels and jeans."
                    }
                }
            };

            if (tips.ContainsKey(applianceName))
            {
                return tips[applianceName].Take(count).ToList();
            }
            else
            {
                return new List<string> { "No tips available for this appliance." };
            }
        }
    }
}
