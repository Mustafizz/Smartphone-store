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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\OSPS\OSPS\App_Data\Admin_login.mdf;Integrated Security=True");
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bttn_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into [ATable](EmailID,Name,Password) values ('"+email.Text+"','"+name.Text+"','"+pass.Text+"')";
            cmd.ExecuteNonQuery();
            conn.Close();
            l2.Text = "Saved Successfuly!";

        }
    }
}