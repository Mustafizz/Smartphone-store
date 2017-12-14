using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OSPS
{
    public partial class Defult : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\OSPS\OSPS\App_Data\Product.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from NewArrival";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            dl.DataSource=dt;
            dl.DataBind();
            conn.Close();

            conn.Open();
            SqlCommand cd = conn.CreateCommand();
            cd.CommandType = CommandType.Text;
            cd.CommandText = "select * from Promotion";
            cd.ExecuteNonQuery();
            DataTable dtt = new DataTable();
            SqlDataAdapter daa = new SqlDataAdapter(cd);
            daa.Fill(dtt);
            d2.DataSource = dtt;
            d2.DataBind();
            conn.Close();

        }
    }
}