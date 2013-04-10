using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ajax_TestAjax : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = System.DateTime.Now.ToLongTimeString();
        Label2.Text = System.DateTime.Now.ToLongTimeString();
        Label3.Text = System.DateTime.Now.ToLongTimeString();

    }
}