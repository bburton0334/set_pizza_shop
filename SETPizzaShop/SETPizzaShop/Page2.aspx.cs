//============================================================================
/*
* FILE              : Page2.aspx.cs
* PROJECT           : PROG2001 - Final Exam
* PROGRAMMER        : Briana Burton & Sunraj Sharma
* FIRST VERSION     : 2021-12-13
* DESCRIPTION       : Deals with the functionality of the AJAX calls and
*                     pizza costs.
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

namespace SETPizzaShop
{
    public partial class Page2 : System.Web.UI.Page
    {
        public static class Toppings
        {
            public const string TOP_PEPPERONI = "Pepperoni";
            public const string TOP_MUSHROOMS = "Mushrooms";
            public const string TOP_GREEN_OLIVES = "Green Olives";
            public const string TOP_GREEN_PEPPERS = "Green Peppers";
            public const string TOP_DOUBLE_CHEESE = "Double Cheese";
        }

        public static class Prices
        {
            public const double CST_PIZZA = 10.00;
            public const double CST_VEG_TOP = 1.00;
            public const double CST_PEP_TOP = 1.50;
            public const double CST_DBL_CHS = 2.25;
        }


        static double totalToppingsCost = 0;
        static List<string> pizzaOrder = new List<string>();

        protected void btnSubmitOrder_Click(object sender, EventArgs e)
        {
            string totalToppings = (string.Join("|", pizzaOrder.Select(x => x.ToString()).ToArray()));

            Session["Toppings"] = totalToppings;
            Session["Cost"] = (totalToppingsCost + Prices.CST_PIZZA).ToString();
            Response.Redirect("Page3.aspx");
        }

        [WebMethod]
        public static string UpdateToppings(string message)
        {
            const string CHK_ON = "on";
            //const string CHK_OFF = "Off";

            string returnData = null;  // final JSON return value
            string topping = null;
            string selectedStatus = null;
            double topCost = 0;
            string completeCost = null;

            string[] tokens = message.Split('|');
            topping = tokens[0];
            selectedStatus = tokens[1];

            if ((topping == Toppings.TOP_PEPPERONI))
            {
                if (selectedStatus == CHK_ON)
                {
                    topCost = Prices.CST_PEP_TOP;
                    pizzaOrder.Add(Toppings.TOP_PEPPERONI);
                }
                else
                {
                    topCost = topCost - Prices.CST_PEP_TOP;
                    pizzaOrder.Remove(Toppings.TOP_PEPPERONI);
                }
            }
            else if (topping == Toppings.TOP_DOUBLE_CHEESE)
            {
                if (selectedStatus == CHK_ON)
                {
                    topCost = Prices.CST_DBL_CHS;
                    pizzaOrder.Add(Toppings.TOP_DOUBLE_CHEESE);
                }
                else
                {
                    topCost = topCost - Prices.CST_DBL_CHS;
                    pizzaOrder.Remove(Toppings.TOP_DOUBLE_CHEESE);
                }
            }
            else if ((topping == Toppings.TOP_GREEN_OLIVES) || (topping == Toppings.TOP_GREEN_PEPPERS) || (topping == Toppings.TOP_MUSHROOMS))
            {
                if (selectedStatus == CHK_ON)
                {
                    topCost = Prices.CST_VEG_TOP;
                    if (topping == Toppings.TOP_GREEN_OLIVES) { pizzaOrder.Add(Toppings.TOP_GREEN_OLIVES); }
                    if (topping == Toppings.TOP_GREEN_PEPPERS) { pizzaOrder.Add(Toppings.TOP_GREEN_PEPPERS); }
                    if (topping == Toppings.TOP_MUSHROOMS) { pizzaOrder.Add(Toppings.TOP_MUSHROOMS); }
                }
                else
                {
                    topCost = topCost - Prices.CST_VEG_TOP;
                    if (topping == Toppings.TOP_GREEN_OLIVES) { pizzaOrder.Remove(Toppings.TOP_GREEN_OLIVES); }
                    if (topping == Toppings.TOP_GREEN_PEPPERS) { pizzaOrder.Remove(Toppings.TOP_GREEN_PEPPERS); }
                    if (topping == Toppings.TOP_MUSHROOMS) { pizzaOrder.Remove(Toppings.TOP_MUSHROOMS); }
                }
            }

            totalToppingsCost = totalToppingsCost + topCost;
            completeCost = (totalToppingsCost + Prices.CST_PIZZA).ToString();

            returnData = JsonConvert.SerializeObject(new { status = topCost, description = completeCost });
            return returnData;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            string name = "Name";   // holds default value of name incase request to get string from default.aspx is null

            // retrieving session variable as long as it exists
            if (Session["Name"] != null)
            {
                name = (string)Session["Name"];
                string[] tokens = name.Split(' ');
                lblGreeting.Text = "<b>Ciao <i>" + tokens[0] + "</i></b>, you can only order one (1) large pizza. The pizza comes automatically with sauce and cheese. <u>Please" +
                    " select any additional toppings if you'd like.</u>";
            }
        }

    }
}