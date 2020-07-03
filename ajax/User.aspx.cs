using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ajax
{
    public partial class User : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\visual basics practical\ajax\ajax\App_Data\student.mdf;Integrated Security=True");
             
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            string query = "select * from [dbo].[student] where name=@name";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Id", TextBox2.Text);
            cmd.Parameters.AddWithValue("@age", TextBox3.Text);
            cmd.Parameters.AddWithValue("@stream", TextBox4.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                spancheck.Visible = true;
                LabelcheckUser.Text = "user already exists!";
                LabelcheckUser.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                spancheck.Visible = true;
                LabelcheckUser.Text = "username available";
                LabelcheckUser.ForeColor = System.Drawing.Color.Green;
            }
            con.Close();
        }
    }
}