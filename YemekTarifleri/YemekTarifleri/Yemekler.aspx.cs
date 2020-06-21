using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlClass conn = new SqlClass();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
                Panel2.Visible = false;
                Panel4.Visible = false;

                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];
                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", conn.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }

            //Yemek Listesi
            SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler", conn.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            if(islem == "sil")
            {
                SqlCommand komut2 = new SqlCommand("Delete From Tbl_Yemekler where Yemekid=@p1",
                    conn.baglanti());
                komut2.Parameters.AddWithValue("@p1", id);
                komut2.ExecuteNonQuery();
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
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Btn_Ekle0_Click(object sender, EventArgs e)
        {
            //Yemek Ekleme
            SqlCommand komut = new SqlCommand("insert into Tbl_Yemekler " +
                "(yemekad,yemekmalzeme,yemektarif,kategoriid) values (@p1,@p2,@p3,@p4)", conn.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            conn.baglanti().Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";

            //Kategori Sayısını Arttırma
            SqlCommand komut2 = new SqlCommand("update tbl_kategoriler set kategoriadet=kategoriadet+1 " +
                "where kategoriid=@p1", conn.baglanti());
            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            conn.baglanti().Close();
        }
    }
}