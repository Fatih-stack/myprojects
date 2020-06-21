using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class HakkımızdaAdmin : System.Web.UI.Page
    {
        SqlClass conn = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
                Panel2.Visible = false;

                SqlCommand komut = new SqlCommand("Select * From Tbl_Hakkimizda", conn.baglanti());
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                }
                conn.baglanti().Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("update Tbl_Hakkimizda set Metin=@p1", conn.baglanti());
            command.Parameters.AddWithValue("@p1", TextBox1.Text);
            command.ExecuteNonQuery();
            conn.baglanti().Close();
        }
    }
}