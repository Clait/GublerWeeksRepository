using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Midterm_Files_StudentList : System.Web.UI.Page
{
    DateTime dt = new DateTime(2009, 08, 21);
    protected void Page_Load(object sender, EventArgs e)
    {
        Student student1 = new Student(1, "Bob", "Long", 13M, dt, "MIS");
        Student student2 = new Student(2, "John", "Doe", 12, dt.AddDays(-1), "CS");
        Student student3 = new Student(3, "Craig", "Doe", 12, dt.AddDays(-15), "CS");
        Student student4 = new Student(4, "Sam", "Smith", 12, dt.AddDays(-100), "CS");
        Student student5 = new Student(5, "Jane", "Johnson", 12, dt.AddDays(150), "CS");
        Student student6 = new Student(6, "Jill", "James", 12, dt.AddDays(365), "CS");
    }
}