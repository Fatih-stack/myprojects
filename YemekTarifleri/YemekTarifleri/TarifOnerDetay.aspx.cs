using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        SqlClass conn = new SqlClass();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];
            if(Page.IsPostBack == false) { 
                SqlCommand cmd = new SqlCommand("Select * From Tbl_Tarifler where Tarifid=@p1", conn.baglanti());
                cmd.Parameters.AddWithValue("@p1",id);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    TextBox5.Text = dr[5].ToString();
                    TextBox6.Text = dr[6].ToString();
                }
                conn.baglanti().Close();

                if (Page.IsPostBack == false)
                {
                    //Kategori Listesi
                    SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", conn.baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();

                    DropDownList1.DataTextField = "KategoriAd";
                    DropDownList1.DataValueField = "Kategoriid";

                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Durum Güncelleme
            SqlCommand komut = new SqlCommand("update tbl_tarifler set Tarifdurum=1 where tarifid=@p1", conn.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            conn.baglanti().Close();

            //Yemeği AnaSayfaya Ekleme
            SqlCommand komut2 = new SqlCommand("insert into tbl_yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) " +
                "values (@p1,@p2,@p3,@p4)", conn.baglanti());
            komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut2.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut2.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            conn.baglanti().Close();
        }
    }
}