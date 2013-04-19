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
        lstAuthor.DataBind();

    }
    protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        lstAuthor.DataBind();
    }
    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        lstAuthor.DataBind();
    }

    protected void SqlDataSource2_Updated(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.Exception!=null)
	    {
            lblResults.Text = "You broke it... why would you do that?";
		    lblResults.Text += "<br><br><b> Message: </b> " + e.Exception.Message + "<br><br>";
            lblResults.Text += "<b> Source: </b> " + e.Exception.Source + "<br><br>";
            lblResults.Text += "<b> Stack Trace: </b> " + e.Exception.StackTrace;
            lblResults.ForeColor = System.Drawing.Color.Red;

            e.ExceptionHandled = true;
        }
    }
}
