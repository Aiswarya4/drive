using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Faculty_ViewNotes : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
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
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        string notes = DropDownList3.SelectedItem.Text;
        dbconnection db3 = new dbconnection();
        SqlCommand cmd3 = new SqlCommand();
        cmd3.CommandText = "select * from tblNotes where Subject=@id";
        cmd3.Parameters.AddWithValue("@id", notes);
        DataList1.DataSource = db3.executeread(cmd3);
        DataList1.DataBind();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Download")
        {
            string nid = e.CommandArgument.ToString();

            dbconnection db4 = new dbconnection();
            SqlCommand cmd4 = new SqlCommand();
            cmd4.CommandText = "select * from tblNotes where NoteID=@id";
            cmd4.Parameters.AddWithValue("@id", nid);
            SqlDataReader dr4 = db4.executeread(cmd4);
            dr4.Read();
            string name = dr4.GetString(5);
            Response.Clear();
            Response.AddHeader("Content-Disposition", "attachment;Filename=" + Path.GetFileName(name));
            Response.ContentType = "image/jpeg";
            Response.Flush();
            Response.TransmitFile(Server.MapPath("~/notes/" + Path.GetFileName(name)));
            Response.End();
        }
    }
}