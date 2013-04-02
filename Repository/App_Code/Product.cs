using System;

// Define the delegate that represents the event.
public delegate void PriceChangedEventHandler();

public class Product
{
    private string name;
    private decimal price;
    private string imageUrl;

    public string Name
    {
        get
        { return name; }
        set
        { name = value; }
    }

    // Define the event.
    public event PriceChangedEventHandler PriceChanged;

    public decimal Price
    {
        get
        { return price; }
        set
        {
            price = value;

            // Fire the event, provided there is at least one listener.
            if (PriceChanged != null)
            {
                PriceChanged();
            }
        }
    }

    public string ImageUrl
    {
        get
        { return imageUrl; }
        set
        { imageUrl = value; }
    }

    public virtual string GetHtml()
    {
        string htmlString;
        htmlString = "<h1>" + name + "</h1><br>";
        htmlString += "<h3>Costs: " + price.ToString() + "</h3><br>";
        htmlString += "<img src='" + imageUrl + "' />";
        htmlString += "<hr />";
        return htmlString;
    }

    public Product(string name, decimal price, string imageUrl)
    {
        Name = name;
        Price = price;
        ImageUrl = imageUrl;
    }
}

