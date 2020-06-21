using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        SqlClass conn = new SqlClass();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Kategoriid"];
                SqlCommand command = new SqlCommand("Select * From Tbl_Kategoriler where Kategoriid=@p1",
                    conn.baglanti());
                command.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                }
                conn.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            id = Request.QueryString["Kategoriid"];
            SqlCommand komut = new SqlCommand("update tbl_kategoriler set kategoriad=@p1, " +
                "kategoriadet=@p2 where kategoriid=@p3", conn.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            conn.baglanti().Close();
        }
    }
}