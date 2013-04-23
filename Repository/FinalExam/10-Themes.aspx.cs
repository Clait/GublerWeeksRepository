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

public partial class FinalExam_10_Themes : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        ProfileCommon pc = Profile.GetProfile(Page.User.Identity.Name);

        if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated && pc.preferredTheme != null)
        {
            this.Theme = pc.preferredTheme.ToString();
            DropDownList1.SelectedValue = pc.preferredTheme.ToString();
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
        ProfileCommon pc = Profile.GetProfile(Page.User.Identity.Name);
        pc.preferredTheme = DropDownList1.SelectedValue.ToString();
        pc.Save();
        Response.Redirect(Request.Path);
    }
}