<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="ControlDemo.aspx.cs" Inherits="ControlDemo" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Control Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1 align="center">ASP.NET 2.0 Basic Web Server Controls</h1>
    <p>This page demonstrates the use of basic ASP.NET Web Controls</p>
    <hr />
    <h2>The Label Control</h2>
        <p>The Label control is used primarily for displaying text, although it can also be used
        for assigning hot-keys to other controls, such as text boxes.  This is done through the <i>AccessKey</i>
        and <i>AssociatedControlID</i> attributes.  The following example illustrates this functionality.</p>
        <asp:Label ID="lblUserName" runat="server" AccessKey="N" AssociatedControlID="txtUserName">User<u>n</u>ame</asp:Label> 
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblPassword" runat="server" AccessKey="P" AssociatedControlID="txtPassword"><u>P</u>assword</asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <p>These hot-keys enable the user to focus on the Username or Password textboxes by pressing Alt+N or Alt+P, respectively</p>
    
    <hr />
    <h2>The Literal Control</h2>
        <p>The Literal control works much like a label, except that it simply outputs its text to the browswer without encapsulating
        it in a &lt;span&gt; element like a label does.  You can also place HTML code in the string and the browser will interpret 
        this code as you would expect.  However, you can override this functionality by setting the<i>Mode</i> attribute to "encode"
        , which encodes the output before sending it to the browser.  The following examples illustrate:</p>
        <asp:Literal ID="Literal1" runat="server"><b>This is an unencoded literal</b></asp:Literal>
        <br />
        <asp:Literal ID="Literal2" runat="server" Mode="Encode"><b>This is an encoded literal</b></asp:Literal>
        
     <hr />
     <h2>The TextBox Control</h2>
        <p>The TextBox control is the workhorse of accepting user input.  The textbox control can map to three different
        HTML elements commonly used in forms: <asp:Literal ID="Literal3" runat="server" Mode="Encode"><input type="text" />, <input type="password" />, 
            and <textarea></asp:Literal>.  This is done simply by altering the attributes of the TextBox control.  The 
            ordinary text and password attributes are illustrated in the textboxes in the section describing label
            controls.  The textarea function is illustrated below </p>
            
        <asp:TextBox ID="txtMultiLine" runat="server" TextMode="MultiLine" >This is a Multi-line textbox.  By default the wrap attribute is set to true.</asp:TextBox>
        
        <p>You can set the focus of the user's cursor on a TextBox (or any control for that matter) using the Focus() method.  Pressing the
        button below re-loads the page with the focus changed to the Multi-line textbox above</p>
        <asp:Button ID="btnTextFocus" runat="server" Text="Set focus to Multi-line TextBox" OnClick="btnTextFocus_Click" />
        <p>Another useful attribute of the TextBox control is the AutoCompleteType attribute.  Auto Complete shows the user values
        entered into previous forms as they enter information into the current form.  You specify the type of information you
        want based on the value of the AutoCompleteType attribute.  The following TextBox illustrates this functionality for an email field.</p>
        <asp:Label ID="lblEmail" runat="server" Text="Enter your email address:  "></asp:Label><asp:TextBox ID="txtEmail"
            runat="server" AutoCompleteType="Email" AutoPostBack="true"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Label ID="lblEmail2" runat="server" Text="Enter your email address again:  "></asp:Label><asp:TextBox ID="txtEmail2"
            runat="server" AutoCompleteType="Email"></asp:TextBox>
            
    <hr />
    <h2>The Button Control</h2>
        <p>The Button control is used primarily for sumission of forms.  There are three types of ASP.NET Button controls:  Button,
         LinkButton, and ImageButton.  Each type of Button behaves in a similar manner.  The primary difference is that the LinkButton
          is formatted to look like a hyperlink while the ImageButton uses a programmer-specified image.  Buttons can also be made
          to post to another page using the PostBackUrl attribute.  Examples of each button are provided below</p>
        <asp:Button ID="Button1" runat="server" Text="This Button posts to another page" PostBackUrl="~/Page2.aspx" />
        &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server">This is a LinkButton</asp:LinkButton>
        &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Label ID="lblImageBtn" runat="server" Text="This is an ImageButton:  "></asp:Label><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="cp_icon_bulb3.gif" />
        
    <hr />
    <h2>The HyperLink Control</h2>
        <p>The HyperLink control works just like a regular hyperlink, except that you can access its properties (including href)
        programatically.  For example, type a Web url (including the http://) into the TextBox, tab off of the TextBox (the page will reload)
         and then click on the link.</p>
        <asp:TextBox ID="txtHyperLink" runat="server" OnTextChanged="txtHyperLink_TextChanged" AutoPostBack="True"></asp:TextBox>
        <asp:HyperLink ID="HyperLink1" runat="server">Go to this address</asp:HyperLink>
        
    <hr />
    <h2>The DropDownList Control</h2>    
        <p>The DropDownList control creates an HTML &lt;select&gt; element, but its items (in the form of ListItem objects) can be accessed
        programmatically.  ListItem objects can also be generated from various types of data sources, including arrays.
        The following example demonstrates populating DropDownList values from an array and dynamically determining the values
        of one DropDownList based on the value selected in another DropDownList</p> 
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true" >
            <asp:ListItem>Select an Item</asp:ListItem>
            <asp:ListItem>Car</asp:ListItem>
            <asp:ListItem>Airplane</asp:ListItem>
            <asp:ListItem>Train</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" Visible="false">
        </asp:DropDownList><br />
        <br />
        <asp:Button ID="btnDDL" runat="server" Text="Show selected values" OnClick="btnDDL_Click" />
        <br /><br />
        <asp:Label ID="lblDDL" runat="server" Text=""></asp:Label>
        
    <hr />
    <h2>The ListBox Control</h2>
    <p>The ListBox Control is similar to the DropDownList control, but it allows users to view (and, if desired, select)
    multiple items rather than just one.  As with other List controls, items can be added/removed dynamically in
    the code-behind file.  The following example demonstrates a multi-item ListBox with the capability of adding
    additional elements specified by the user</p>
    
    <asp:TextBox ID="txtListBox" Runat="server"></asp:TextBox>
        <asp:Button ID="btn1ListBox" Runat="server" Text="Add an additional item" 
         OnClick="btn1ListBox_Click" />
        <br />
        <br />
    
        <asp:ListBox ID="ListBox1" Runat="server" SelectionMode="multiple">
           <asp:ListItem>Hematite</asp:ListItem>
           <asp:ListItem>Halite</asp:ListItem>
           <asp:ListItem>Limonite</asp:ListItem>
           <asp:ListItem>Magnetite</asp:ListItem>
        </asp:ListBox>
        <br />
        <br />
        <asp:Button ID="btn2ListBox" Runat="server" Text="Submit" 
         OnClick="btn2ListBox_Click" />
        <br />
        <br />
        <asp:Label ID="lblListBox" Runat="server"></asp:Label>
        
    <hr />
    <h2>The CheckBox and CheckBoxList controls</h2>
    <p>A CheckBox control consists of a single CheckBox, while a CheckBoxList control groups individual CheckBox controls
    into a sinle connection of items.  With a CheckBoxList, you can work with the events as a collection rather than
    each CheckBox individually.  This can be useful when you want to bind to a data source</p>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="This is an individual CheckBox.  Check the box to load the 
        CheckBoxList control." AutoPostBack="true" OnCheckedChanged="CheckBox1_CheckedChanged" /><br /><br />
        <asp:Label ID="lblChkBox" runat="server" Text=""></asp:Label>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
        </asp:CheckBoxList>
        
    <hr />
    <h2>The RadioButton and RadioButtonList controls</h2>
    <p>The RadioButton and RadioButtonList controls are very similar to the CheckBox and CheckBoxList controls.  However,
    radio buttons are typically grouped together into a logical group that requires a single choice between at least two options.
    The individual radio buttons below load the RadioButtonList with different values.  Notice that the GroupName attribute
    places the individual RadioButtons into a logical group.</p>
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Set1" AutoPostBack="true" Text="Airplanes" OnCheckedChanged="RadioButton_CheckedChanged" />
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Set1" AutoPostBack="true" Text="Trains" OnCheckedChanged="RadioButton_CheckedChanged" /><br /><br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        </asp:RadioButtonList>
  
    <hr />
    <h2>The BulletedList control</h2>
    <p>The BulletedList control displays ListItem objects in an ordered or unordered bulleted list.  The style of the list can be altered by specifying the BulletStyle
    attribute, as demonstrated below.  The number of the first item in the list (and therefore subsequent items) can also be changed by altering the FirstBulletNumber
    attribute.</p>
        <asp:BulletedList ID="BulletedList1" runat="server">
        <asp:ListItem>First Item</asp:ListItem>
        <asp:ListItem>Second Item</asp:ListItem>
        <asp:ListItem>Third Item</asp:ListItem>
        <asp:ListItem>Fourth Item</asp:ListItem>
        <asp:ListItem>Fifth Item</asp:ListItem>
        </asp:BulletedList><br /><br />
        <asp:Label ID="Label1" runat="server" Text="Change the style of the bullets."></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
            <asp:ListItem>Numbered</asp:ListItem>
            <asp:ListItem>LowerAlpha</asp:ListItem>
            <asp:ListItem>UpperAlpha</asp:ListItem>
            <asp:ListItem>LowerRoman</asp:ListItem>
            <asp:ListItem>UpperRoman</asp:ListItem>
            <asp:ListItem>Disc</asp:ListItem>
            <asp:ListItem>Circle</asp:ListItem>
            <asp:ListItem>Square</asp:ListItem>
            <asp:ListItem>CustomImage</asp:ListItem>
            <asp:ListItem>NotSet</asp:ListItem>
        </asp:DropDownList>
        &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Label ID="Label2" runat="server" Text="Change the starting number of the bullet list (only works for numbered lists)"></asp:Label>
        <asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" AutoPostBack="true">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>
        
        
    <hr />
    <h2>The Image Control</h2>
    <p>The image control is a simple control that displays an image on your Website.  However, as with other server controls
    the image control allows you to programatically alter the image.</p>
        <asp:Image ID="Image1" runat="server" ImageUrl="pencil.gif" /><br />
        <asp:Button ID="btnImage" runat="server" Text="Change the image" OnClick="btnImage_Click" />
        
    <hr />
    <h2>The ImageMap Control</h2>
    <p>The ImageMap Control enables you to turn an image into a navigation menu by specifying hotspots on the image using coordinates.  Hotspots can be 
    rectangular, circular, or polygonal, and can post back to the page or link to another page.  In the example below, hotspots over Valley View and Mountain View
    Towers post back to the page (and do nothing), while the hotspot over the SER links to the college of engineering Web site.</p>
        <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="campus_view1.jpg">
        <asp:RectangleHotSpot Top="77" Bottom="95" Left="11" Right="66" AlternateText="Valley View Tower" PostBackValue="Richards Hall" />
        <asp:RectangleHotSpot Top="76" Bottom="95" Left="83" Right="130" AlternateText="Mountain View Tower" PostBackValue="Bullen Hall" />
        <asp:RectangleHotSpot Top="103" Bottom="149" Left="140" Right="269" AlternateText="Science Engineering Research" NavigateUrl="http://www.engineering.usu.edu/" />
        </asp:ImageMap>
        
    <hr />
    <h2>The Table Control</h2>
    <p>The Table control allows you to dynamically alter Table contents.  The following example demonstrates adding an additional row to a table.
    This table also declares a Caption attribute, a new feature of ASP.NET 2.0</p>
    <asp:Table ID="Table1" Runat="server" Caption = "<b>Table 1:</b>  Important Names" EnableViewState="true">
           <asp:TableRow ID="TableRow1" Runat="server" Font-Bold="True"
            ForeColor="Black" BackColor="Silver">
              <asp:TableHeaderCell>First Name</asp:TableHeaderCell>
              <asp:TableHeaderCell>Last Name</asp:TableHeaderCell>
           </asp:TableRow>
           <asp:TableRow>
              <asp:TableCell>Tim</asp:TableCell>
              <asp:TableCell>Berners-Lee</asp:TableCell>
           </asp:TableRow>
          <asp:TableRow>
              <asp:TableCell>Bill</asp:TableCell>
              <asp:TableCell>Gates</asp:TableCell>
           </asp:TableRow>
        </asp:Table>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Add a name to the table:"></asp:Label> <br />
        <asp:Label ID="Label4" runat="server" Text="First Name"></asp:Label><asp:TextBox
            ID="txtFirstName" runat="server"></asp:TextBox>
        &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Last Name"></asp:Label><asp:TextBox
            ID="txtLastName" runat="server"></asp:TextBox>&nbsp; &nbsp;&nbsp;<asp:Button ID="btnAddName" runat="server"
                Text="Add Name" OnClick="btnAddName_Click" />
        
    
    <hr />
    <asp:Panel ID="Panel1" runat="server" Height="100px" Width="700px" ScrollBars="auto">
               
    
    <h2>The Panel Control</h2>
    <p>The panel control is a container that encapsulates other controls.  It allows you to manipulate a set of controls as a single unit.  For instance, you can 
    set each element in a panel to bold by setting its Font-Bold attribute to "true".  A panel is often used to make certain controls appear or disappear based
    on an event.  Panels can be set to a specific size and can have vertical and horizontal scrollbars.</p>
    <p>This text is actually within a panel.  Click the button below to make it disappear/reappear</p>
    </asp:Panel> 
        <asp:Button ID="btnPanel" runat="server" Text="Make the panel invisible" OnClick="btnPanel_Click" />
    
    </div>
    </form>
</body>
</html>

