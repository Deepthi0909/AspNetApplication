using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetApplication
{
    public partial class WebControl1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> interestedList = new List<string>
            {
                "Art", "Automobiles", "Technology", "Fashion", "Science", "Cuisines",
                "sports", "dance","music"
            };


            if (!IsPostBack)  //checks whether it is a new request or postback/submit request. If it not d postback request then
            {
                //do the assignment and invoke mtds
                //checkinterest.DataSource = interestedList;
                //checkinterest.DataBind();
                //otherwise ignore the assignment since the assignmentis not made and the selected values are available/

                for (int i = 0; i < interestedList.Count; i++)
                {
                    checkinterest.Items.Add(interestedList[i]);
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("<section class='alert alert-info'>");
            sb.AppendFormat("Hi,<b>{0}</b>!<br/>",txtName.Text)
                    .Append("Welcome to our site.you are located in ")
                    .AppendFormat("<strong>{0}</strong>", ddlLocation.SelectedItem.ToString())
                    .AppendFormat("<addres>{0}</address>", TextBox2.Text)
                    .Append("<br/> your interests are: ")
                    .Append("<ul>");
            foreach (ListItem item in checkinterest.Items)
            {
                if (item.Selected)
                    sb.AppendFormat("<li>{0}</li>", item.Text);

            }
            sb.Append("<ul>");
            sb.Append("</section>");
            literal1.Text = sb.ToString();

        }
    }
}