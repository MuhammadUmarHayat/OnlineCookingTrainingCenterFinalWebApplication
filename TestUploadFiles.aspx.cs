using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TestUploadFiles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = Path.GetFileName(FileUpload1.FileName);
        path = path.Replace(" ", "");
        FileUpload1.SaveAs(Server.MapPath("~/videos/") + path);
        String link = "videos/" + path;
        Literal1.Text = "<Video width=400 Controls><Source src=" + link + " type=video/mp4></video>";
        Label1.Text = "Video Uploaded Successfully";
    }
}