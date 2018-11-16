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

public partial class Student_ViewBooks1 : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string studid = Session["uid"].ToString();

        dbconnection db3 = new dbconnection();
        SqlCommand cmd3 = new SqlCommand();
        cmd3.CommandText = "select * from tblBookIssue where StudentID=@idd and Status=@status";
        cmd3.Parameters.AddWithValue("@idd", studid);
        Session["studidd"] = studid;
        cmd3.Parameters.AddWithValue("@status", "Active");
        DataList1.DataSource = db3.executeread(cmd3);
        DataList1.DataBind();
   
        if(Request.QueryString["id"]!=null)
        {
            string bid = Request.QueryString["id"];
            dbconnection db8 = new dbconnection();
            SqlCommand cmd8 = new SqlCommand();
            cmd8.CommandText = "select Book from tblBook where BookID=@bookid";
            cmd8.Parameters.AddWithValue("@bookid", bid);
            Session["bookidd"] = bid;
            SqlDataReader dr8 = db8.executeread(cmd8);
            dr8.Read();
            string book = dr8.GetString(0);

            string path = Path.Combine(Server.MapPath("~/books/"), book);
            WebClient client = new WebClient();
            Byte[] buffer = client.DownloadData(path);
            HttpContext.Current.Response.Clear();
            HttpContext.Current.Response.AddHeader("Content-Type", "application/pdf");
            HttpContext.Current.Response.AddHeader("Content-Disposition", "inline; filename=" + book);
            HttpContext.Current.Response.BinaryWrite(buffer);
            HttpContext.Current.Response.End();

        }

/*
        if (Session["studidd"] != null && Session["bookidd"] != null)
        {
            string students = Session["studidd"].ToString();
            string books = Session["bookidd"].ToString();

            dbconnection db10 = new dbconnection();
            SqlCommand cmd10 = new SqlCommand();
            cmd10.CommandText = "select IssueDate from tblBookIssue where StudentID=@std and BookID=@bkid";
            cmd10.Parameters.AddWithValue("@std", students);
            cmd10.Parameters.AddWithValue("@bkid", books);
            SqlDataReader dr10 = db10.executeread(cmd10);
            dr10.Read();
            DateTime issuedate = dr10.GetDateTime(6);
            DateTime today = DateTime.Today;
            issuedate.CompareTo(today);
            if (issuedate.AddDays(7) > today)
            {
                dbconnection db11 = new dbconnection();
                SqlCommand cmd11 = new SqlCommand();
                cmd11.CommandText = "update tblBookIssue set Status=@isstate";
                cmd11.Parameters.AddWithValue("@isstate", "Disabled");
                db11.execute(cmd11);

            }
        }

        */
    }
}