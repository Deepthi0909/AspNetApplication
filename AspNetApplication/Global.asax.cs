using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace AspNetApplication
{
    public class Global : System.Web.HttpApplication
    {
        //we handle events at the application level
        protected void Application_Start(object sender, EventArgs e)
        {
        }

        protected void Application_BeginRequest(Object sender, EventArgs e)
        {
           // HttpContext.Current.Response.Write("hello-Begin Request");
        }

        protected void Application_EndRequest(Object sender, EventArgs e)
        {
            //HttpContext.Current.Response.Write("hello-End Request");
        }
    }
}