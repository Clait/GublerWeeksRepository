using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UCMP_Footer : System.Web.UI.UserControl
{

    public enum FooterFormat
    {
        LongDate, ShortTime
    }

    
    private FooterFormat format = FooterFormat.LongDate;


    public FooterFormat Format
    {
        get { return format; }
        set { format = value; }
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        lblFooter.Text = "This page was served on: ";

        if (format == FooterFormat.LongDate)
        {
            lblFooter.Text += DateTime.Now.ToLongDateString();
        }
        else if (format == FooterFormat.ShortTime)
        {
            lblFooter.Text += DateTime.Now.ToShortDateString();
        }
    }
}