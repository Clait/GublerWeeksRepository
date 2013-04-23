using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class FinalExam_12_State_page2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (Session["CheckBoxList" + i]!=null)
                {   //retrieve session cbl.selected state
                    CheckBoxList1.Items[i].Selected=true;
                    Response.Write(Session["CheckBoxList" + i] + "<br/>");
                }

                Session["CheckBoxList" + i]=null;  // remove the session states
            }
        }
    }
}

////////////////////////////////////////////////////////////////////////////////////////////
//string[] selected = Session["CheckBoxList"].ToString().Split(',');
//int i = 0;
//foreach (string s in selected)
//{
//    ListItem item = CheckBoxList1.Items[i];
//    if (item != null)
//        if (s=="1")
//        {
//            item.Selected = true;                          
//        }
//    i++;
//}

//for (int i = 0; i < CheckBoxList1.Items.Count; i++)
//{
//    int counter = i+1;
//    string cbx = "CheckBox" + counter.ToString();
//    bool li = (bool)Session[cbx];
//    CheckBoxList1.Items[i].Selected = li;
//}

//for (int i = 0; i < CheckBoxList1.Items.Count; i++)
//{
//    Session.Add("CheckBox" + i + 1, CheckBoxList1.Items[i]);
//}
//foreach (ListItem cb in CheckBoxList1.Items)
//{
//    cb.Selected = cbx.SelectedItem.Selected;
//}