using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class YemekDüzenle : System.Web.UI.Page
    {
        SqlClass conn = new SqlClass();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];

            SqlCommand command = new SqlCommand("Select * From Tbl_Yemekler where Yemekid=@p1", conn.baglanti());
            command.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                TextBox4.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
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

        protected void Btn_Güncelle_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));
            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set yemekad=@p1,yemekmalzeme=@p2," +
                "yemektarif=@p3,kategoriid=@p4, yemekresim=@p6 where yemekid=@p5", conn.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox4.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", id);
            komut.Parameters.AddWithValue("@p6", "~/resimler/" + FileUpload1.FileName);
            komut.ExecuteNonQuery();
            conn.baglanti().Close();
            TextBox4.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

        protected void Btn_GününYemegi_Click(object sender, EventArgs e)
        {
            //Tüm yemeklerin durumunu false yaptık
            SqlCommand komut = new SqlCommand("update tbl_yemekler set durum=0", conn.baglanti());
            komut.ExecuteNonQuery();
            conn.baglanti().Close();

            //Günün yemeği için id'ye göre true yapılacak
            SqlCommand komut2 = new SqlCommand("update tbl_yemekler set durum=1 where yemekid=@p1", 
                conn.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            conn.baglanti().Close();
        }
    }
}