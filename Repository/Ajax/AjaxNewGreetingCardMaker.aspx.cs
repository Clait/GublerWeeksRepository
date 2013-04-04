using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Drawing.Text;
using System.ComponentModel;

namespace GreetingCardMaker
{
	public partial class GreetingCardMaker : System.Web.UI.Page
	{

		protected void Page_Load(object sender, System.EventArgs e)
		{
			if (this.IsPostBack == false)
			{
                // Set color options.
                string[] colorArray = Enum.GetNames(typeof(KnownColor));
                lstBackColor.DataSource = colorArray;
                lstBackColor.DataBind();
				
                // Set font options.
                //lstFontName.Items.Add("Times New Roman");
                //lstFontName.Items.Add("Arial");
                //lstFontName.Items.Add("Verdana");
                //lstFontName.Items.Add("Tahoma")
                InstalledFontCollection fonts = new InstalledFontCollection();
                foreach (FontFamily family in fonts.Families)
                {
                    lstFontName.Items.Add(family.Name);
                }

                //// Set border style options by adding a series of
                //// ListItem objects.
                //ListItem item = new ListItem();

                //// The item text indicates the name of the option.
                //item.Text = BorderStyle.None.ToString();

                //// The item value records the corresponding integer
                //// from the enumeration. To obtain this value, you
                //// must cast the enumeration value to an integer,
                //// and then convert the number to a string so it
                //// can be placed in the HTML page.
                //item.Value = ((int)BorderStyle.None).ToString();

                //// Add the item.
                //lstBorder.Items.Add(item);

                //// Now repeat the process for two other border styles.
                //item = new ListItem();
                //item.Text = BorderStyle.Double.ToString();
                //item.Value = ((int)BorderStyle.Double).ToString();
                //lstBorder.Items.Add(item);

                //item = new ListItem();
                //item.Text = BorderStyle.Solid.ToString();
                //item.Value = ((int)BorderStyle.Solid).ToString();
                //lstBorder.Items.Add(item);
			
				// Select the first border option.
				lstBorder.SelectedIndex = 0;

                // Set border style options.
                string[] borderStyleArray = Enum.GetNames(typeof(BorderStyle));
                lstBorder.DataSource = borderStyleArray;
                lstBorder.DataBind();
			}
		}

        protected void ControlChanged(object sender, System.EventArgs e)
        {
            // Refresh the greeting card (because a control was changed).
            UpdateCard();
        }

        protected void cmdUpdate_Click(object sender, EventArgs e)
        {
            // Refresh the greeting card (because the button was clicked).
            UpdateCard();
        }

        private void UpdateCard()
        {
            // (The code that draws the greeting card goes here.)
        
			// Update the color.
			pnlCard.BackColor = Color.FromName(lstBackColor.SelectedItem.Text);

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
            foreach (ListItem li in CheckBoxList1.Items)
            {
                if (li.Selected)
                {
                    System.Web.UI.WebControls.Image i = new System.Web.UI.WebControls.Image();
                    i.ImageUrl = li.Value;
                    PlaceHolder1.Controls.Add(i);
                    //i.Height="150px";
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
		}
	}
}
