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
public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int d;
        for (d = 1; d <= 31; d++)
        {
            DropDownList2.Items.Add(d.ToString());
        }
        for (d = 1; d <= 12; d++)
        {
            DropDownList3.Items.Add(d.ToString());
        }
        for (d = 1950; d <= 2013; d++)
        {
            DropDownList4.Items.Add(d.ToString());
        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)

    {
        
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string a = "insert into signuptable values(@name,@username,@pass,@mob,@add1,@add2,@co,@gen,@dob,@ut)";
        mycomm = new SqlCommand(a, myconn);
        mycomm.Parameters.AddWithValue("@name", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@username", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@pass", TextBox5.Text);
        mycomm.Parameters.AddWithValue("@mob", TextBox4.Text);
        mycomm.Parameters.AddWithValue("@add1", TextBox7.Text);
        mycomm.Parameters.AddWithValue("@add2", TextBox8.Text);
        mycomm.Parameters.AddWithValue("@ut", "normal");


        string dt = DropDownList2.SelectedItem.ToString() + "/" + DropDownList3.SelectedItem.ToString() + "/" + DropDownList4.SelectedItem.ToString();
        mycomm.Parameters.AddWithValue("@dob", dt);

        mycomm.Parameters.AddWithValue("@co", TextBoxCountry.Text);
        if (RadioButton1.Checked == true)
        {
            mycomm.Parameters.AddWithValue("@gen", "male");
        }
        else if (RadioButton2.Checked == true)
        {
            mycomm.Parameters.AddWithValue("@gen", "female");

         }
       

        else 
        {
            Label3.Text="SELECT YOUR GENDER";
    }

        myconn.Open();
        int result = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (result == 1)
        {
            Response.Redirect("signupfinish.aspx");
        }
        else
        {
            Label1.Text = "error signing in";
        }

    }




    


    protected void LinkButton26_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        string q = "select name from signuptable where username=@un";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@un", TextBox3.Text);
        myconn.Open();
        Object x = mycomm.ExecuteScalar();
        if (x == null)
        {
            Label2.Text = "available";
        }
        else
        {
            Label2.Text = "You are already signed up";
        }
    }
}
