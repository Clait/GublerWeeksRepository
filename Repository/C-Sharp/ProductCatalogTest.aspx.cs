using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class C_Sharp_ProductCatalogTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ProductCatalog pc = new ProductCatalog();

        pc.AddProduct("Radiation Blaster 3000", 150M, "microwave.jpg");
        pc.AddProduct("Fruit Ninja", 70M, "mixer.jpg");
        pc.AddProduct("Toasty Buns", 20M, "toaster.jpg");

        Response.Write(pc.GetCatalogHtml());

        TaxableProduct tp = (TaxableProduct)pc.GetHighPricedProduct();
        Response.Write("The high priced product is: " + tp.Name + " at a price of $" + tp.TotalPrice);
    }
}