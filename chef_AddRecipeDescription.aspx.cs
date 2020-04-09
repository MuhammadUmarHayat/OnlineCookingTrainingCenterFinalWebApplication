using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chef_AddRecipeDescription : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["rid"] != null)
        {
            Label1.Text = Session["rid"].ToString();
            ViewState["rid"] = Session["rid"].ToString();

        }
        if (Session["userid"] != null)
        {
            ViewState["userid"] = Session["userid"].ToString();


        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {//Recipe_Description(Step1,Step2,Step3,Step4,Step5,rid)
        string userid= ViewState["userid"].ToString();
        string rid = ViewState["rid"].ToString();

        string query = "insert into Recipe_Description(Step1,Step2,Step3,Step4,Step5,rid,userid) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + rid + "','" +userid + "')";
        SqlConnection connection = new SqlConnection(DBClass.connectionString);
        //Connection String  

        //Open The Connection  
        connection.Open();
        SqlCommand cmd = new SqlCommand(query, connection);
        cmd.ExecuteNonQuery();
        connection.Close();



        UploadVideos();
        Label2.Text = "Description and video is added successfully!.";


    }

    private void UploadVideos()
    {
        string rid = ViewState["rid"].ToString();
        string path = Path.GetFileName(FileUpload1.FileName);
        path = path.Replace(" ", "");
        FileUpload1.SaveAs(Server.MapPath("~/videos/") + path);
        String link = "videos/" + path;

        string query = "insert into Recipe_Videos(rid,link) values('" + rid + "','" + link + "')";
        SqlConnection connection = new SqlConnection(DBClass.connectionString);
        //Connection String  

        //Open The Connection  
        connection.Open();
        SqlCommand cmd = new SqlCommand(query, connection);
        cmd.ExecuteNonQuery();
        connection.Close();

    }




}