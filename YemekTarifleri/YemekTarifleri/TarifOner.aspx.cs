using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class TarifOner : System.Web.UI.Page
    {
        SqlClass conn = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnTarifOner_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Tbl_Tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)", conn.baglanti());
            cmd.Parameters.AddWithValue("@t1", txtTarifAd.Text);
            cmd.Parameters.AddWithValue("@t2", txtMalzemeler.Text);
            cmd.Parameters.AddWithValue("@t3", txtYapilis.Text);
            cmd.Parameters.AddWithValue("@t4", FileUpload1.FileName);
            cmd.Parameters.AddWithValue("@t5", txtTarifOneren.Text);
            cmd.Parameters.AddWithValue("@t6", txtMailAdres.Text);
            cmd.ExecuteNonQuery();
            conn.baglanti().Close();
            Response.Write("Tarifiniz Alınmıştır");
        }
    }
}