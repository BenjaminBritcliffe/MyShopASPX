using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;

public partial class maincatupdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "select * from maincat where mcatid=@mcatid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@mcatid", Request.QueryString["cid"]);
        myconn.Open();
            SqlDataReader myreader=mycomm.ExecuteReader();
            myreader.Read();
            TextBox1.Text=myreader["mcatname"].ToString();
            Image1.ImageUrl="images/" + myreader["mcatpic"].ToString();
            myreader.Close();
         myconn.Close();
        }


        
        
      



        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "update maincat set mcatname=@mcatname,mcatpic=@mcatpic where mcatid=@mcatid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@mcatname", TextBox1.Text);
        if (FileUpload1.HasFile)
        {
            mycomm.Parameters.AddWithValue("@mcatpic", FileUpload1.FileName);
            FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
        }
        else
        {
            mycomm.Parameters.AddWithValue("@mcatpic", Path.GetFileName(Image1.ImageUrl));
        }
        mycomm.Parameters.AddWithValue("@mcatid", Request.QueryString["cid"]);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Label1.Text = "Main category updated successfully";
        q = "select * from maincat where mcatid=@mcatid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@mcatid", Request.QueryString["cid"]);
        myconn.Open();
        SqlDataReader myreader = mycomm.ExecuteReader();
        myreader.Read();
        TextBox1.Text = myreader["mcatname"].ToString();
        Image1.ImageUrl = "images/" + myreader["mcatpic"].ToString();
        myreader.Close();
        myconn.Close();
       

        



    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("updatemaincat.aspx");
    }
}
