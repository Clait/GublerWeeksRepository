using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Advanced_Controls_Advanced_Controls : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.IsWeekend)
	    {
            e.Day.IsSelectable = false;
	    }

        //if (e.Day.Date.Month == 12 && e.Day.Date.Day == 5)
        //{
        //    // It's your birthday!!!
        //    Label l = new Label();
        //    l.Text = "<br />Happy Birthday Clait!";
        //    e.Cell.Controls.Add(l);
        //}
        //if (e.Day.Date.Month == 1 && e.Day.Date.Day == 14)
        //{
        //    // It's your birthday!!!
        //    Label l = new Label();
        //    l.Text = "<br />Happy Birthday Kaden!";
        //    e.Cell.Controls.Add(l);
        //}
        //if (e.Day.IsSelected)
        //{
        //}    
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label1.Text = Calendar1.SelectedDate.ToShortDateString();
        CheckBirthday(new DateTime(1983, 01, 14), "Kaden");
        CheckBirthday(new DateTime(1979, 12, 05), "Clait");
    }

    private void CheckBirthday(DateTime theDate, string name)
    {
        string beforeBDay = "<br />" + " You haven't had a birthday yet this year, " + name + "!";
        string afterBday = "<br /> Your birthday has already passed, " + name + "!";
        if (Calendar1.SelectedDate.Month > theDate.Month)
        {
            Label1.Text += afterBday;
        }
        else if (Calendar1.SelectedDate.Month < theDate.Month)
        {
            Label1.Text += beforeBDay;
        }
        else if (Calendar1.SelectedDate.Month == theDate.Month)
        {
            if (Calendar1.SelectedDate.Day == theDate.Day)
            {
                Label1.Text += "<br />It's " + name + "'s Birthday!!";
            }
            else if (Calendar1.SelectedDate.Day > theDate.Day)
            {
                Label1.Text += afterBday;
            }
            else if (Calendar1.SelectedDate.Day < theDate.Day)
            {
                Label1.Text += beforeBDay;
            }
            else
            {
                Label1.Text += "<br />Birthday check error.";
            }
            
        }
        else
        {
            Label1.Text += "<br />Birthday check error.";
        }
    }

    protected void Ads_AdCreated(Object sender, AdCreatedEventArgs e)
    {
        // Synchronize the Hyperlink control.
        lnkBanner.NavigateUrl = e.NavigateUrl;
        // Syncrhonize the text of the link.
        lnkBanner.Text = "Click here for information about our sponsor: ";
        lnkBanner.Text += e.AlternateText;
    }
}