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
        GridView1.DataBind();
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

    }
}