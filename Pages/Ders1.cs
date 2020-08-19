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
    public partial class Ders1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            String BaglantiYolu = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            OleDbConnection Baglanti = new OleDbConnection(BaglantiYolu);
            Baglanti.Open();
            string ad = TextBox1.Text;
            string veren = DropDownList1.Text;
            string kapasit = TextBox2.Text;
            string Sorgu = "INSERT INTO dersler(dad, verh, kapasit) VALUES (@dad, @verh, @kapasit)";
            OleDbCommand Komut = new OleDbCommand(Sorgu, Baglanti);
            Komut.Parameters.AddWithValue("@dad", ad);
            Komut.Parameters.AddWithValue("@verh", veren);
            Komut.Parameters.AddWithValue("@kapasit", kapasit);
            Komut.ExecuteNonQuery();
            Baglanti.Close();
            Label5.Visible = true;
        }
    }
}
