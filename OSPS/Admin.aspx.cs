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
    public partial class Admin : System.Web.UI.Page

    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\OSPS\OSPS\App_Data\Admin_login.mdf;Integrated Security=True");
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    

        protected void btn_sub_Click1(object sender, EventArgs e)
        {
            i = 0;
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from ATable where EmailID='" + inputEmail.Text + "'and Password='" + inputPassword.Text + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            i = Convert.ToInt32(dt.Rows.Count.ToString());
            if (i == 1)
            {
                Session["value"] = inputEmail.Text;
                Response.Redirect("addproduct.aspx");
                
               
                   
                

            }
            else
            {
                l1.Text = "Incorrect Email or Password!";
            }
           
            conn.Close();
        }
    }
}