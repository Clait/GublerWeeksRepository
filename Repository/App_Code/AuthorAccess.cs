using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.Common; //needed to use the Generic Db objects required by GenericDataAccess.cs


public static class AuthorAccess
{
	static AuthorAccess()
	{
		//empty constructor
	}

    //This method gets all authors from the database by calling the "GetAllAuthorNames" stored procedure.
    //Resulst are returned in a DataTable object
    public static DataTable GetAllAuthorNames()
    {
        DbCommand comm = GenericDataAccess.CreateCommand();
        comm.CommandText = "GetAllAuthorNames";  //This is the name of the stored procedure to be executed
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
    public static DataTable NewGetAllAuthorNames()
    {
        DbCommand comm = GenericDataAccess.CreateCommand();
        comm.CommandText = "NewGetAllAuthorNames";  //This is the name of the stored procedure to be executed
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
    
    //This method updates author information using the "UpdateAuthor" stored procedure.  The names of the method parameters should match the names of the fields in the corresponding data control (e.g. Gridview, Detailsview, etc.)
    //The method returns an int representing the number of rows affected.  This can be used to verify a successful operation, or it can be discarded
    public static int UpdateAuthor(string au_id, string au_lname, string au_fname, string phone, string address, string city, string state, string zip, bool contract)
    {
        DbCommand comm = GenericDataAccess.CreateCommand();
        comm.CommandText = "UpdateAuthor"; //This is the name of the stored procedure to be executed

        //The following code adds the neccessary parameters to the DbCommand object
        DbParameter param = comm.CreateParameter();
        param.ParameterName = "@au_id";
        param.DbType = DbType.String;
        param.Value = au_id;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@au_lname";
        param.DbType = DbType.String;
        param.Value = au_lname;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@au_fname";
        param.DbType = DbType.String;
        param.Value = au_fname;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@phone";
        param.DbType = DbType.String;
        param.Value = phone;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@address";
        param.DbType = DbType.String;
        param.Value = address;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@city";
        param.DbType = DbType.String;
        param.Value = city;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@state";
        param.DbType = DbType.String;
        param.Value = state;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@zip";
        param.DbType = DbType.String;
        param.Value = zip;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@contract";
        param.DbType = DbType.Byte;
        param.Value = contract;
        comm.Parameters.Add(param);

        
        int rowsAffected = GenericDataAccess.ExecuteNonQuery(comm);
        return rowsAffected;
    }

    //This method gets author information for a selected author from the database by calling the "GetAuthorInfoByID" stored procedure.
    //Resulst are returned in a DataTable object
    public static DataTable GetAuthorInfoByID(string au_id)
    {

        DbCommand comm = GenericDataAccess.CreateCommand();
        comm.CommandText = "GetAuthorInfoByID";

        DbParameter param = comm.CreateParameter();
        param.ParameterName = "@au_id";
        param.DbType = DbType.String;
        param.Value = au_id;
        comm.Parameters.Add(param);

        DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
         return table;
        

    }

    //This method inserts a new author using the "InsertAuthor" stored procedure.  The names of the method parameters should match the names of the fields in the corresponding data control (e.g. Gridview, Detailsview, etc.)
    //The method returns an int representing the number of rows affected.  This can be used to verify a successful operation, or it can be discarded
    public static int InsertAuthor(string au_id, string au_lname, string au_fname, string phone, string address, string city, string state, string zip, bool contract)
    {
        DbCommand comm = GenericDataAccess.CreateCommand();
        comm.CommandText = "InsertAuthor"; //This is the name of the stored procedure to be executed

        //The following code adds the neccessary parameters to the DbCommand object
        DbParameter param = comm.CreateParameter();
        param.ParameterName = "@au_id";
        param.DbType = DbType.String;
        param.Value = au_id;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@au_lname";
        param.DbType = DbType.String;
        param.Value = au_lname;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@au_fname";
        param.DbType = DbType.String;
        param.Value = au_fname;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@phone";
        param.DbType = DbType.String;
        param.Value = phone;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@address";
        param.DbType = DbType.String;
        param.Value = address;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@city";
        param.DbType = DbType.String;
        param.Value = city;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@state";
        param.DbType = DbType.String;
        param.Value = state;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@zip";
        param.DbType = DbType.String;
        param.Value = zip;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@contract";
        param.DbType = DbType.Byte;
        param.Value = contract;
        comm.Parameters.Add(param);


        int rowsAffected = GenericDataAccess.ExecuteNonQuery(comm);
        return rowsAffected;

    }

    //This method deletes an author using the "DeleteAuthor" stored procedure.  The names of the method parameters should match the names of the fields in the corresponding data control (e.g. Gridview, Detailsview, etc.)
    //The method returns an int representing the number of rows affected.  This can be used to verify a successful operation, or it can be discarded
    public static int DeleteAuthor(string au_id)
    {

        DbCommand comm = GenericDataAccess.CreateCommand();
        comm.CommandText = "DeleteAuthor"; //This is the name of the stored procedure to be executed

        //The following code adds the neccessary parameters to the DbCommand object
        DbParameter param = comm.CreateParameter();
        param.ParameterName = "@au_id";
        param.DbType = DbType.String;
        param.Value = au_id;
        comm.Parameters.Add(param);

       


        int rowsAffected = GenericDataAccess.ExecuteNonQuery(comm);
        return rowsAffected;

        

    }

}
