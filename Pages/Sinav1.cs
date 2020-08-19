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
    public partial class Sinav1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            String BaglantiYolu = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            OleDbConnection Baglanti = new OleDbConnection(BaglantiYolu);
            Baglanti.Open();
            string aa = DropDownList1.Text;
            string ba = DropDownList2.Text;
            string ca = DropDownList3.Text;
            string da = Calendar1.SelectedDate.ToShortDateString();
            string ea = DropDownList4.Text;
            string Sorgu = "INSERT INTO kayitsinav(Gözetmen, Ders, Tarih, Saat, Derslik) VALUES (@Gözetmen, @Ders, @Tarih, @Saat, @Derslik)";
            OleDbCommand Komut = new OleDbCommand(Sorgu, Baglanti);
            Komut.Parameters.AddWithValue("@Gözetmen", ba);
            Komut.Parameters.AddWithValue("@Ders", aa);
            Komut.Parameters.AddWithValue("@Tarih", da);
            Komut.Parameters.AddWithValue("@Saat", ea);
            Komut.Parameters.AddWithValue("@Derslik", ca);
            Komut.ExecuteNonQuery();
            Baglanti.Close();
            Label6.Visible = true;
        }
    }
}
