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
    public partial class product : System.Web.UI.MasterPage
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\OSPS\OSPS\App_Data\Product.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cd = conn.CreateCommand();
            cd.CommandType = CommandType.Text;
            cd.CommandText = "select * from Brand";
            cd.ExecuteNonQuery();
            DataTable dtt = new DataTable();
            SqlDataAdapter daa = new SqlDataAdapter(cd);
            daa.Fill(dtt);
            dd.DataSource = dtt;
            dd.DataBind();
            conn.Close();
        }
    }
}