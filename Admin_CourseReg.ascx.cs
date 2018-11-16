using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_CourseReg : System.Web.UI.UserControl
{
    public static int x = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        dbconnection db = new dbconnection();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select CID from key_gen";
        SqlDataReader dr = db.executeread(cmd);
        dr.Read();
        x = dr.GetInt32(0);
        x++;
        string CID = "COURSE" + x.ToString();
        TextBox1.Text = CID;
        if (!IsPostBack)
        {
            DropDownList1.Items.Add("No. Of Semesters");
            DropDownList1.Items.Add("4");
            DropDownList1.Items.Add("6");
            DropDownList1.Items.Add("8");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        dbconnection db1 = new dbconnection();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = "insert into tblCourse values(@cid,@dept,@course,@sem)";
        cmd1.Parameters.AddWithValue("@cid", TextBox1.Text);
        cmd1.Parameters.AddWithValue("@dept", TextBox2.Text);
        cmd1.Parameters.AddWithValue("@course", TextBox3.Text);
        cmd1.Parameters.AddWithValue("@sem", DropDownList1.SelectedItem.Text.ToString());
        db1.execute(cmd1);

        dbconnection db2 = new dbconnection();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "update key_gen set CID=@id";
        cmd2.Parameters.AddWithValue("@id", x);
        db2.execute(cmd2);
        Response.Redirect("Admin_CourseReg.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}