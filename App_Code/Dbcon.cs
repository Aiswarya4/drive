using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for dbconnection
/// </summary>
public class dbconnection
{
    public SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\New folder\AWHCOE\App_Data\AWHDB.mdf;Integrated Security=True;User Instance=True");
    public void execute(SqlCommand cmd)
    {
        cmd.Connection = cn; 
        {
            cn.Close();
        }
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    public SqlDataReader executeread(SqlCommand cmd)
    {
        cmd.Connection = cn;
        if (cn.State == ConnectionState.Open)
        {
            cn.Close();
        }
        cn.Open();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        return dr;

    }
    public int id(SqlCommand cmd)
    {
        cmd.Connection = cn;
        if (cn.State == ConnectionState.Open)
        {
            cn.Close();
        }
        cn.Open();
        int x = Convert.ToInt32(cmd.ExecuteScalar());
        return x;
    }
}