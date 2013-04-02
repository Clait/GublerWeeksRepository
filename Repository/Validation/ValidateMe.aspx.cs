using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class ValidateMe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.DataBind();
    }

    protected void lstDisplay_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (lstDisplay.SelectedIndex == 0)
        {
            ValidationSummary1.ShowMessageBox = false;
            ValidationSummary1.ShowSummary = true;

            ValidationSummary2.ShowMessageBox = false;
            ValidationSummary2.ShowSummary = true;
        }
        else 
            {
            ValidationSummary1.ShowMessageBox = true;
            ValidationSummary1.ShowSummary = false;

            ValidationSummary2.ShowMessageBox = true;
            ValidationSummary2.ShowSummary = false;
        }
    }
    protected void lstFormat_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (lstFormat.SelectedIndex == 0)
        {
            ValidationSummary1.DisplayMode = ValidationSummaryDisplayMode.List;
            ValidationSummary2.DisplayMode = ValidationSummaryDisplayMode.List;

        }
        else if (lstFormat.SelectedIndex == 1)
        {
            ValidationSummary1.DisplayMode = ValidationSummary2.DisplayMode = ValidationSummaryDisplayMode.BulletList;
        }
        else
        {
            ValidationSummary1.DisplayMode = ValidationSummary2.DisplayMode = ValidationSummaryDisplayMode.SingleParagraph;
        }
    }
}