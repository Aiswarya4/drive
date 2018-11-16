using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Faculty_AnnounceSeminar : System.Web.UI.UserControl
{
    public static int x = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        dbconnection db = new dbconnection();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select SeminarID from key_gen";
        SqlDataReader dr = db.executeread(cmd);
        dr.Read();
        x = dr.GetInt32(0);
        x++;
        string SID = "SEMINAR" + x.ToString();
        TextBox1.Text = SID;

        if (!IsPostBack)
        {
            dbconnection db1 = new dbconnection();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = "select Course from tblCourse";
            SqlDataReader dr1 = db1.executeread(cmd1);
            while (dr1.Read())
            {
                DropDownList1.Items.Add(dr1.GetString(0).ToString());
            }
        }

        if (!IsPostBack)
        {
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        dbconnection db2 = new dbconnection();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "insert into tblSeminar values(@sid,@course,@sem,@sno,@topic,@adt,@sdt,@status)";
        cmd2.Parameters.AddWithValue("@sid", TextBox1.Text);
        cmd2.Parameters.AddWithValue("@course", DropDownList1.SelectedItem.Text);
        cmd2.Parameters.AddWithValue("@sem", DropDownList2.SelectedItem.Text);
        cmd2.Parameters.AddWithValue("@sno", TextBox2.Text);
        cmd2.Parameters.AddWithValue("@topic", TextBox3.Text);
        cmd2.Parameters.AddWithValue("@adt", TextBox4.Text);
        cmd2.Parameters.AddWithValue("@sdt", TextBox5.Text);
        cmd2.Parameters.AddWithValue("@status", "ok");
        db2.execute(cmd2);

        dbconnection db3 = new dbconnection();
        SqlCommand cmd3 = new SqlCommand();
        cmd3.CommandText = "update key_gen set SeminarID=@idd";
        cmd3.Parameters.AddWithValue("@idd", x);
        db3.execute(cmd3);
    }
}