using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Faculty_UploadQuestion : System.Web.UI.UserControl
{
    public static int x = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

        dbconnection db = new dbconnection();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select QID from key_gen";
        SqlDataReader dr = db.executeread(cmd);
        dr.Read();
        x = dr.GetInt32(0);
        x++;
        string QID = "QPID00" + x.ToString();
        TextBox1.Text = QID;

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

        if (IsPostBack)
        {
            dbconnection db2 = new dbconnection();
            SqlCommand cmd2 = new SqlCommand();
            cmd2.CommandText = "select Subject from tblSubject where Course=@c and Semester=@s";
            cmd2.Parameters.AddWithValue("c", DropDownList1.SelectedItem.Text);
            cmd2.Parameters.AddWithValue("s", DropDownList2.SelectedItem.Text);
            SqlDataReader dr2 = db2.executeread(cmd2);
            while (dr2.Read())
            {
                DropDownList3.Items.Add(dr2.GetString(0).ToString());
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dbconnection db4 = new dbconnection();
        SqlCommand cmd5 = new SqlCommand();

        if (FileUpload1.HasFile)
        {
            string strname = FileUpload1.FileName.ToString();
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/questionpaper/") + strname);
            cmd5.CommandText = "insert into tblQuestion values(@qid,@course,@sem,@sub,@year,@,@qp)";
            cmd5.Parameters.AddWithValue("@qid", TextBox1.Text);
            cmd5.Parameters.AddWithValue("@course", DropDownList1.SelectedItem.Text);
            cmd5.Parameters.AddWithValue("@sem", DropDownList2.SelectedItem.Text);
            cmd5.Parameters.AddWithValue("@sub", DropDownList3.SelectedItem.Text);
            cmd5.Parameters.AddWithValue("@year", TextBox2.Text);
            cmd5.Parameters.AddWithValue("@", TextBox3.Text);
            cmd5.Parameters.AddWithValue("@qp", strname);
            db4.execute(cmd5);
        }

        dbconnection db5 = new dbconnection();
        SqlCommand cmd6 = new SqlCommand();
        cmd6.CommandText = "update key_gen set QID=@idd";
        cmd6.Parameters.AddWithValue("@idd", x);
        db5.execute(cmd6);
    }
}