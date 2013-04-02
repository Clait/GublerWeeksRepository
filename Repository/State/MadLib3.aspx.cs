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

public partial class State_MadLib3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //get the adjectives out of the querystring and into the session
        Session["adj1"] = Request.QueryString["adj1"];
        Session["adj2"] = Request.QueryString["adj2"];
        Session["adj3"] = Request.QueryString["adj3"];
        Session["adj4"] = Request.QueryString["adj4"];

    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("Verbs");
        cookie["verb1"] = txtVerb1.Text;
        cookie["verb2"] = txtVerb2.Text;
        cookie["verb3"] = txtVerb3.Text;
        cookie["verb4"] = txtVerb4.Text;
        cookie["verb5"] = txtVerb5.Text;
        cookie["verb6"] = txtVerb6.Text;
        cookie["verb7"] = txtVerb7.Text;

        Response.Cookies.Add(cookie);
        Response.Redirect("MadLibFinal.aspx");
    }
}
