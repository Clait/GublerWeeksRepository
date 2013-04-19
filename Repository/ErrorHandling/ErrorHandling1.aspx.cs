using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ErrorHandling_ErrorHandling1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        try
        {
            decimal a, b, result;

            a = Decimal.Parse(TextBox1.Text);
            b = Decimal.Parse(TextBox2.Text);

            result = a / b;

            Label1.Text = result.ToString();
        }
        catch (Exception err)
        {
            Label1.Text = "<b> Message: </b> " + err.Message + "<br><br>";
            Label1.Text += "<b> Source: </b> " + err.Source + "<br><br>";
            Label1.Text += "<b> Stack Trace: </b> " + err.StackTrace;
            Label1.ForeColor = System.Drawing.Color.Red;
            //throw;
        }
    }
}