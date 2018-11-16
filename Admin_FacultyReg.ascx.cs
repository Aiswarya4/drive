using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_FacultyReg : System.Web.UI.UserControl
{
    public static int x = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        dbconnection db = new dbconnection();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select TID from key_gen";
        SqlDataReader dr = db.executeread(cmd);
        dr.Read();
        x = dr.GetInt32(0);
        x++;
        string TID = "TEACHER" + x.ToString();
        TextBox1.Text = TID;



        if (!IsPostBack)
        {
            DropDownList2.Items.Add("Select Department");
            dbconnection db1 = new dbconnection();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = "select DeptName from tblCourse";
            SqlDataReader dr1 = db1.executeread(cmd1);
            while (dr1.Read())
            {
                DropDownList2.Items.Add(dr1.GetString(0).ToString());
            }
        }



        if (!IsPostBack)
        {
            DropDownList1.Items.Add("Select Qualification");
            DropDownList1.Items.Add("MCA");
            DropDownList1.Items.Add("M.Tech");
            DropDownList1.Items.Add("PhD");
        }
           
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        dbconnection db2 = new dbconnection();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "insert into tblFaculty values(@tid,@tname,@qualif,@dept,@date,@phone,@status)";
        cmd2.Parameters.AddWithValue("@tid", TextBox1.Text);
        cmd2.Parameters.AddWithValue("@tname", TextBox2.Text);
        cmd2.Parameters.AddWithValue("@qualif", DropDownList1.SelectedItem.Text);
        cmd2.Parameters.AddWithValue("@dept", DropDownList2.SelectedItem.Text);
        cmd2.Parameters.AddWithValue("@date", TextBox3.Text);
        cmd2.Parameters.AddWithValue("@phone", TextBox4.Text);
        cmd2.Parameters.AddWithValue("@status", "ok");
        db2.execute(cmd2);

        dbconnection db3 = new dbconnection();
        SqlCommand cmd3 = new SqlCommand();
        cmd3.CommandText = "update key_gen set TID=@id";
        cmd3.Parameters.AddWithValue("@id", x);
        db3.execute(cmd3);

        dbconnection db4 = new dbconnection();
        SqlCommand cmd4 = new SqlCommand();
        cmd4.CommandText = "insert into tblLogin values (@uid,@pwd,@type)";
        cmd4.Parameters.AddWithValue("@uid", TextBox1.Text);
        cmd4.Parameters.AddWithValue("@pwd", TextBox4.Text);
        cmd4.Parameters.AddWithValue("@type", "Faculty");
        db4.execute(cmd4);
        Response.Redirect("Admin_FacultyReg.aspx");
    }
}