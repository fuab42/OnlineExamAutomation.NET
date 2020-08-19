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
    public partial class Derslik1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            String BaglantiYolu = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            OleDbConnection Baglanti = new OleDbConnection(BaglantiYolu);
            Baglanti.Open();
            string add = TextBox1.Text;
            string alan = TextBox2.Text;
            string Sorgu = "INSERT INTO derslik(likadd, likkap) VALUES (@likadd, @likkap)";
            OleDbCommand Komut = new OleDbCommand(Sorgu, Baglanti);
            Komut.Parameters.AddWithValue("@likadd", add);
            Komut.Parameters.AddWithValue("@likkap", alan);
            Komut.ExecuteNonQuery();
            Baglanti.Close();
            Label4.Visible = true;
        }
    }
}
