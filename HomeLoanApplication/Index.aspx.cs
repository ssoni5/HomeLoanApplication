using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HomeLoanApplication.Models;

namespace HomeLoanApplication
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (RegistrationsContext entities = new RegistrationsContext())
            {
                // Get all the customers as the list 
                var customers = entities.Customers.ToList();

                // Null Check 
                if(customers.Count != 0)
                {
                    dtList.DataSource = customers;
                    dtList.DataBind();
                }
                else
                {
                    lblMessage.Visible = true;
                    lblMessage.Text = "There are no Customers registred";
                }
            }

        }
        protected void SubmitCustomerList_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {
            dtList.PageIndex = e.NewPageIndex;
            dtList.DataBind();
        }
    }
}