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
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\OSPS\OSPS\App_Data\Product.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (Request.QueryString["name"] == null)
            {
                Response.Redirect("../user/product.aspx");
            }
            else
            {
               

                conn.Open();
                SqlCommand cd = conn.CreateCommand();
                cd.CommandType = CommandType.Text;
                cd.CommandText = "select * from PTable where Name='" + Request.QueryString["Name"].ToString() + "'";
                cd.ExecuteNonQuery();
                DataTable dtt = new DataTable();
                SqlDataAdapter daa = new SqlDataAdapter(cd);
                daa.Fill(dtt);
                dt.DataSource = dtt;
                dt.DataBind();
                conn.Close();
            }



        }
    }
}