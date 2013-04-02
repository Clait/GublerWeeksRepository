using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DataBinding_RepeatedDataBinding : System.Web.UI.Page
{
    List<string> sappyBands = new List<string>();

    protected void Page_Load(object sender, EventArgs e)
    {
        int[] intArray = new int[] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
        
        //ListBox1.DataSource = intArray;
        //ListBox1.DataBind();

        ArrayList loversFoods = new ArrayList();
        loversFoods.Add("Chicken Parmesan");
        loversFoods.Add("Lobster");
        loversFoods.Add("Steak");
        loversFoods.Add("Chocolate-covered Strawberries");
        loversFoods.Add("Skittles");
        loversFoods.Add("Starburst");
        loversFoods.Add("Champagne");
        loversFoods.Add("Chocolates");
        loversFoods.Add("");
        loversFoods.Add("");
        
        //CheckBoxList1.DataSource = loversFoods;

        //List<string> sappyBands = new List<string>();
        sappyBands.Add("Boyz II Men");
        sappyBands.Add("Barry White");
        sappyBands.Add("James Brown");
        sappyBands.Add("Depeche Mode");
        sappyBands.Add("Marvin Gaye");
        sappyBands.Add("Poison");

        //RadioButtonList1.DataSource = sappyBands;

        Dictionary<int, string> myMonths = new Dictionary<int, string>();
        myMonths.Add(1, "January");
        myMonths.Add(2, "February");
        myMonths.Add(3, "March");
        myMonths.Add(4, "April");
        myMonths.Add(5, "May");
        myMonths.Add(6, "June");
        myMonths.Add(7, "July");
        myMonths.Add(8, "August");
        myMonths.Add(9, "September");
        myMonths.Add(10, "October");
        myMonths.Add(11, "November");
        myMonths.Add(12, "December");

        //DropDownList1.DataSource = myMonths;
        //DropDownList1.DataTextField = "Value";
        //DropDownList1.DataValueField = "Key";

        ListBox2.DataSource = loversFoods;

        //this.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ListBox2.DataSource = sappyBands;
        //this.DataBind();
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        this.DataBind();
    }
}