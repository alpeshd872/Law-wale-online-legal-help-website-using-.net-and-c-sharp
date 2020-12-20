using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;


public partial class Need : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=DESKTOP-VCP6CLE\\SQLEXPRESS;Initial Catalog=alpesh;Integrated Security=True";
        con.Open();
    }
    protected void askque_Click(object sender, EventArgs e)
    {
       
        String email = email1.Text;
        String title = q_title.Text;
        String question = que.Text;
        String phone = Phone_no.Text;
        String type = lawtype.Text.ToString();
        String qry = "insert into need " + " (email,title,question,phone,type)values(@email,@title,@question,@phone,@type)";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@title", title);
        cmd.Parameters.AddWithValue("@question", question);
        cmd.Parameters.AddWithValue("@phone", phone);
        cmd.Parameters.AddWithValue("@type", type);
    
        SqlDataReader sdr = cmd.ExecuteReader();
        Response.Write("we will get back to you soon");



        con.Close();
        Response.Redirect("Need.aspx");
    }
}