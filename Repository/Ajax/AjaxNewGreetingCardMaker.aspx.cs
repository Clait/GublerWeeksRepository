using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using System.Web.UI.HtmlControls;
using System.Drawing.Text;
using System.ComponentModel;
using System.Drawing;
using System.Diagnostics;

public partial class Ajax_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            // Set color options.
            //string[] colorArray = Enum.GetNames(typeof(KnownColor));
            //lstBackColor.DataSource = colorArray;
            //lstBackColor.DataBind();
            //lstBackColor.SelectedValue = "Crimson";

            // Set font options.
            InstalledFontCollection fonts = new InstalledFontCollection();
            foreach (FontFamily family in fonts.Families)
            {
                lstFontName.Items.Add(family.Name);
            }
            lstFontName.SelectedValue = "Segoe Script";

            // Select the first border option.
            lstBorder.SelectedIndex = 1;

            // Set border style options.
            string[] borderStyleArray = Enum.GetNames(typeof(BorderStyle));
            lstBorder.DataSource = borderStyleArray;
            lstBorder.DataBind();
        }
        //System.Threading.Thread.Sleep(2000);
    }

    private void UpdateCard()
    {
        // Make the system pause for a minute so the ProgressUpdate shows.
        System.Threading.Thread.Sleep(800);

        // (The code that draws the greeting card goes here.)

        // Update the background color.
        //pnlCard.BackColor = lstBackColor.Text;

        // Update the font.
        lblGreeting.Font.Name = lstFontName.SelectedItem.Text;

        try
        {
            if (Int32.Parse(txtFontSize.Text) > 0)
            {
                lblGreeting.Font.Size =
                    FontUnit.Point(Int32.Parse(txtFontSize.Text));
            }
        }
        catch
        {
            // Use error handling to ignore invalid value.
        }

        //// Update the border style.
        //pnlCard.BorderStyle = (BorderStyle)Int32.Parse(lstBorder.SelectedItem.Value);

        // Find the appropriate TypeConverter for the BorderStyle enumeration.
        TypeConverter converter =
         TypeDescriptor.GetConverter(typeof(BorderStyle));
        // Update the border style using the value from the converter.
        pnlCard.BorderStyle = (BorderStyle)converter.ConvertFromString(
         lstBorder.SelectedItem.Text);


        // Update the picture.
        foreach (ListItem li in DropDownList1.Items)
        {
            if (li.Selected)
            {
                System.Web.UI.WebControls.Image i = new System.Web.UI.WebControls.Image();
                i.ImageUrl = li.Value;
                PlaceHolder1.Controls.Add(i);
                i.Height = 170;
                i.BorderStyle = (BorderStyle)4;
            }
        }

        // Set the text.
        lblGreeting.Text = txtGreeting.Text;

        // Add from who!
        if ((txtFrom.Text != null) && txtFrom.Text != "")
        {
            lblFrom.Text = "From: " + txtFrom.Text;
        }
        else if (txtFrom.Text != null)
        {
            lblFrom.Text = "";
        }
        else if (txtFrom.Text != "")
        {
            lblFrom.Text = "From Warning 1";
        }
        else
        {
            lblFrom.Text = "From Warning 2";
        }

        ControlCounter = 1;
    }

    int ControlCounter = 1;

    protected void ControlChanged(object sender, System.EventArgs e)
    {
        // Refresh the greeting card (because a control was changed).
        // Using the if statement to make sure the update doesn't run more than once per postback.
        if (ControlCounter == 1)
        {
            UpdateCard();
            ControlCounter++;
        }
    }
}