using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FinalExam_11_Profiles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ProfileCommon pc = Profile.GetProfile(Page.User.Identity.Name);
        Label1.Text = pc.UserName;
        Label2.Text = pc.LastName;
        Label3.Text = pc.BirthDate.ToShortDateString();
        Label4.Text = pc.ShoeSize.ToString();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Access username from DataKeys collection
        //string username = GridView1.DataKeys[GridView1.SelectedIndex].Value.ToString();
        //string username = GridView1.SelectedDataKey.Value.ToString();
    }

    protected void SetShoeSize(object sender, EventArgs e)
    {
        ProfileCommon pc = Profile.GetProfile(Page.User.Identity.Name);
        pc.ShoeSize = 12;
        pc.Save();

        this.DataBind();
    }

    protected void SetBigFootShoeSize(object sender, EventArgs e)
    {
        ProfileCommon pc = Profile.GetProfile("bigfoot");
        pc.ShoeSize = 39;
        pc.Save();

        this.DataBind();
    }
}