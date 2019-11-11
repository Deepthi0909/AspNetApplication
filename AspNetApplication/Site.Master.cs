using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace AspNetApplication
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ls1_LoggedOut(object sender, EventArgs e)
        {
            Session.Abandon(); // terminating session
            FormsAuthentication.SignOut(); //killing authentication cookie
        }
    }
}