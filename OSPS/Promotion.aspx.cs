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
    
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\OSPS\OSPS\App_Data\Product.mdf;Integrated Security=True");
        string b,c;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Request.PhysicalApplicationPath + "./image/" + FileUpload1.FileName.ToString());
            b = "./image/" + FileUpload1.FileName.ToString();
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into [Promotion](Name,Image) values ('" + TextBox1.Text + "','" + b.ToString() + "')";
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            FileUpload2.SaveAs(Request.PhysicalApplicationPath + "./image/" + FileUpload2.FileName.ToString());
            c = "./image/" + FileUpload2.FileName.ToString();
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into [NewArrival](Name,Price,Image) values ('" + TextBox2.Text + "','"+TextBox3.Text+"','" + c.ToString() + "')";
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}