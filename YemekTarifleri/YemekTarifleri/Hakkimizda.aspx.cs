using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifleri
{
    public partial class Hakkımızda : System.Web.UI.Page
    {
        SqlClass conn = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("Select * From Tbl_Hakkimizda", conn.baglanti());
            SqlDataReader dr = command.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
        }
    }
}