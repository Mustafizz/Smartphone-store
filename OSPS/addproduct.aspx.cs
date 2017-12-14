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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\OSPS\OSPS\App_Data\Product.mdf;Integrated Security=True");
        string b;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Request.PhysicalApplicationPath + "./image/" + FileUpload1.FileName.ToString());
            b = "./image/" + FileUpload1.FileName.ToString();
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into [PTable](Name,Brand,Price,Quantity,Description,Image) values ('" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "','"+TextBox4.Text+"','"+TextBox5.Text+"','"+b.ToString()+"')";
            cmd.ExecuteNonQuery();
            conn.Close();

            l3.Text = "Saved Successfuly!";
            
           
            
        }

       
    }
} 