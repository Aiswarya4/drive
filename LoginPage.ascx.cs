using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class LoginPage : System.Web.UI.UserControl
{
    string type;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        dbconnection db = new dbconnection();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from tblLogin where Username=@uid and Password=@pwd";
        cmd.Parameters.AddWithValue("@uid", TextBox1.Text);
        Session["uid"]=TextBox1.Text;
        cmd.Parameters.AddWithValue("@pwd", TextBox2.Text);
        SqlDataReader dr = db.executeread(cmd);
        dr.Read();

        type = dr.GetString(2);
        if (type == "Admin")
        {
            Response.Redirect("AdminHome.aspx");
        }
        else if (type == "Faculty")
        {
            Response.Redirect("FacultyHome.aspx");
        }
        else if (type == "Librarian")
        {
            Response.Redirect("LibraryHome.aspx");
        }
        else if (type == "Student")
        {
            Response.Redirect("StudentHome.aspx");
        }
    }
}