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

public partial class productsupdate : System.Web.UI.Page
{
    string mcid, scid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string pid = Request.QueryString["pid"];

            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string q = "select * from products where productid=@p";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@p", Request.QueryString["pid"]);

            myconn.Open();

            SqlDataReader myreader;
            myreader = mycomm.ExecuteReader();
            myreader.Read();
            TextBox1.Text = myreader["productname"].ToString();
            TextBox4.Text = myreader["rate"].ToString();
            TextBox3.Text = myreader["features"].ToString();

            Image2.ImageUrl = "images/" + myreader["productpic"];
            mcid = myreader["mcatid"].ToString();
            scid = myreader["scatid"].ToString();
            myreader.Close();
            myconn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "update products set productname=@pname,mcatid=@mcatid,scatid=@scatid,rate=@r,features=@f,productpic=@pic where productid=@pid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@pname", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@mcatid", DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@scatid", DropDownList2.SelectedValue);
        mycomm.Parameters.AddWithValue("@r", TextBox4.Text);
       
        mycomm.Parameters.AddWithValue("@f", TextBox3.Text);
        if (FileUpload1.HasFile == true)
        {
            mycomm.Parameters.AddWithValue("@pic", FileUpload1.FileName);
            FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
        }
        else
        {
            mycomm.Parameters.AddWithValue("@pic", Path.GetFileName(Image2.ImageUrl));
        }
        mycomm.Parameters.AddWithValue("@pid", Request.QueryString["pid"]);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Label1.Text = "Product Updated Successfully";

        q = "select * from products where productid=@p";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@p", Request.QueryString["pid"]);

        myconn.Open();

        SqlDataReader myreader;
        myreader = mycomm.ExecuteReader();
        myreader.Read();
        TextBox1.Text = myreader["productname"].ToString();
        TextBox4.Text = myreader["rate"].ToString();
        TextBox3.Text = myreader["features"].ToString();

        Image2.ImageUrl = "images/" + myreader["productpic"];
        mcid = myreader["mcatid"].ToString();
        scid = myreader["scatid"].ToString();
        myreader.Close();
        myconn.Close();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("updateproducts.aspx");
    }
    protected void DropDownList1_DataBound(object sender, EventArgs e)
    {
        DropDownList1.Items.FindByValue(mcid).Selected=true;
    }
    protected void DropDownList2_DataBound(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            DropDownList2.Items.FindByValue(scid).Selected = true;
        }
    }
}
