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

public partial class payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
if(Session["uname"]== null)
        {
            Response.Redirect("login.aspx");
        }

           
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 1)
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string a = "insert into payment values(@paymode,@cardno,@expirydate,@cardholder,@address,@tc,@emailid,@name,@sessionid)";
        mycomm = new SqlCommand(a, myconn);
        mycomm.Parameters.AddWithValue("@paymode", RadioButtonList1.SelectedItem.Text);
        mycomm.Parameters.AddWithValue("@cardno", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@expirydate", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@cardholder", TextBox4.Text);
        mycomm.Parameters.AddWithValue("@address",DropDownList1.SelectedItem.Text);
        mycomm.Parameters.AddWithValue("@tc", Session["tc"].ToString());
        mycomm.Parameters.AddWithValue("@emailid", Session["n"].ToString());
        mycomm.Parameters.AddWithValue("@name", Session["uname"].ToString());
        mycomm.Parameters.AddWithValue("@sessionid", Session["sid"].ToString());
        myconn.Open();
        int r = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (r == 1)
        {
            Response.Redirect("lastpage.aspx");
        }
        else
        {
            Response.Write("<script>alert('SOME PROBLEM HAS OCCURED!!!')</script>");

        }

     
    }


    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {
  
    }
}
