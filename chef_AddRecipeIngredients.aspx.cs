using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chef_AddRecipeIngredients : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] != null)
        {
            ViewState["userid"] = Session["userid"].ToString();


        }


        if (Session["rid"] != null)
        {
            Label1.Text = Session["rid"].ToString();
            ViewState["rid"]= Session["rid"].ToString();

        }




    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string userid = ViewState["userid"].ToString();
        string rid = ViewState["rid"].ToString();

        string query = "insert into Recipe_Ingredients(rid,ingrediant,quantity,userid) values('" + rid+"','" + TextBox1.Text + "','" + TextBox2.Text + "','" + userid+ "')";
        SqlConnection connection = new SqlConnection(DBClass.connectionString);
        //Connection String  

        //Open The Connection  
        connection.Open();
        SqlCommand cmd = new SqlCommand(query, connection);
        cmd.ExecuteNonQuery();
        connection.Close();
        Label2.Text = "ingredient is added";


        Button2.Visible = true;





    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["rid"] = ViewState["rid"].ToString();
        Response.Redirect("chef_AddRecipeDescription.aspx");
    }
}