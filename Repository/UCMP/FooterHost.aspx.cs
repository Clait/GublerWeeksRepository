using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UCMP_FooterHost : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
        {
            Footer1.Format = UCMP_Footer.FooterFormat.LongDate;
        }
        else if (RadioButtonList1.SelectedIndex == 1)
        {
            Footer1.Format = UCMP_Footer.FooterFormat.ShortTime;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    }
}