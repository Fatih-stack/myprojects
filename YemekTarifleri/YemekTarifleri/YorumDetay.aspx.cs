using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        SqlClass conn = new SqlClass();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];
            if (Page.IsPostBack == false) {
                SqlCommand command = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd " +
                    "From Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.Yemekid=Tbl_Yemekler.Yemekid" +
                    " where yorumid=@p1", conn.baglanti());
                command.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    TextAd.Text = dr[0].ToString();
                    TextMail.Text = dr[1].ToString();
                    TextIcerik.Text = dr[2].ToString();
                    TextYemek.Text = dr[3].ToString();

                }
                conn.baglanti().Close();
            }
        }

        protected void Button_Onayla_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("Update Tbl_Yorumlar " +
                "set yorumicerik=@p1,yorumonay=@p2 where yorumid=@p3", conn.baglanti());
            command.Parameters.AddWithValue("@p1", TextIcerik.Text);
            command.Parameters.AddWithValue("@p2", "True");
            command.Parameters.AddWithValue("@p3", id);
            command.ExecuteNonQuery();
            conn.baglanti().Close();
        }
    }
}