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

public partial class cart1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e) //On Load.
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString); //Variable the connection string.
        string a = "select sum(totalcost) from cart where sessionid=@s"; //Variable for the selection and addition calculation for the cart.
        mycomm = new SqlCommand(a, myconn); //Use the connection and the variable
        mycomm.Parameters.AddWithValue("@s", Session["sid"]); //Use the session Id
        myconn.Open(); //Start the connection
        Label2.Text = mycomm.ExecuteScalar().ToString(); //Connection if not ok will show an error
        myconn.Close(); //Close connection if error stops sql messages.

    }
   
    protected void SqlDataSource1_Deleted(object sender, SqlDataSourceStatusEventArgs e)
    {
        Response.Redirect("cart1.aspx"); //Redirect to the cart once items been deleted.
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Add("tc",Label2.Text);
        Response.Redirect("payment.aspx"); //Once clicked go to the payment page.
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewmaincat.aspx"); //View the main categories if clicked.
    }
}
