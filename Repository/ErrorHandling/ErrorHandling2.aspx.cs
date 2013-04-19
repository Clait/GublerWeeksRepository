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

    private decimal DivideNumbers(decimal dividend, decimal divisor) 
    {
        Trace.Warn("Division being attempted int eh DivideNumbers method");
        if (divisor==0)
        {
            DivideByZeroException myException = new DivideByZeroException("Did you take math 1010?  You can't divide by 0");
            throw myException;
        }
        else
        {
            return dividend / divisor;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            decimal a, b, result;

            a = Decimal.Parse(TextBox1.Text);
            b = Decimal.Parse(TextBox2.Text);

            Trace.Warn("Division about to take place");
            result = DivideNumbers(a, b);

            Trace.Warn("Division succeeded!");
            Label1.Text = result.ToString();
        }
        catch (DivideByZeroException err)
        {
            Label1.Text = "<b> Message: </b> " + err.Message + "<br><br>";
            Label1.Text += "<b> Source: </b> " + err.Source + "<br><br>";
            Label1.Text += "<b> Stack Trace: </b> " + err.StackTrace;
            Label1.ForeColor = System.Drawing.Color.Red;
            //throw;
        }
        catch (FormatException err)
        {
            Label1.Text = "<b> Message: </b> " + err.Message + "<br><br>";
            Label1.Text += "<b> Source: </b> " + err.Source + "<br><br>";
            Label1.Text += "<b> Stack Trace: </b> " + err.StackTrace;
            Label1.ForeColor = System.Drawing.Color.Red;
            //throw;
        }
        finally
        {
            Label1.Text += " This will always print";
        }

    }
}