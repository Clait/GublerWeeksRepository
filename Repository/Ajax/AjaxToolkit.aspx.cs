using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ajax_AjaxToolkit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label1.Text = "There are many controls implemented on this page:<br />-Accordian: Menu system that collapses other branches as another is selected.<br />-Rounded corner extender: rounds the corners on an object, like the blue menu.<br />-Drag panel extender: allows you to drag the object across the page.<br />-HTML editor extender: extends a textbox into a full text editor.<br />-Drop Shadow extender: makes the control appear to be floating.";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = TextBox1.Text;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = "There are many controls implemented on this page:<br />-Accordian: Menu system that collapses other branches as another is selected.<br />-Rounded corner extender: rounds the corners on an object, like the blue menu.<br />-Drag panel extender: allows you to drag the object across the page.<br />-HTML editor extender: extends a textbox into a full text editor.<br />-Drop Shadow extender: makes the control appear to be floating.";
    }
}