using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class ThemeDemo : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Session["SelectedTheme"] != null && Session["SelectedTheme"].ToString() != "None")
        {
            this.Theme = Session["selectedTheme"].ToString();
            DropDownList1.SelectedValue = Session["SelectedTheme"].ToString();
        }
        else
        {
            
        }
            
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["SelectedTheme"] = DropDownList1.SelectedValue;
        Response.Redirect(Request.Path);
    }

}
