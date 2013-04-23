using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class AuthorManager : System.Web.UI.Page
{

   


    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void DetailsView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        ddlStates.DataBind();

    }
    protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        ddlStates.DataBind();
    }
    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        ddlStates.DataBind();
    }
    protected void ddlStates_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label2.Visible = true;
        Label2.Text = "Vendors from " + ddlStates.SelectedItem + ":";
    }
}
