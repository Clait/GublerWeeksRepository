using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FinalExam_12_State : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                Session["CheckBoxList" + i] = CheckBoxList1.Items[i];
                //Response.Write(Session["CheckBoxList" + i] + "<br/>");
            }
        }
    }
}

        //int count = CheckBoxList1.Items.Count;
        //List<string> values = new List<string>();
        //for (int i = 0; i < count; i++)
        //{
        //    if (CheckBoxList1.Items[i].Selected)
        //    {
        //        values.Add(CheckBoxList1.Items[i].Value);
        //    }
        //}
        //Session["CheckBoxList"] = values;


        //Session.Add("CheckBox",CheckBoxList1.Items);


        //for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        //{
        //    Session.Add("CheckBox"+i+1, CheckBoxList1.Items[i].Selected);
        //}

        //foreach (ListItem cb in CheckBoxList1.Items)
        //{
        //    int i = cb.
        //    Session.Add("CheckBox", CheckBoxList1.Items);
        //}