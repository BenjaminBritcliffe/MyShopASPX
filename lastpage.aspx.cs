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

public partial class lastpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string a = "select orderid from payment where sessionid=@session";
        mycomm = new SqlCommand(a, myconn);
        mycomm.Parameters.AddWithValue("@session", Session["sid"]);
        myconn.Open();
        Label2.Text = mycomm.ExecuteScalar().ToString();
        myconn.Close();

    }
}
