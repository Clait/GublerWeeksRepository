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

public partial class FinalExam_08_TestPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button1.Text = "Initial Page Load Time: " + DateTime.Now.ToLongTimeString() + ". (Click to update current time in Label)";
 		Label1.Text = "Current Time: " + DateTime.Now.ToLongTimeString();
    }
}