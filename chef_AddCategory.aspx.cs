using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chef_AddCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] != null)
        {
            Label1.Text = Session["userid"].ToString();


        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // Category(Title, Description)

        string query = "insert into Category(Title, Description) values('"+TextBox1.Text+"','"+TextBox2.Text+"')";
        SqlConnection connection = new SqlConnection(DBClass.connectionString);
        //Connection String  

        //Open The Connection  
        connection.Open();
        SqlCommand cmd = new SqlCommand(query, connection);
        cmd.ExecuteNonQuery();
        connection.Close();
        Label2.Text = "Category is added";


    }

}