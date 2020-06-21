using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class Tarifler : System.Web.UI.Page
    {
        SqlClass conn = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
                Panel2.Visible = false;
                Panel4.Visible = false;
            }

            SqlCommand command = new SqlCommand("Select * From Tbl_Tarifler where Tarifdurum=0", conn.baglanti());
            SqlDataReader dr = command.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            SqlCommand command2 = new SqlCommand("Select * From Tbl_Tarifler where Tarifdurum=1", conn.baglanti());
            SqlDataReader dr2 = command2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();

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
    }
}