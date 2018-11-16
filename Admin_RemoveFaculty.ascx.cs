using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_RemoveFaculty : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dbconnection db1 = new dbconnection();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = "select * from tblFaculty";
        DataList1.DataSource = db1.executeread(cmd1);
        DataList1.DataBind();

        if (Request.QueryString["id"] != null)
        {
            Panel1.Visible = true;
            string cid = Request.QueryString["id"];
            dbconnection db2 = new dbconnection();
            SqlCommand cmd2 = new SqlCommand();
            cmd2.CommandText = "select * from tblFaculty where TeacherID=@cid";
            cmd2.Parameters.AddWithValue("@cid", cid);
            SqlDataReader dr = db2.executeread(cmd2);
            dr.Read();
            Label11.Text = dr.GetString(0);
            Label12.Text = dr.GetString(1);
            Label13.Text = dr.GetString(2);
            Label14.Text = dr.GetString(3);
            Label16.Text = dr.GetString(4);
            Label6.Text = dr.GetString(5);

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dbconnection db3 = new dbconnection();
        SqlCommand cmd3 = new SqlCommand();
        cmd3.CommandText = "delete from tblFaculty where TeacherID=@cc";
        cmd3.Parameters.AddWithValue("@cc", Label11.Text);
        db3.execute(cmd3);
        Response.Redirect("Admin_RemoveFaculty.aspx");
    }
}