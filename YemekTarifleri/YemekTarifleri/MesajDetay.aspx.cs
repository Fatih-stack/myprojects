using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        SqlClass conn = new SqlClass();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Mesajid"];
            if(Page.IsPostBack == false)
            {
                SqlCommand command = new SqlCommand("Select * From Tbl_Mesajlar where mesajid=@p1", conn.baglanti());
                command.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    TextBox4.Text = dr[4].ToString();
                }
                conn.baglanti().Close();
            }
        }
    }
}