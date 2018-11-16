using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_RemoveSubject : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.Items.Add("Select Course");
            dbconnection db1 = new dbconnection();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = "select Course from tblCourse";
            SqlDataReader dr1 = db1.executeread(cmd1);
            while (dr1.Read())
            {
                DropDownList1.Items.Add(dr1.GetString(0).ToString());
            }

            DropDownList2.Items.Add("Select Semester");

            for (int i = 1; i <= 8; i++)
            {
                DropDownList2.Items.Add(i.ToString());
            }
        }



        if (Request.QueryString["id"] != null)
        {
            Panel1.Visible = true;
            string id = Request.QueryString["id"];
            dbconnection db2 = new dbconnection();
            SqlCommand cmd2 = new SqlCommand();
            cmd2.CommandText = "select * from tblSubject where SubjectID=@sid";
            cmd2.Parameters.AddWithValue("@sid", id);
            SqlDataReader dr2 = db2.executeread(cmd2);
            dr2.Read();
            Label11.Text = dr2.GetString(0);
            Label12.Text = dr2.GetString(1);
            Label13.Text = dr2.GetString(2);
            Label14.Text = dr2.GetString(3);
            Label5.Text = dr2.GetString(4);
            Label15.Text = dr2.GetString(5);

        }
       
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string course = DropDownList1.SelectedItem.Text;
        string sem = DropDownList2.SelectedItem.Text;
        dbconnection db3 = new dbconnection();
        SqlCommand cmd3 = new SqlCommand();
        cmd3.CommandText = "select * from tblSubject Where Course=@cc and Semester=@ss";
        cmd3.Parameters.AddWithValue("@cc", course);
        cmd3.Parameters.AddWithValue("@ss", sem);
        DataList1.DataSource = db3.executeread(cmd3);
        DataList1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dbconnection db3 = new dbconnection();
        SqlCommand cmd3 = new SqlCommand();
        cmd3.CommandText = "delete from tblSubject where SubjectID=@cd";
        cmd3.Parameters.AddWithValue("@cd", Label11.Text);
        db3.execute(cmd3);
        Response.Redirect("Admin_RemoveSubject.aspx");
    }
}