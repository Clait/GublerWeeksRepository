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
            decimal a, b, result;

            a = Decimal.Parse(TextBox1.Text);
            b = Decimal.Parse(TextBox2.Text);

            result = a / b;

            Label1.Text = result.ToString();
    }
}