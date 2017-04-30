﻿using System;
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

public partial class adminpanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["n"] == null)
        {
            Response.Redirect("login.aspx"); //Clearing the session.
        }
    }
    protected void LinkButton24_Click(object sender, EventArgs e)
    {
        Response.Redirect("maincat.aspx"); //Click the main cat button go to.
    }
    protected void LinkButton25_Click(object sender, EventArgs e)
    {
        Response.Redirect("subcat.aspx"); //Click the sub cat button go to.
    }
    protected void LinkButton26_Click(object sender, EventArgs e)
    {
        Response.Redirect("products.aspx"); //Click the products go to.
    }
}
