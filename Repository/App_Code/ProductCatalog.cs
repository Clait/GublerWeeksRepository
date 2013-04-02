using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ProductCatalog
/// </summary>
public class ProductCatalog
{
    private List<TaxableProduct> products = new List<TaxableProduct>();

    public void AddProduct(string name, decimal price, string imageUrl) 
    {
        TaxableProduct tp = new TaxableProduct(name,price,imageUrl);
        products.Add(tp);
    }

    public Product GetHighPricedProduct() 
    {
        decimal highPrice = 0;
        Product highPricedProduct = null;

        foreach (Product p in products)
        {
            if (p.Price > highPrice)
            {
                highPrice = p.Price;
                highPricedProduct = p;
            }
        }

        return highPricedProduct;
    }

    public string GetCatalogHtml() 
    {
        string catalogHtml = "";

        foreach (TaxableProduct p in products)
        {
            catalogHtml += p.GetHtml();
        }

        return catalogHtml;
    }

	public ProductCatalog()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}