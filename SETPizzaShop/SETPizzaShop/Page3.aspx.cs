//============================================================================
/*
* FILE              : Page3.aspx.cs
* PROJECT           : PROG2001 - Final Exam
* PROGRAMMER        : Briana Burton & Sunraj Sharma
* FIRST VERSION     : 2021-12-13
* DESCRIPTION       : Deals with the confirmation page displaying toppings
*                     and final price.
*/
//============================================================================

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SETPizzaShop
{
    public partial class Page3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = "Name";
            string toppings = null;
            string totalCost = null;

            // retrieving session variable as long as it exists
            if (Session["Name"] != null)
            {
                name = (string)Session["Name"];
                string[] tokens = name.Split(' ');
                lblGreeting.Text = "<b>Ciao <i>" + tokens[0] + ",</b> please review your order.";
            }

            if (Session["Toppings"] != null)
            {
                toppings = (string)Session["Toppings"];
                string modToppings = null;

                if (toppings == "")
                {
                    modToppings = "No Additional Toppings Selected.";
                }
                else
                {
                    modToppings = toppings.Replace("|", ", ");
                }

                lblToppings.Text = "<b>Your selected toppings are:</b> " + modToppings;

            }

            if (Session["Cost"] != null)
            {
                totalCost = (string)Session["Cost"];
                lblCost.Text = "Total Cost: $" + totalCost;
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            Session["Status"] = "Confirmed";
            Response.Redirect("Page4.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Session["Status"] = "Canceled";
            Response.Redirect("Page4.aspx");
        }
    }
}