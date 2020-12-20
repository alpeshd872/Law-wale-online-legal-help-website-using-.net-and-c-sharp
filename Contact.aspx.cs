using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;


public partial class Contact : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=DESKTOP-VCP6CLE\\SQLEXPRESS;Initial Catalog=alpesh;Integrated Security=True";
        con.Open();
    }
    protected void Con_Click(object sender, EventArgs e)
    {
        String f_name = fname.Text;
        String l_name = lname.Text;
        String email = email2.Text;
        String sub = subject.Text;
        String saysome = say_some.Text;
        String qry = "insert into contact " + " (fname,lname,email,sub,saysome)values(@f_name,@l_name,@email,@sub,@saysome)";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@f_name", f_name);
        cmd.Parameters.AddWithValue("@l_name", l_name);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@sub", sub);
        cmd.Parameters.AddWithValue("@saysome", saysome);

        SqlDataReader sdr = cmd.ExecuteReader();
        Response.Write("we will get back to you soon");



        con.Close();
        Response.Redirect("Contact.aspx");
    }
}