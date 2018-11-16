using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Librarian_ViewRequest : System.Web.UI.UserControl
{
    public static int x = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        dbconnection db1 = new dbconnection();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = "select RequestNo,tblRequest.StudentID,tblRequest.BookID,tblBook.Name,Author,Category,Book,tblStudent.Name,Course,Semester from tblRequest,tblBook,tblStudent where tblRequest.BookID=tblBook.BookID and tblRequest.StudentID=tblStudent.StudentID and tblRequest.Status=@state";
        cmd1.Parameters.AddWithValue("@state", "Available");
        DataList1.DataSource = db1.executeread(cmd1);
        DataList1.DataBind();




   
    

        if (Request.QueryString["rno"] != null)
        {
            string rid = Request.QueryString["rno"];
            string sid = Request.QueryString["sid"];
            string bid = Request.QueryString["bid"];
            string bname = Request.QueryString["name"];
            string book = Request.QueryString["book"];



                dbconnection db2 = new dbconnection();
                SqlCommand cmd2 = new SqlCommand();
                cmd2.CommandText = "select IssueID from key_gen";
                SqlDataReader dr = db2.executeread(cmd2);
                dr.Read();
                x = dr.GetInt32(0);
                x++;
                string IssueID = "ISSUE" + x.ToString();

                DateTime date = DateTime.Today;

                dbconnection db3 = new dbconnection();
                SqlCommand cmd3 = new SqlCommand();
                cmd3.CommandText = "insert into tblBookIssue values (@issue,@rid,@sid,@bid,@bname,@book,@idate,@status)";
                cmd3.Parameters.AddWithValue("@issue", IssueID);
                cmd3.Parameters.AddWithValue("@rid", rid);
                cmd3.Parameters.AddWithValue("@sid", sid);
                cmd3.Parameters.AddWithValue("@bid", bid);
                cmd3.Parameters.AddWithValue("@bname", book);
                cmd3.Parameters.AddWithValue("@book", bid);
                cmd3.Parameters.AddWithValue("@idate", date);
                cmd3.Parameters.AddWithValue("@status", "Active");
                db3.execute(cmd3);


                dbconnection db5 = new dbconnection();
                SqlCommand cmd5 = new SqlCommand();
                cmd5.CommandText = "update tblRequest set Status=@sts";
                cmd5.Parameters.AddWithValue("@sts", "Nil");
                db5.execute(cmd5);


                dbconnection db6 = new dbconnection();
                SqlCommand cmd6 = new SqlCommand();
                cmd6.CommandText = "update key_gen set IssueID=@idd";
                cmd6.Parameters.AddWithValue("@idd", x);
                db6.execute(cmd6);

              
                
            }
       


        }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {

    }
}

