using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=DESKTOP-VCP6CLE\\SQLEXPRESS;Initial Catalog=alpesh;Integrated Security=True";
        con.Open();
    }
    protected void log_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from reg where email=@email and pass=@pass", con);
            cmd.Parameters.AddWithValue("@email", log_email1.Text);
            cmd.Parameters.AddWithValue("@pass", log_pass1.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                Alert.Text = "Invalid Username or Password";
                Alert.ForeColor = System.Drawing.Color.Red;
            }
    }
}