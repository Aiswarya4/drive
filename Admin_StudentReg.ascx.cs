using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_StudentReg : System.Web.UI.UserControl
{
    public static int x = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        dbconnection db = new dbconnection();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select StudID from key_gen";
        SqlDataReader dr = db.executeread(cmd);
        dr.Read();
        x = dr.GetInt32(0);
        x++;
        string SID = "STUDENT" + x.ToString();
        TextBox1.Text = SID;

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
            DropDownList2.Items.Add("No of Semester");
            DropDownList2.Items.Add("1");
            DropDownList2.Items.Add("2");
            DropDownList2.Items.Add("3");
            DropDownList2.Items.Add("4");
            DropDownList2.Items.Add("5");
            DropDownList2.Items.Add("6");
            DropDownList2.Items.Add("7");
            DropDownList2.Items.Add("8");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        dbconnection db2 = new dbconnection();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "insert into tblStudent values(@sid,@sname,@course,@sem,@add,@phone,@email,@status)";
        cmd2.Parameters.AddWithValue("@sid", TextBox1.Text);
        cmd2.Parameters.AddWithValue("@sname", TextBox2.Text);
        cmd2.Parameters.AddWithValue("@course", DropDownList1.SelectedItem.Text);
        cmd2.Parameters.AddWithValue("@sem", DropDownList2.SelectedItem.Text);
        cmd2.Parameters.AddWithValue("@add", TextBox3.Text);
        cmd2.Parameters.AddWithValue("@phone", TextBox4.Text);
        cmd2.Parameters.AddWithValue("@email", TextBox5.Text);
        cmd2.Parameters.AddWithValue("@status", "ok");
        db2.execute(cmd2);

        dbconnection db3 = new dbconnection();
        SqlCommand cmd3 = new SqlCommand();
        cmd3.CommandText = "update key_gen set StudID=@idd";
        cmd3.Parameters.AddWithValue("@idd", x);
        db3.execute(cmd3);

        dbconnection db4 = new dbconnection();
        SqlCommand cmd4 = new SqlCommand();
        cmd4.CommandText = "insert into tblLogin values (@uid,@pwd,@type)";
        cmd4.Parameters.AddWithValue("@uid", TextBox1.Text);
        cmd4.Parameters.AddWithValue("@pwd", TextBox4.Text);
        cmd4.Parameters.AddWithValue("@type", "Student");
        db4.execute(cmd4);
        Response.Redirect("Admin_StudentReg.aspx");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}