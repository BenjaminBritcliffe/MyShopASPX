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

public partial class search3 : System.Web.UI.Page
{
    
   
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string f = "select * from products where productid=@a";
        mycomm = new SqlCommand(f, myconn);
        mycomm.Parameters.AddWithValue("@a", Request.QueryString["pid"]);
        myconn.Open();
        SqlDataReader myread;
        myread = mycomm.ExecuteReader();
        myread.Read();
        if (myread.HasRows)
        {
            Label2.Text = myread["productname"].ToString();
            Label3.Text = myread["features"].ToString();
            Label4.Text = myread["rate"].ToString();
            Image2.ImageUrl = "images/" + myread["productpic"].ToString();
        }
        myconn.Close();
    }







    protected void Button1_Click(object sender, EventArgs e)
    {
        long r,q,tc;
        r = Convert.ToInt64(Label4.Text);
        q = Convert.ToInt64(TextBox1.Text);
        tc = q*r;
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string g = "insert into cart values(@a,@b,@c,@d,@e,@f)";
        mycomm = new SqlCommand(g, myconn);
        mycomm.Parameters.AddWithValue("@a",Label2.Text);
        mycomm.Parameters.AddWithValue("@b", Label4.Text);
        mycomm.Parameters.AddWithValue("@c", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@d", tc);
        mycomm.Parameters.AddWithValue("@e", Path.GetFileName(Image2.ImageUrl));
        mycomm.Parameters.AddWithValue("@f", Session.SessionID);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        Session.Add("sid", Session.SessionID);
        Response.Redirect("cart1.aspx");
        myconn.Close();



        

    }
}

