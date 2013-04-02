using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class ControlDemo : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnTextFocus_Click(object sender, EventArgs e)
    {
        txtMultiLine.Focus();
    }
    protected void txtHyperLink_TextChanged(object sender, EventArgs e)
    {
        HyperLink1.NavigateUrl = txtHyperLink.Text;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string[] CarArray = new string[4] { "Ford", "Honda", "BMW", "Dodge" };
        string[] AirplaneArray = new string[3] {"Boeing 777", "Boeing 747", 
           "Boeing 737"};
        string[] TrainArray = new string[3] { "Bullet Train", "Amtrack", "Tram" };

        if (DropDownList1.SelectedValue == "Car")
        {
            DropDownList2.DataSource = CarArray;
        }
        else if (DropDownList1.SelectedValue == "Airplane")
        {
            DropDownList2.DataSource = AirplaneArray;
        }
        else
        {
            DropDownList2.DataSource = TrainArray;
        }

        DropDownList2.DataBind();
        DropDownList2.Visible = true;

    }
    protected void btnDDL_Click(object sender, EventArgs e)
    {
         lblDDL.Text = ("You selected <b>" +
         DropDownList1.SelectedValue.ToString() + ": " +
          DropDownList2.SelectedValue.ToString() + "</b>");

    }
    protected void btn1ListBox_Click(object sender, EventArgs e)
    {
        ListBox1.Items.Add(txtListBox.Text);
    }
    protected void btn2ListBox_Click(object sender, EventArgs e)
    {
        lblListBox.Text = "You selected from the ListBox:<br />";
        foreach (ListItem li in ListBox1.Items)
        {
            if (li.Selected == true)
            {
                lblListBox.Text += li.Text + "<br />";
            }
        }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        lblChkBox.Text = "The individual CheckBox has been selected and the CheckBoxList has been loaded.";
        string[] CarArray = new string[4] { "Ford", "Honda", "BMW", "Dodge" };
        CheckBoxList1.DataSource = CarArray;
        CheckBoxList1.DataBind();
        CheckBoxList1.RepeatColumns = 2;
        CheckBoxList1.BorderColor = System.Drawing.Color.Red;
        CheckBoxList1.BorderStyle = BorderStyle.Solid;
    }
    protected void RadioButton_CheckedChanged(object sender, EventArgs e)
    {
        string[] AirplaneArray = new string[3] {"Boeing 777", "Boeing 747", 
           "Boeing 737"};
        string[] TrainArray = new string[3] { "Bullet Train", "Amtrack", "Tram" };
        RadioButton button = sender as RadioButton;
        if (button.ID == "RadioButton1")
            RadioButtonList1.DataSource = AirplaneArray;
        else
            RadioButtonList1.DataSource = TrainArray;
        RadioButtonList1.DataBind();
        RadioButtonList1.SelectedIndex = 2;


    }
    protected void btnImage_Click(object sender, EventArgs e)
    {
        if (Image1.ImageUrl == "pencil.gif")
            Image1.ImageUrl = "pda.gif";
        else if (Image1.ImageUrl == "pda.gif")
            Image1.ImageUrl = "pencil.gif";

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (DropDownList3.SelectedIndex)
        {
            case 0:
                BulletedList1.BulletStyle = BulletStyle.Numbered;
                break;
            case 1:
                BulletedList1.BulletStyle = BulletStyle.LowerAlpha;
                break;
            case 2:
                BulletedList1.BulletStyle = BulletStyle.UpperAlpha;
                break;
            case 3:
                BulletedList1.BulletStyle = BulletStyle.LowerRoman;
                break;
            case 4:
                BulletedList1.BulletStyle = BulletStyle.UpperRoman;
                break;
            case 5:
                BulletedList1.BulletStyle = BulletStyle.Disc;
                break;
            case 6:
                BulletedList1.BulletStyle = BulletStyle.Circle;
                break;
            case 7:
                BulletedList1.BulletStyle = BulletStyle.Square;
                break;
            case 8:
                BulletedList1.BulletStyle = BulletStyle.CustomImage;
                // Specify the path to the custom image to use for the bullet.
                BulletedList1.BulletImageUrl = "bullet.png";
                break;
            case 9:
                BulletedList1.BulletStyle = BulletStyle.NotSet;
                break;
            default:
                throw new Exception("You did not select a valid bullet style.");
        }

    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        BulletedList1.FirstBulletNumber = Int32.Parse(DropDownList4.SelectedValue);
    }
    protected void btnAddName_Click(object sender, EventArgs e)
    {
        TableRow tr = new TableRow();
        TableCell fname = new TableCell();
        fname.Text = txtFirstName.Text;
        tr.Cells.Add(fname);

        TableCell lname = new TableCell();
        lname.Text = txtLastName.Text;
        tr.Cells.Add(lname);

        Table1.Rows.Add(tr);
    }
    protected void btnPanel_Click(object sender, EventArgs e)
    {
        if (Panel1.Visible == true)
        {
            Panel1.Visible = false;
            btnPanel.Text = "Make the panel visible";
            
        }
        else if (Panel1.Visible == false)
        {
            Panel1.Visible = true;
            btnPanel.Text = "Make the panel invisible";
            
        }
    }
}
