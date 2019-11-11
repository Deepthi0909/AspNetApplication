using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Text;

namespace AspNetApplication
{
    public partial class StateManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Application.Lock();
            int counter = Convert.ToInt32(Application["counter"]);
            counter++;
            lblApplication.Text = counter.ToString();
            Application["counter"] = counter;
            Application.UnLock();

            counter = Convert.ToInt32(Session["counter"]);
            counter++;
            lblSession.Text = counter.ToString();
            Session["counter"] = counter;
        }

        protected void btnstore_Click(object sender, EventArgs e)
        {
            //to store cookie value
            System.Web.HttpCookie cookie = new HttpCookie(
                name: txtname.Text,
                value: txtvalue.Text
                );
            //make a persistant cookie by setting the expires property
            Response.Cookies.Add(cookie);
            lblMessage.Text = "Wow!! Success in saving cookies";
            lblMessage.BackColor = Color.Green;
            lblMessage.ForeColor = Color.White;
            lblMessage.Font.Size = new FontUnit(20.0);
        }

        protected void btnRetrieve_Click(object sender, EventArgs e)
        {
            StringBuilder bldr = new StringBuilder();
            bldr.Append("<h3> cookies are: </h3>").Append("<ul>");
            foreach (string key in Request.Cookies)
            {
                bldr.AppendFormat("<li><b>{0}</b> : {1}</li>",
                    key, Request.Cookies[key].Value);

            }
            bldr.Append("</ul>");
            lblMessage.BackColor = Color.White;
            lblMessage.ForeColor = Color.Black;
            lblMessage.Text = bldr.ToString();
        }
    }
}