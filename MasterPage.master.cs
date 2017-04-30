using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["n"] == null)
        {
            Label1.Text = "GUEST";
            LinkButton1.Visible = true;
            LinkButton2.Visible = true;

        }
        else
        {
            Label1.Text = Session["n"].ToString();
            LinkButton21.Visible = true;
            LinkButton23.Visible = true;
            LinkButton24.Visible = true;
            
        }
        if (Session["sid"] == null)
        {
            LinkButton25.Visible = false;
        }
        else
        {
            LinkButton25.Visible = true;
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("signup.aspx");
    }

protected void LinkButton1_Click(object sender, EventArgs e)
{
    Response.Redirect("login.aspx");
}
protected void LinkButton3_Click(object sender, EventArgs e)
{
    Response.Redirect("home.aspx");
}
protected void LinkButton8_Click(object sender, EventArgs e)
{
    Response.Redirect("contactus.aspx");
}

protected void LinkButton21_Click(object sender, EventArgs e)
{

    Session.Clear();
    Session.Abandon();
    Response.Redirect("home.aspx");
}
protected void LinkButton23_Click(object sender, EventArgs e)
{
    Response.Redirect("changepassword.aspx");
}
protected void LinkButton7_Click(object sender, EventArgs e)
{
    Response.Redirect("feedback.aspx");
}
protected void LinkButton9_Click(object sender, EventArgs e)
{
    Response.Redirect("viewsubcat.aspx?sid=100");
}
protected void LinkButton10_Click(object sender, EventArgs e)
{
    Response.Redirect("viewsubcat.aspx?sid=103");
}
protected void  LinkButton11_Click(object sender, EventArgs e)
{
    Response.Redirect("viewsubcat.aspx?sid=106");
}
protected void  LinkButton12_Click(object sender, EventArgs e)
{
    Response.Redirect("viewsubcat.aspx?sid=109");
}
protected void  LinkButton13_Click(object sender, EventArgs e)
{
    Response.Redirect("viewsubcat.aspx?sid=112");
}
protected void  LinkButton14_Click(object sender, EventArgs e)
{
    Response.Redirect("viewsubcat.aspx?sid=115");
}
protected void  LinkButton15_Click(object sender, EventArgs e)
{
    Response.Redirect("viewsubcat.aspx?sid=118");
}
protected void  LinkButton16_Click(object sender, EventArgs e)
{
    Response.Redirect("viewsubcat.aspx?sid=121");
}
protected void  LinkButton17_Click(object sender, EventArgs e)
{
    Response.Redirect("viewsubcat.aspx?sid=124");
}
protected void  LinkButton18_Click(object sender, EventArgs e)
{
    Response.Redirect("viewsubcat.aspx?sid=127");
}
protected void  LinkButton19_Click(object sender, EventArgs e)
{
    Response.Redirect("viewsubcat.aspx?sid=130");
}
protected void  LinkButton22_Click(object sender, EventArgs e)
{
    Response.Redirect("viewsubcat.aspx?sid=133");
}
protected void LinkButton24_Click(object sender, EventArgs e)
{
    Response.Redirect("orderhistory.aspx");
}
protected void LinkButton5_Click(object sender, EventArgs e)
{
    Response.Redirect("viewmaincat.aspx");
}
protected void LinkButton25_Click(object sender, EventArgs e)
{
   
    Response.Redirect("cart1.aspx");
}
}

