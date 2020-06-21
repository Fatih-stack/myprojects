using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class İletisim : System.Web.UI.Page
    {
        SqlClass conn = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Tbl_Mesajlar " +
                "(mesajgonderen,mesajbaslik,mesajmail,mesajicerik) values (@p1,@p2,@p3,@p4)", conn.baglanti());
            cmd.Parameters.AddWithValue("@p1", TxtGonderen.Text);
            cmd.Parameters.AddWithValue("@p2", TxtBaslik.Text);
            cmd.Parameters.AddWithValue("@p3", TxtMail.Text);
            cmd.Parameters.AddWithValue("@p4", TxtMesaj.Text);
            cmd.ExecuteNonQuery();
            conn.baglanti().Close();
            TxtGonderen.Text = "";
            TxtBaslik.Text = "";
            TxtMail.Text = "";
            TxtMesaj.Text = "";
        }
    }
}