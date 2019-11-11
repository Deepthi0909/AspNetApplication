using AspNetApplication.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetApplication
{
    public partial class UpdateProduct : System.Web.UI.Page
    {
        #region helper private mtds
        private void InitializePage()
        {

        }

        private void PopulateCategories()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
            string sql = "select CategoryId, CategoryName from Categories";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, connectionString);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Categories");
            ddlCategories.DataSource = ds.Tables["Categories"];
            ddlCategories.DataTextField = "CategoryName";
            ddlCategories.DataValueField = "CategoryId";

            ddlCategories.DataBind();
        }

        private void AssignValuesToTextBoxes(Product model)
        {
            txtName.Text = model.ProductName;
            txtPrice.Text = model.UnitPrice.ToString();
            txtStock.Text = model.UnitsInStock.ToString();
            chkDiscontinued.Checked = model.Discontinued;
            ddlCategories.SelectedValue = model.CategoryId.ToString();
        }


        private Product RetrieveValuesFromControls()
        {
            Product model = new Product();
            model.ProductName = txtName.Text;
            model.UnitPrice = Convert.ToDecimal("0" + txtPrice.Text);
            model.UnitsInStock = Convert.ToInt16("0" + txtStock.Text);
            model.Discontinued = chkDiscontinued.Checked;
            model.CategoryId = Convert.ToInt32("0" + ddlCategories.SelectedValue);
            model.ProductId = Convert.ToInt32("0" + Request.QueryString["id"]);
            return model;
        }


        private void LoadProductDetails()
        {
            int productId = Convert.ToInt32("0" + Request.QueryString["id"]);
            if (productId != 0)
            {
                ProductProcess process = new ProductProcess();
                var item = process.GetProduct(productId);
                AssignValuesToTextBoxes(item);
            }
        }


        private void SaveProductDetails()
        {
            Product obj = RetrieveValuesFromControls();
            ProductProcess process = new ProductProcess();
            process.UpdateProduct(obj);
        }

        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {

            if(Session["User"]== null)
            {
                Response.Redirect("SignInForm.aspx?ReturnUrl=" + Request.Url.PathAndQuery);
            }
            if(!IsPostBack)
            {
                InitializePage();
                PopulateCategories();
                LoadProductDetails();
            }
        }


        protected void btnSave_Click(object sender, EventArgs e)
        {
            SaveProductDetails();
            Cache.Remove("productList");
            // or Cache["productList"]=null;
            Response.Redirect("ProductMaster.aspx");
        }


        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductMaster.aspx");
        }
    }
}