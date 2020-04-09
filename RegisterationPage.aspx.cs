using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegisterationPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
        string link = "images/" + Path.GetFileName(FileUpload1.FileName);


                                                                                                                                                                                  //Users(UserID,Name,Gender,Password,Address,Email,Mobile,Image,usertype)
        string query = "insert into Users(UserID,Name,Gender,Password,Address,Email,Mobile,Image,usertype) values( '"+txtUserID.Text+"','"+txtName.Text+"','"+DropDownList2.Text+"','"+txtPw.Text+"','"+txtAddress.Text+"','"+txtEmail.Text+"','"+txtMob.Text+"','"+link+"','"+DropDownList1.Text+"')";
        SqlConnection connection = new SqlConnection(DBClass.connectionString);
        //Connection String  

        //Open The Connection  
        connection.Open();
        SqlCommand cmd = new SqlCommand(query, connection);
        cmd.ExecuteNonQuery();
        connection.Close();
        Label1.Text = "User is registered";

    }
}