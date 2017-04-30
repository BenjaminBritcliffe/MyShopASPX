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

public partial class subcat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string s = "insert into subcat values(@sname,@mcatid,@spic)";
        mycomm = new SqlCommand(s, myconn);
        mycomm.Parameters.AddWithValue("@sname", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@mcatid", DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@spic", FileUpload1.FileName);
        
        myconn.Open();
        int result = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
        }
        Label2.Text = "sub category added";
    }
}
