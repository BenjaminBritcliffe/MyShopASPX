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

public partial class changepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e) //Connection..
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string c = "update signuptable set pass=@newp where username=@un and pass=@oldp";
        mycomm = new SqlCommand(c, myconn);
        mycomm.Parameters.AddWithValue("@newp", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@un", Session["uname"].ToString());
        mycomm.Parameters.AddWithValue("@oldp", TextBox1.Text);
        myconn.Open();
        int res=mycomm.ExecuteNonQuery();
        myconn.Close();
        if(res==1)
        {
            Label2.Text="PASSWORD CHANGED SUCCESSFULLY"; //If correct..
        }
        else
        {
            Label2.Text="FAILED TO CHANGE PASSWORD"; //Else...
        }

    }
}
