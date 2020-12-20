 using System;
using System.Data.SqlClient;
public partial class Book : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=DESKTOP-VCP6CLE\\SQLEXPRESS;Initial Catalog=alpesh;Integrated Security=True";
        con.Open();
    }
    protected void ap_book_Click(object sender, EventArgs e)
    {
        
        String f_name = fis_name.Text;
        String l_name = Las_name.Text;
        String lawyer = lawyer1.Text;
        String phone = pho_no.Text;
        String qry = "insert into Booking_1" + " (f_name,l_name,lawyer,phone)values(@f_name,@l_name,@lawyer,@phone)";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@f_name", f_name);
        cmd.Parameters.AddWithValue("@l_name", l_name);

        cmd.Parameters.AddWithValue("@lawyer", lawyer);
        cmd.Parameters.AddWithValue("@phone", phone);
        
        SqlDataReader sdr = cmd.ExecuteReader();
        Response.Write("Booking done");
        Response.Redirect("Home.aspx");
    }
    
}