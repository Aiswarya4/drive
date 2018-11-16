using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Librarian_AddBook : System.Web.UI.UserControl
{
    public static int x = 0, i;
    protected void Page_Load(object sender, EventArgs e)
    {
       dbconnection db = new dbconnection();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select BookID from key_gen";
        SqlDataReader dr = db.executeread(cmd);
        dr.Read();
        x = dr.GetInt32(0);
        x++;
        string B= "BOOK" + x.ToString();
        TextBox1.Text = B; 
       

        if (!IsPostBack)
        {
            DropDownList1.Items.Add("Select Category");
            DropDownList1.Items.Add("Computer Science");
            DropDownList1.Items.Add("Electronics");
            DropDownList1.Items.Add("Mechanical");
            DropDownList1.Items.Add("Civil");
        }
 
    
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string strname = FileUpload1.FileName.ToString();
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/books/") + strname);
            dbconnection db4 = new dbconnection();
            SqlCommand cmd4 = new SqlCommand();
            cmd4.CommandText = "insert into tblBook values(@bid,@name,@cat,@sub,@auth,@publish,@ver,@book,@state)";
            cmd4.Parameters.AddWithValue("@bid", TextBox1.Text);
            cmd4.Parameters.AddWithValue("@name", TextBox2.Text);
            cmd4.Parameters.AddWithValue("@cat", DropDownList1.SelectedItem.Text);
            cmd4.Parameters.AddWithValue("@sub", TextBox3.Text);
            cmd4.Parameters.AddWithValue("@auth", TextBox4.Text);
            cmd4.Parameters.AddWithValue("@publish", TextBox5.Text);
            cmd4.Parameters.AddWithValue("@ver", TextBox6.Text);
            cmd4.Parameters.AddWithValue("@book", strname);
            cmd4.Parameters.AddWithValue("@state", TextBox8.Text);
            db4.execute(cmd4);
        }

        dbconnection db5 = new dbconnection();
        SqlCommand cmd5 = new SqlCommand();
        cmd5.CommandText = "update key_gen set BookID=@idd";
        cmd5.Parameters.AddWithValue("@idd", x);
        db5.execute(cmd5);
        Response.Redirect("LibraryHome.aspx");

    }
}