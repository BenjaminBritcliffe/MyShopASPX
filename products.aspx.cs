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

public partial class products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string p = "insert into products values(@pname,@mcatid,@scatid,@features,@rate,@ppic)";
        mycomm = new SqlCommand(p, myconn);
        mycomm.Parameters.AddWithValue("@pname", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@mcatid", DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@scatid",DropDownList2.SelectedValue);
        mycomm.Parameters.AddWithValue("@features", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@rate", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@ppic", FileUpload1.FileName);

        myconn.Open();
        int result = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
        }
        Label2.Text = "product added";
    }
}
