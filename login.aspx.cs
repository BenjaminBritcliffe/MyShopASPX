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
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "select name from signuptable where username=@username and pass=@pass";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@username", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@pass", TextBox2.Text);
       
        

        myconn.Open();
        object x = mycomm.ExecuteScalar();
        myconn.Close();
        if (x == null)
        {
            Label1.Text = "PLEASE ENTER YOUR CORRECT USERNAME/PASSWORD";

      
          
        }
        else
        {
            Session.Add("n", x.ToString());
            Session.Add("uname", TextBox1.Text);
            q = "select usertype from signuptable where username=@username and pass=@pass;";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@username", TextBox1.Text);
            mycomm.Parameters.AddWithValue("@pass", TextBox2.Text);



            myconn.Open();
            object y = mycomm.ExecuteScalar();
            myconn.Close();
            
            if (y.ToString() == "Banned")
            {
                Session.Clear();
                Session.Abandon();
                Response.Redirect("Banned.aspx");
            }
            else if (y.ToString() == "admin")
            {
                Response.Redirect("adminpanel.aspx");
            }
            else
            {
                Response.Redirect("home.aspx");
            }
       
        

       
            
            
            
        }
    }
}
