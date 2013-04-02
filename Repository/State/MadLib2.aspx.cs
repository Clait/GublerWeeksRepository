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

public partial class State_MadLib2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.PreviousPage != null)
        {

            Session["Noun1"] = this.PreviousPage.Noun1.Text;
            Session["Noun2"] = this.PreviousPage.Noun2.Text;
            Session["Noun3"] = this.PreviousPage.Noun3.Text;
            Session["Noun4"] = this.PreviousPage.Noun4.Text;
            Session["Noun5"] = this.PreviousPage.Noun5.Text;
            Session["Noun6"] = this.PreviousPage.Noun6.Text;
            Session["Noun7"] = this.PreviousPage.Noun7.Text;
            Session["Noun8"] = this.PreviousPage.Noun8.Text;
            Session["Noun9"] = this.PreviousPage.Noun9.Text;
        }

    }

    protected void btnNext_Click(object sender, EventArgs e)
    {
        string url = "MadLib3.aspx?";
        url += "adj1=" + txtAdj1.Text;
        url += "&adj2=" + txtAdj2.Text;
        url += "&adj3=" + txtAdj3.Text;
        url += "&adj4=" + txtAdj4.Text;
        Response.Redirect(url);
    }
}
