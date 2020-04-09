using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Chef_AddRecipe : System.Web.UI.Page
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
        Random random = new Random();
        
        string rid="rid" + random.Next(11111,999999);
        FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
        string link = "images/" + Path.GetFileName(FileUpload1.FileName);
                                                                                                                                                                            //Recipe(Category,Title,image,Status,Price,userid,FoodType,preparationTime,RequiredTime)
        string query = "insert into Recipe(rid,Category,Title,image,Status,Price,userid,FoodType,preparationTime,CookTime,TotalTime,Serve) values( '"+rid+"','" + DropDownList1.Text + "','" + TextBox1.Text + "','" + link+ "','" + RadioButtonList1.Text + "','" + TextBox2.Text + "','" + Label1.Text + "','" + DropDownList2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
        SqlConnection connection = new SqlConnection(DBClass.connectionString);
        //Connection String  

        //Open The Connection  
        connection.Open();
        SqlCommand cmd = new SqlCommand(query, connection);
        cmd.ExecuteNonQuery();
        connection.Close();
        Label2.Text = "Recipy is added";
        Button1.Visible = false;
        Button2.Visible = true;
        ViewState["rid"]= rid;
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["rid"]=  ViewState["rid"].ToString();
        Response.Redirect("chef_AddRecipeIngredients.aspx");
    }
}