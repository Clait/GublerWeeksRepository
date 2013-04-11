using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Membership_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = Membership.GetAllUsers();
        if (!IsPostBack)
        {
            GridView1.DataBind();
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //make sure we are working with a data row
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //get user name for the user
            string username = DataBinder.Eval(e.Row.DataItem, "UserName").ToString();

            //get the checkbox
            CheckBox cbx = (CheckBox)e.Row.FindControl("CheckBox1");

            if (Roles.IsUserInRole(username, "Admin"))
            {
                cbx.Checked = true;
            }
            else
            {
                cbx.Checked = false;
            }

        }
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GridView1.DataBind();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Access username from DataKeys collection
        //string username = GridView1.DataKeys[GridView1.SelectedIndex].Value.ToString();
        string username = GridView1.SelectedDataKey.Value.ToString();
        ProfileCommon pc = Profile.GetProfile(username);
        Label1.Text = pc.FirstName;
        Label2.Text = pc.LastName;
        Label3.Text = pc.BirthDate.ToShortDateString();
        Label4.Text = pc.Address.Street;
        Label5.Text = pc.Address.City;
        Label6.Text = pc.Address.State;
        Label7.Text = pc.Address.Zip;
        Label8.Text = pc.Address.Country;

        //Change another user's profile
        //pc.FirstName = "Justin";
        //pc.Save();
    }


    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string username = GridView1.Rows[e.RowIndex].Cells[1].Text;
        CheckBox cbx = ((CheckBox)GridView1.Rows[e.RowIndex].FindControl("CheckBox1"));
        
        if (cbx.Checked && !Roles.IsUserInRole(username, "Admin"))
        {
            Roles.AddUserToRole(username, "Admin");
        }
        else if (!cbx.Checked && Roles.IsUserInRole(username,"Admin"))
        {
            Roles.RemoveUserFromRole(username, "Admin");
        }

        GridView1.EditIndex = -1;
        GridView1.DataBind();
    }
}