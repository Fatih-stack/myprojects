using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlClass conn = new SqlClass();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["yemekid"];
            SqlCommand cmd = new SqlCommand("Select YemekAd From Tbl_Yemekler where yemekid=@p1", conn.baglanti());
            cmd.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label1.Text = dr[0].ToString();
            }
            conn.baglanti().Close();

            //Yorumları Listeleme
            SqlCommand cmd2 = new SqlCommand("Select * From Tbl_Yorumlar where yemekid=@p2", conn.baglanti());
            cmd2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader dr2 = cmd2.ExecuteReader();
            DataList1.DataSource = dr2;
            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("insert into Tbl_Yorumlar " +
                "(yorumadsoyad,yorummail,yorumicerik,yemekid) values (@p1,@p2,@p3,@p4)", conn.baglanti());
            command.Parameters.AddWithValue("@p1", TextBox1.Text);
            command.Parameters.AddWithValue("@p2", TextBox2.Text);
            command.Parameters.AddWithValue("@p3", TextBox3.Text);
            command.Parameters.AddWithValue("@p4", yemekid);
            command.ExecuteNonQuery();
            conn.baglanti().Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}