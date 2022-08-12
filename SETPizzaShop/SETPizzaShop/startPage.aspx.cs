//============================================================================
/*
* FILE              : startPage.aspx.cs
* PROJECT           : PROG2001 - Final Exam
* PROGRAMMER        : Briana Burton & Sunraj Sharma
* FIRST VERSION     : 2021-12-13
* DESCRIPTION       : Deals with the functionality of prompting the user
*                     for their name and validating it.
*/
//============================================================================

using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;


namespace SETPizzaShop
{
    public partial class startPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //validation and ajax calls
            // checking if post back
            if (IsPostBack)
            {
                // creating session variable and redirecting page
                Session["Name"] = txtName.Text;
                Response.Redirect("Page2.aspx");
            }
        }

        [WebMethod]
        public static string ValidateName (string message)
        {
            string returnData = null;  // final JSON return value
            string fileStatus = null;
            string fileContents = null;

            bool result = message.All(Char.IsLetter);

            if (result)
            {
                fileStatus = "Valid";
                fileContents = message;
            }
            else
            {
                fileStatus = "Invalid";
                fileContents = message;
            }

            returnData = JsonConvert.SerializeObject(new { status = fileStatus, description = fileContents });
            return returnData;
        }
    }
}