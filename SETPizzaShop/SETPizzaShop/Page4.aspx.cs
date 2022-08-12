//============================================================================
/*
* FILE              : Page4.aspx.cs
* PROJECT           : PROG2001 - Final Exam
* PROGRAMMER        : Briana Burton & Sunraj Sharma
* FIRST VERSION     : 2021-12-13
* DESCRIPTION       : Deals with the functionality of cancel/ confirm page
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
    public partial class Page4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = null;
            string orderStatus = null;

            if (Session["Name"] != null)
            {
                name = (string)Session["Name"];
            }

            if (Session["Status"] != null)
            {
                orderStatus = (string)Session["Status"];
            }

            lblFarewell.Text = "<b>" + name + "</b>, thank you. Your order is <i>" + orderStatus + "</i>.";

            // clearing session variables, since the order has either 
            // been confirmed or canceled, meaning we no longer need to
            // hold onto session information anymore after this page. It
            // wont support back-tracking after this page because of this,
            // but the assumption is that the data wont be needed past
            // this point anyway.
            Session.Remove("Name");
            Session.Remove("Cost");
            Session.Remove("Toppings");
            Session.Remove("Status");
        }
    }
}