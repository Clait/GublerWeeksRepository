using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Membership_WebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox1.Text=Profile.FirstName;
            TextBox2.Text=Profile.LastName;
            TextBox3.Text=Profile.BirthDate.ToShortDateString();
            TextBox4.Text=Profile.Address.Street;
            TextBox5.Text=Profile.Address.City;
            TextBox6.Text=Profile.Address.State;
            TextBox7.Text=Profile.Address.Zip;
            TextBox8.Text = Profile.Address.Country;
        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Profile.FirstName = TextBox1.Text;
        Profile.LastName = TextBox2.Text;
        Profile.BirthDate = Convert.ToDateTime(TextBox3.Text);
        Profile.Address.Street = TextBox4.Text;
        Profile.Address.City = TextBox5.Text;
        Profile.Address.State = TextBox6.Text;
        Profile.Address.Zip = TextBox7.Text;
        Profile.Address.Country = TextBox8.Text;
    }
}