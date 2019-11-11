using AspNetApplication.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetApplication
{
    public partial class RepeaterEx2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateData();
            }
        }
        //string connectionString = "Data Source=(local)\\sqldev2016;initial catalog=Northwind;integrated security=sspi";
        //string sql = "select CustomerId, CompanyName, ContactName,City, Country from Customers";
        //DataSet ds;
        //SqlDataAdapter adapter;
        //string tableName = "Customers";


        private void PopulateData()
        {
            //if (adapter == null)
            //    adapter = new SqlDataAdapter(sql, connectionString);
            //if (ds == null)
            //    ds = new DataSet();
            //adapter.Fill(ds, tableName);
            //this.repeater1.DataSource = ds;
            //repeater1.DataMember = tableName;
            //repeater1.DataBind();


            CustomerDataAccess dataAccess = new CustomerDataAccess();
            var list = dataAccess.GetCustomers();
            repeater1.DataSource = list;
            repeater1.DataBind();
        }

        protected void repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string custId = e.CommandArgument.ToString();
            if(e.CommandName=="view")
            {
                Response.Redirect("CustomerDetails.aspx?ID=" + custId);
            }
        }
    }
}