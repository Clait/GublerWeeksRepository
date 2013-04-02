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

public partial class State_MadLibFinal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //get cookie our of request
        HttpCookie cookie = Request.Cookies["Verbs"];

        //if cookie not null, get the verbs out
        if (cookie != null)
        {
            lblVerb1.Text = cookie["verb1"];
            lblVerb2.Text = cookie["verb2"];
            lblVerb3.Text = cookie["verb3"];
            lblVerb4.Text = cookie["verb4"];
            lblVerb5.Text = cookie["verb5"];
            lblVerb6.Text = cookie["verb6"];
            lblVerb7.Text = cookie["verb7"];
            lblVerb8.Text = cookie["verb8"];
        }

        //get the nouns and adjectives out of the session
        lblNoun1.Text = Session["Noun1"].ToString();
        lblNoun2.Text = Session["Noun2"].ToString();
        lblNoun3.Text = Session["Noun3"].ToString();
        lblNoun4.Text = Session["Noun4"].ToString();
        lblNoun5.Text = Session["Noun5"].ToString();
        lblNoun6.Text = Session["Noun6"].ToString();
        lblNoun7.Text = Session["Noun7"].ToString();
        lblNoun8.Text = Session["Noun8"].ToString();
        lblNoun9.Text = Session["Noun9"].ToString();


        lblAdj1.Text = Session["adj1"].ToString();
        lblAdj2.Text = Session["adj2"].ToString();
        lblAdj3.Text = Session["adj3"].ToString();
        lblAdj4.Text = Session["adj4"].ToString();

    }

    protected void btnStartOver_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Madlib1.aspx");
    }
}
