using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_AddSubject : System.Web.UI.UserControl
{
    public static int x = 0,i;
    protected void Page_Load(object sender, EventArgs e)
    {
        dbconnection db = new dbconnection();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select SID from key_gen";
        SqlDataReader dr = db.executeread(cmd);
        dr.Read();
        x = dr.GetInt32(0);
        x++;
        string SID = "SUBJECT" + x.ToString();
        TextBox1.Text = SID;


        if (!IsPostBack)
        {
            DropDownList1.Items.Add("Select Course");
            DropDownList2.Items.Add("Select Semester");
            dbconnection db1 = new dbconnection();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = "select CourseID from tblCourse";
            SqlDataReader dr1 = db1.executeread(cmd1);
            while (dr1.Read())
            {
                DropDownList1.Items.Add(dr1.GetString(0).ToString());
            }

            DropDownList3.Items.Add("Select Teacher");
            dbconnection db2 = new dbconnection();
            SqlCommand cmd2 = new SqlCommand();
            cmd2.CommandText = "select Name from tblFaculty";
            SqlDataReader dr2 = db2.executeread(cmd2);
            while (dr2.Read())
            {
                DropDownList3.Items.Add(dr2.GetString(0).ToString());
            }
        }
         
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string course = DropDownList1.SelectedItem.Text;
        dbconnection db3 = new dbconnection();
        SqlCommand cmd3 = new SqlCommand();
        cmd3.CommandText = "select Course from tblCourse where CourseID=@id";
        cmd3.Parameters.AddWithValue("@id", course);
        SqlDataReader dr3 = db3.executeread(cmd3);
        dr3.Read();
        TextBox3.Text = dr3.GetString(0);

        if (IsPostBack)
        {
            if (TextBox3.Text == "MCA")
            {
                for (i = 1; i <= 6; i++)
                {
                    DropDownList2.Items.Add(i.ToString());
                }
            }
            else if (TextBox3.Text == "B.Tech")
            {
                for (i = 1; i <= 8; i++)
                {
                    DropDownList2.Items.Add(i.ToString());
                }
            }
            else if (TextBox3.Text == "M.Tech")
            {
                for (i = 1; i <= 4; i++)
                {
                    DropDownList2.Items.Add(i.ToString());
                }
            }
        }
       
            
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dbconnection db4 = new dbconnection();
        SqlCommand cmd4 = new SqlCommand();
        cmd4.CommandText = "insert into tblSubject values(@sid,@cid,@cor,@sem,@sub,@tid)";
        cmd4.Parameters.AddWithValue("@sid", TextBox1.Text);
        cmd4.Parameters.AddWithValue("@cid", DropDownList1.SelectedItem.Text);
        cmd4.Parameters.AddWithValue("@cor", TextBox3.Text);
        cmd4.Parameters.AddWithValue("@sem", DropDownList2.SelectedItem.Text);
        cmd4.Parameters.AddWithValue("@sub", TextBox2.Text);
        cmd4.Parameters.AddWithValue("@tid", DropDownList3.SelectedItem.Text);
        db4.execute(cmd4);


        dbconnection db5 = new dbconnection();
        SqlCommand cmd5 = new SqlCommand();
        cmd5.CommandText = "update key_gen set SID=@idd";
        cmd5.Parameters.AddWithValue("@idd", x);
        db5.execute(cmd5);
        Response.Redirect("Admin_AddSubject.aspx");
    }
   

       
   
}