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
public partial class contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        
        string a = "insert into contactus values(@1,@2,@3,@4)";
        mycomm = new SqlCommand(a, myconn);
        mycomm.Parameters.AddWithValue("@1", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@2", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@3", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@4", TextBox4.Text);
       
        myconn.Open();
        int result = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (result == 1)
        {
            Label1.Text="Thanks for contacting us. We will revert back to you shortly";
        }
        else
        {
            Label1.Text = "error signing in";
        }
    }
}
