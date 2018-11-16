using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net;
public partial class Student_ViewBooks : System.Web.UI.UserControl
{
    public static int x=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.Items.Add("--Select BookName--");
            DropDownList2.Items.Add("--Select Category--");
            dbconnection db = new dbconnection();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select distinct Name from tblBook";
            SqlDataReader dr = db.executeread(cmd);
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr[0].ToString());
            }
            dbconnection db2 = new dbconnection();
            SqlCommand cmd2 = new SqlCommand();
            cmd2.CommandText = "select distinct Category from tblBook";
            SqlDataReader dr2 = db2.executeread(cmd2);
            while (dr2.Read())
            {
                DropDownList2.Items.Add(dr2.GetString(0).ToString());
            }
        }

       
    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        string name = DropDownList1.SelectedItem.Text;
        dbconnection db3 = new dbconnection();
        SqlCommand cmd3 = new SqlCommand();
        cmd3.CommandText = "select * from tblBook where Name=@id";
        cmd3.Parameters.AddWithValue("@id", name);
        DataList1.DataSource = db3.executeread(cmd3);
        DataList1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string subject = DropDownList3.SelectedItem.Text;
        dbconnection db4 = new dbconnection();
        SqlCommand cmd4 = new SqlCommand();
        cmd4.CommandText = "select * from tblBook where Subject=@id1";
        cmd4.Parameters.AddWithValue("@id1", subject);
        DataList1.DataSource = db4.executeread(cmd4);
        DataList1.DataBind();
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
       
        if (e.CommandName == "Request")
        {
            string bid = e.CommandArgument.ToString();
            dbconnection db5 = new dbconnection();
            SqlCommand cmd5 = new SqlCommand();
            cmd5.CommandText = "select Status from tblBook where BookID=@bookid";
            cmd5.Parameters.AddWithValue("@bookid", bid);
            SqlDataReader dr5 = db5.executeread(cmd5);
            dr5.Read();
            string status = dr5.GetString(0);

            dbconnection db6 = new dbconnection();
            SqlCommand cmd6 = new SqlCommand();
            cmd6.CommandText = "select RNO from key_gen";
            SqlDataReader dr6 = db6.executeread(cmd6);
            dr6.Read();
            x = dr6.GetInt32(0);
            x++;
            string rno = "REQNO" + x.ToString();
           
            string sid = Session["uid"].ToString();
            DateTime date = DateTime.Today;

            dbconnection db7 = new dbconnection();
            SqlCommand cmd7 = new SqlCommand();
            cmd7.CommandText = "insert into tblRequest values(@rno,@sid,@bid,@date,@status)";
            cmd7.Parameters.AddWithValue("@rno", rno);
            cmd7.Parameters.AddWithValue("@sid", sid);
            cmd7.Parameters.AddWithValue("@bid", bid);
            cmd7.Parameters.AddWithValue("@date", date);
            cmd7.Parameters.AddWithValue("@status", status);
            db7.execute(cmd7);
            dbconnection db8 = new dbconnection();
            SqlCommand cmd8 = new SqlCommand();
            cmd8.CommandText = "update key_gen set RNO=@idd";
            cmd8.Parameters.AddWithValue("@idd", x);
            db8.execute(cmd8);         
        }


      

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {
        DropDownList3.Items.Clear();
        DropDownList3.Items.Add("--Select--");
        dbconnection db3 = new dbconnection();
        SqlCommand cmd3 = new SqlCommand();
        cmd3.CommandText = "select Subject from tblBook where Category=@c";
        cmd3.Parameters.AddWithValue("@c", DropDownList2.SelectedItem.Text);
        SqlDataReader dr3 = db3.executeread(cmd3);
        while (dr3.Read())
        {
            DropDownList3.Items.Add(dr3.GetString(0).ToString());
        }
    }
}