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
using System.Text;

public partial class AuthorManager : System.Web.UI.Page
{
    
    //Add a private string variable here that will hold the connection string from Web.Config
    //See Page 451
    string connectionString = WebConfigurationManager.ConnectionStrings["Pubs"].ConnectionString;



    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            FillAuthorList();
        }
    }

    private void FillAuthorList()
    {
        //This method should populate the lstAuthor DropDownList with the authors in the pubs database
        //Author names are shown as the text for each ListItem and author IDs are stored as the values
        //See Pages 451-452

        lstAuthor.Items.Clear();

        //Define the select statement

        string selectSql = "SELECT au_lname, au_fname, au_id FROM Authors";

        //Define the ADO.NET Objects
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(selectSql, con);
        SqlDataReader reader;

        try
        {
            con.Open();
            reader = cmd.ExecuteReader();

            //for each item, add the author name to the dropdownlist and store the unique ID in the value property
            while (reader.Read())
            {
                ListItem newItem = new ListItem();
                newItem.Text = reader["au_lname"] + ", " + reader["au_fname"];
                newItem.Value = reader["au_id"].ToString();
                lstAuthor.Items.Add(newItem);
            }
            reader.Close();
        }
        catch (Exception err)
        {
            lblResults.Text = "Error reading list of names. ";
            lblResults.Text += err.Message;
        }
        finally 
        {
            con.Close();
        }
    }

    protected void lstAuthor_SelectedIndexChanged(object sender, EventArgs e)
    {
       //This method retrieves all of the attributes of the selected author from the database and
       //populates the controls with these values
       //See page 455

        // Create a Select statement that searches for a record
        // matching the specific author ID from the Value property.
        string selectSQL;
        selectSQL = "SELECT * FROM Authors ";
        selectSQL += "WHERE au_id='" + lstAuthor.SelectedItem.Value + "'";
        // Define the ADO.NET objects.
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(selectSQL, con);
        SqlDataReader reader;
        // Try to open database and read information.
        try
        {
            con.Open();
            reader = cmd.ExecuteReader();
            reader.Read();
            // Build a string with the record information,
            // and display that in a label.
            StringBuilder sb = new StringBuilder();
            sb.Append("<b>");
            sb.Append(reader["au_lname"]);
            sb.Append(", ");
            sb.Append(reader["au_fname"]);
            sb.Append("</b><br />");
            sb.Append("Phone: ");
            sb.Append(reader["phone"]);
            sb.Append("<br />");
            sb.Append("Address: ");
            sb.Append(reader["address"]);
            sb.Append("<br />");
            sb.Append("City: ");
            sb.Append(reader["city"]);
            sb.Append("<br />");
            sb.Append("State: ");
            sb.Append(reader["state"]);
            sb.Append("<br />");
            lblResults.Text = sb.ToString();
            reader.Close();
        }
        catch (Exception err)
        {
            lblResults.Text = "Error getting author. ";
            lblResults.Text += err.Message;
        }
        finally
        {
            con.Close();
        } 
    }
    protected void cmdNew_Click(object sender, EventArgs e)
    {
        //This method clears the values in the controls so that a new author can be added
        //See page 456
        

    }
    protected void cmdInsert_Click(object sender, EventArgs e)
    {
        //This method uses a paramaterized sql statement to insert a new author into the database
        //See pages 459-460
    }

    protected void cmdUpdate_Click(object sender, EventArgs e)
    {
        //This method uses a paramaterized sql statement to update author attributes in the database
        //See pages 460-461
        
    }
    protected void cmdDelete_Click(object sender, EventArgs e)
    {
        //This method uses a paramaterized sql statement to delete an author from the database
        //See page 462
        
    }
}
