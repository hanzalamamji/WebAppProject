using OpenAI_API;
using OpenAI_API.Completions;
using OpenAI_API.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace Quiz_Co2HomeServer.Controllers
{
    public class TabletController : Controller
    {
        // GET: Tablet
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Question2()
        {
            return View();
        }
        public ActionResult Question3()
        {
            return View();
        }
        public ActionResult Question4()
        {
            return View();
        }
        public async Task<ActionResult> Tips()
        {
            try
            {
                // Replace with your actual API key
                var openAIApiKey = "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";

                // Create an instance of the OpenAI API client
                var openAI = new OpenAIAPI(openAIApiKey);

                // Configure the completion request for RefrigeratorNames
                var completionRequest1 = new CompletionRequest
                {
                    Prompt = "Generate Energy saving only 1 tip for Tablet without numbering and special charactors",
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
                    Prompt = "Generate Energy saving only 1 tip for Tablet without numbering and special charactors",
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
                    Prompt = "Generate Energy saving only 1 tip for Tablet without numbering and special charactors",
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
    }
}