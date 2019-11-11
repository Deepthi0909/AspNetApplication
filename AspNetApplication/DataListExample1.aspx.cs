using AspNetApplication.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetApplication
{
    public partial class DataListExample1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateData();
            }
        }

        private void PopulateData()
        {
            CustomerDataAccess dataAccess = new CustomerDataAccess();
            var list = dataAccess.GetCustomers();
            datalist1.DataSource = list;
            datalist1.DataBind();
        }

        protected void datalist1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            if (e.CommandName == "view")
                Response.Redirect("CustomerDetails.aspx?ID=" + id);
        }

        protected void datalist1_EditCommand(object source, DataListCommandEventArgs e)
        {
            //enables d edit item template for the selected row
            //the selected row is the one on which the cmd button was clicked
            datalist1.EditItemIndex = e.Item.ItemIndex;
            PopulateData();
        }

        protected void datalist1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            String custId = datalist1.DataKeys[e.Item.ItemIndex].ToString();
            string company = ((TextBox)e.Item.FindControl("txtCompany")).Text;
            // Response.Write("Company : " + company);
            string contact = ((TextBox)e.Item.FindControl("txtContact")).Text;          
            string city = ((TextBox)e.Item.FindControl("txtCity")).Text;           
            string country = ((TextBox)e.Item.FindControl("txtCountry")).Text;

            Customer obj = new Customer
            {
                CustomerId = custId,
                CompanyName = company,
                ContactName = contact,
                City = city,
                Country = country
            };
            try
            {
                CustomerDataAccess dataAccess = new CustomerDataAccess();
                dataAccess.UpdateCustomer(obj);
            }
            catch(Exception ex)
            {
                throw ex;
            }
           
            //de-select the editItemTemplate by resetting the editItemIndex to -1
            datalist1.EditItemIndex = -1;
            PopulateData();
        }

        protected void datalist1_CancelCommand(object source, DataListCommandEventArgs e)
        {
            datalist1.EditItemIndex = -1;
            PopulateData();
        }

        protected void datalist1_DeleteCommand(object source, DataListCommandEventArgs e)
        {

        }
    }
}