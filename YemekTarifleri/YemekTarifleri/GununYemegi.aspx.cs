using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifleri
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        SqlClass conn = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
                SqlCommand cmd = new SqlCommand("Select * From Tbl_Yemekler where durum=1", conn.baglanti());
                SqlDataReader read = cmd.ExecuteReader();
                DataList1.DataSource = read;
                DataList1.DataBind();
            }
        }
    }
}