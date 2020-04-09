using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewRecipy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            string rid = Request.QueryString["id"].ToString();
            ShowRecipies(rid);

        }
        }


    private void ShowRecipies(string rid)
    {
        string query = "select * from Recipe where rid='" + rid + "'";

        SqlConnection con = new SqlConnection(DBClass.connectionString);
        //Open database connection to connect to SQL Server
        con.Open();
        //Data table is used to bind the resultant data
        DataTable dt = new DataTable();
        // Create a new data adapter based on the specified query.
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        //SQl command builder is used to get data from database based on query
        SqlCommandBuilder cmd = new SqlCommandBuilder(da);
        //Fill data table
        da.Fill(dt);
        con.Close();


        GridView1.DataSource = dt;
        GridView1.DataBind();

        ShowVideo( rid);

    }


    private void ShowVideo (string rid)
    {
        string query = "select * from Recipe_Videos where rid='" + rid + "'";

    SqlConnection con = new SqlConnection(DBClass.connectionString);
    //Open database connection to connect to SQL Server
    con.Open();
        //Data table is used to bind the resultant data
        DataTable dt = new DataTable();
    // Create a new data adapter based on the specified query.
    SqlDataAdapter da = new SqlDataAdapter(query, con);
    //SQl command builder is used to get data from database based on query
    SqlCommandBuilder cmd = new SqlCommandBuilder(da);
    //Fill data table
    da.Fill(dt);
        con.Close();


        if (dt.Rows.Count>0)
        {
            string rid1 = dt.Rows[0]["rid"].ToString();

            string link = dt.Rows[0]["link"].ToString();

            Literal1.Text = "<Video width=400 Controls><Source src=" + link + " type=video/mp4></video>";

        }

    }


}