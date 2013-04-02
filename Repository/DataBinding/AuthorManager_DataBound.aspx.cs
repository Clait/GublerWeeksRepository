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
    
    //Add a private string variable here that will hold the connection string from Web.Config
    //See Page 451
    // Define the connection string.
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
        string selectSQL = "SELECT au_lname +', '+au_fname au_fullname, au_id FROM Authors";

        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(selectSQL, con);
        SqlDataReader reader;

        DataTable table = new DataTable();

        try
        {
            con.Open();
            reader = cmd.ExecuteReader();
            table.Load(reader);

           
            reader.Close();
        }
        catch (Exception err)
        {
            lblResults.Text = "Error Reading List of Names. ";
            lblResults.Text += err.Message;
        }
        finally
        {
            con.Close();
        }


        lstAuthor.DataSource = table;
        lstAuthor.DataTextField = "au_fullname";
        lstAuthor.DataValueField = "au_id";
        lstAuthor.DataBind();
        
        
    }

    protected void lstAuthor_SelectedIndexChanged(object sender, EventArgs e)
    {
       //This method retrieves all of the attributes of the selected author from the database and
       //populates the controls with these values
       //See page 455
        string selectSQL;
        selectSQL = "SELECT * FROM Authors ";
        selectSQL += "WHERE au_id='" + lstAuthor.SelectedItem.Value + "'";
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(selectSQL, con);
        SqlDataReader reader;

        try
        {
            con.Open();
            reader = cmd.ExecuteReader();
            reader.Read();

            txtID.Text = reader["au_id"].ToString();
            txtFirstName.Text = reader["au_fname"].ToString();
            txtLastName.Text = reader["au_lname"].ToString();
            txtPhone.Text = reader["phone"].ToString();
            txtAddress.Text = reader["address"].ToString();
            txtCity.Text = reader["city"].ToString();
            txtState.Text = reader["state"].ToString();
            txtZip.Text = reader["zip"].ToString();
            chkContract.Checked = (bool)reader["contract"];
            reader.Close();
            lblResults.Text = "";
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
        
            txtID.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtPhone.Text = "";
            txtAddress.Text = "";
            txtCity.Text = "";
            txtState.Text = "";
            txtZip.Text = "";
            chkContract.Checked = false;
            lblResults.Text = "Click Insert New to add the completed record.";
        

    }
    protected void cmdInsert_Click(object sender, EventArgs e)
    {
        //This method uses a paramaterized sql statement to insert a new author into the database
        //See pages 459-460
        if (txtID.Text == "" || txtFirstName.Text == "" || txtLastName.Text == "")
        {
            lblResults.Text = "Records require an ID, first name, and last name.";
            return;
        }
       
        string insertSQL;
        insertSQL = "INSERT INTO Authors (";
        insertSQL += "au_id, au_fname, au_lname, ";
        insertSQL += "phone, address, city, state, zip, contract) ";
        insertSQL += "VALUES ('";
        insertSQL += txtID.Text + "', '";
        insertSQL += txtFirstName.Text + "', '";
        insertSQL += txtLastName.Text + "', '";
        insertSQL += txtPhone.Text + "', '";
        insertSQL += txtAddress.Text + "', '";
        insertSQL += txtCity.Text + "', '";
        insertSQL += txtState.Text + "', '";
        insertSQL += txtZip.Text + "', '";
        insertSQL += Convert.ToInt16(chkContract.Checked) + "')";

        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(insertSQL, con);

        cmd.Parameters.AddWithValue("@au_fname", txtFirstName.Text);
        cmd.Parameters.AddWithValue("@au_lname", txtLastName.Text);
        cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
        cmd.Parameters.AddWithValue("@address", txtAddress.Text);
        cmd.Parameters.AddWithValue("@city", txtCity.Text);
        cmd.Parameters.AddWithValue("@state", txtState.Text);
        cmd.Parameters.AddWithValue("@zip", txtZip.Text);
        cmd.Parameters.AddWithValue("@contract", chkContract.Checked);
        cmd.Parameters.AddWithValue("@au_id_original",
        lstAuthor.SelectedItem.Value);
        
        int added = 0;
        
        try
        {
            con.Open();
            added = cmd.ExecuteNonQuery();
            lblResults.Text = added.ToString() + " records inserted.";
        }
        catch (Exception err)
        {
            lblResults.Text = "Error inserting record. ";
            lblResults.Text += err.Message;
        }
        finally
        {
            con.Close();
        }
        // If the insert succeeded, refresh the author list.
        if (added > 0)
        {
            FillAuthorList();
        }
    }

    protected void cmdUpdate_Click(object sender, EventArgs e)
    {
        //This method uses a paramaterized sql statement to update author attributes in the database
        //See pages 460-461

        string updateSQL;
        updateSQL = "UPDATE Authors SET ";
        updateSQL += "au_fname=@au_fname, au_lname=@au_lname, ";
        updateSQL += "phone=@phone, address=@address, city=@city, state=@state, ";
        updateSQL += "zip=@zip, contract=@contract ";
        updateSQL += "WHERE au_id=@au_id_original";
        
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(updateSQL, con);

        cmd.Parameters.AddWithValue("@au_fname", txtFirstName.Text);
        cmd.Parameters.AddWithValue("@au_lname", txtLastName.Text);
        cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
        cmd.Parameters.AddWithValue("@address", txtAddress.Text);
        cmd.Parameters.AddWithValue("@city", txtCity.Text);
        cmd.Parameters.AddWithValue("@state", txtState.Text);
        cmd.Parameters.AddWithValue("@zip", txtZip.Text);
        cmd.Parameters.AddWithValue("@contract", chkContract.Checked);
        cmd.Parameters.AddWithValue("@au_id_original",
        lstAuthor.SelectedItem.Value);

        int updated = 0;
        try
        {
            con.Open();
            updated = cmd.ExecuteNonQuery();
            lblResults.Text = updated.ToString() + " record updated.";
        }
        catch (Exception err)
        {
            lblResults.Text = "Error updating author. ";
            lblResults.Text += err.Message;
        }
        finally
        {
            con.Close();
        }
        // If the update succeeded, refresh the author list.
        if (updated > 0)
        {
            FillAuthorList();
        }
        
    }
    protected void cmdDelete_Click(object sender, EventArgs e)
    {
        //This method uses a paramaterized sql statement to delete an author from the database
        //See page 462
        string deleteSQL;
        deleteSQL = "DELETE FROM Authors ";
        deleteSQL += "WHERE au_id=@au_id";
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(deleteSQL, con);
        cmd.Parameters.AddWithValue("@au_id ", lstAuthor.SelectedItem.Value);
        int deleted = 0;
        try
        {
            con.Open();
            deleted = cmd.ExecuteNonQuery();
        }
        catch (Exception err)
        {
            lblResults.Text = "Error deleting author. ";
            lblResults.Text += err.Message;
        }
        finally
        {
            con.Close();
        }
        // If the delete succeeded, refresh the author list.
        if (deleted > 0)
        {
            FillAuthorList();
        }
        
    }
}
