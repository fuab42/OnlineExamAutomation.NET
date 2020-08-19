using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;
using System.Drawing.Printing;
using System.Drawing;


namespace WebApplication5
{
    public partial class Kayitli1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView2.Visible = false;
            GridView3.Visible = false;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = true;
            GridView3.Visible = false;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = false;
            GridView3.Visible = true;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "yazdir", "window.onload = function() { window.print();window.close(); }", true);
        }

      
    }
}
