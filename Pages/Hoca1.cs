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

namespace WebApplication5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            String BaglantiYolu = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            OleDbConnection Baglanti = new OleDbConnection(BaglantiYolu);
            Baglanti.Open();
            string unvan = DropDownList2.Text;
            string isim = TextBox2.Text;
            string Sorgu = "INSERT INTO hoca(unvan, isim) VALUES (@unvan, @isim)";
            OleDbCommand Komut = new OleDbCommand(Sorgu, Baglanti);
            Komut.Parameters.AddWithValue("@unvan", unvan);
            Komut.Parameters.AddWithValue("@isim", isim);
            Komut.ExecuteNonQuery();
            Baglanti.Close();
            Label6.Visible = true;
        }
    }
}
