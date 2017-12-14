using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OSPS.user
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\OSPS\OSPS\App_Data\Product.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cd = conn.CreateCommand();
            cd.CommandType = CommandType.Text;

            if(Request.QueryString["Brand"]==null)
            {
                cd.CommandText = "select * from PTable";
            }
            else
            {
                cd.CommandText = "select * from PTable where Brand='" + Request.QueryString["Brand"].ToString() + "'";
            }

            
            cd.ExecuteNonQuery();
            DataTable dtt = new DataTable();
            SqlDataAdapter daa = new SqlDataAdapter(cd);
            daa.Fill(dtt);
            dl.DataSource = dtt;
            dl.DataBind();
            conn.Close();
        }
    }
}