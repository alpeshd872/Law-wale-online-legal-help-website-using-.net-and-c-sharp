using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;


public partial class Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=DESKTOP-VCP6CLE\\SQLEXPRESS;Initial Catalog=alpesh;Integrated Security=True";
        con.Open();
    }
    protected void reg1_Click(object sender, EventArgs e)
    {
        String f_name = fs_name.Text;
        String lst_name = Ls_name.Text;
        String pas = pass.Text;
        String e_mail = email.Text;
        String phone1 = ph_no.Text;
        
        String qry = "insert into reg " + " (f_name,l_name,pass,email,phone)values(@f_name,@l_name,@pass,@email,@phone)";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@f_name", f_name);
        cmd.Parameters.AddWithValue("@l_name", lst_name);
        cmd.Parameters.AddWithValue("@pass", pas);
        cmd.Parameters.AddWithValue("@email", e_mail);
        cmd.Parameters.AddWithValue("@phone", phone1);
        
        SqlDataReader sdr = cmd.ExecuteReader();
        Response.Write("Registered Successfully");



        con.Close();
        Response.Redirect("login.aspx");
    }
}