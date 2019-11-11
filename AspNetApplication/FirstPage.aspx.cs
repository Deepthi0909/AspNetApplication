using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace AspNetApplication
{
    //partial cls is a class which is spraed accross multiple physical files
    public partial class FirstPage:System.Web.UI.Page //mandatory to inherit
    {
        protected TextBox txt1;
        //if AutoEventWireup="false", we should manually declare this Page_Init mtd
        //if it is true , it works automatically. no need of this mtd
        protected override void OnInit(EventArgs e)
        {
            this.Load += new EventHandler(Page_Load);
            base.OnInit(e);
        }

        //public delegate void System.EventHandler(object sender, eventArgs e)
        public void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                //checks whether the new request or the postback request
                this.txt1.Text = "enter your name here";
        }


        public void btn_Click(object sender, EventArgs e)
        {
            this.txt1.Text = this.txt1.Text.ToUpper();
        }
    }
}