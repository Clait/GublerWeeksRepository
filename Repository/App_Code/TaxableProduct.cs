using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for TaxableProduct
/// </summary>
public class TaxableProduct : Product
{
    private decimal taxRate = 1.15M;

    public decimal TotalPrice
    {
        get { return Price * taxRate; }
    }

	public TaxableProduct(string name, decimal price, string imageUrl) : base (name, price, imageUrl)
	{

	}

    public override string GetHtml()
    {
        string htmlString;
        htmlString = "<h1>" + Name + "</h1><br>";
        htmlString += "<h3>Costs: " + TotalPrice.ToString() + "</h3><br>";
        htmlString += "<img src='" + ImageUrl + "' />";
        htmlString += "<hr />";
        return htmlString;
    }
}