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

public partial class subcatupdate : System.Web.UI.Page
{   string mid;
    protected void Page_Load(object sender, EventArgs e)
    {     
        if (Page.IsPostBack == false)
        {
            
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string q = "select * from subcat where scatid=@scatid";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@scatid", Request.QueryString["sid"]);
            myconn.Open();
            
            SqlDataReader myreader = mycomm.ExecuteReader();
            myreader.Read();
            mid = myreader["mcatid"].ToString();
            TextBox1.Text = myreader["scatname"].ToString();
            Image1.ImageUrl = "images/" + myreader["scatpic"].ToString();
            myreader.Close();
            myconn.Close();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "update subcat set scatname=@scatname,scatpic=@scatpic,mcatid=@mtid where scatid=@scatid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@scatname", TextBox1.Text);
        if (FileUpload1.HasFile)
        {
            mycomm.Parameters.AddWithValue("@scatpic", FileUpload1.FileName);
            FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
        }
        else
        {
            mycomm.Parameters.AddWithValue("@scatpic", Path.GetFileName(Image1.ImageUrl));
        }
        mycomm.Parameters.AddWithValue("@mtid",DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@scatid", Request.QueryString["sid"]);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Label1.Text = "sub category updated successfully";

        q = "select * from subcat where scatid=@scatid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@scatid", Request.QueryString["sid"]);
        myconn.Open();
        SqlDataReader myreader = mycomm.ExecuteReader();
        myreader.Read();
        mid = myreader[2].ToString();
        TextBox1.Text = myreader["scatname"].ToString();
        Image1.ImageUrl = "images/" + myreader["scatpic"].ToString();
        myreader.Close();
        myconn.Close();

    }
    protected void DropDownList1_DataBound(object sender, EventArgs e)
    {
        DropDownList1.Items.FindByValue(mid).Selected = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("updatesubcat.aspx");
    }
}
