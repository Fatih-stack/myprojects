using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        SqlClass conn = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * From Tbl_Yemekler", conn.baglanti());
            SqlDataReader dr = cmd.ExecuteReader();
           
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}