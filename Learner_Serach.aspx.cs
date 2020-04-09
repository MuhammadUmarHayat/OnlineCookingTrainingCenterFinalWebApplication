using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Learner_Serach : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        { //do something 
            if (Session["userid"] != null)
            {
                Label1.Text = Session["userid"].ToString();

                ShowAllRecipies();
            }
        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string title = TextBox1.Text;

        ShowRecipies(title);

    }


    private void ShowAllRecipies()
    {
        string query = "select * from Recipe";

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


        DataList1.DataSource = dt;
        DataList1.DataBind();



    }

    private void ShowRecipies(string title)
    {
        string query = "select * from Recipe where title='"+title+"'";

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


        DataList1.DataSource = dt;
        DataList1.DataBind();



    }




    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
       


             if (e.CommandName == "viewRecipies")
        {

          //  DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("viewRecipy.aspx?id=" + e.CommandArgument.ToString() );

        }

    }
}