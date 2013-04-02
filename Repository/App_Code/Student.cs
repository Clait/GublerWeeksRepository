using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Student
/// </summary>
public class Student
{
	public Student(int sid,string fn,string ln,decimal csh,DateTime usd,string mjr)
	{
        //uses the properties of the variables.
        StudentID = sid;
        FirstName = fn;
        LastName = ln;
        CurrentSemesterHours = csh;
        UniversityStartDate = usd;
        Major = mjr;
	}

    private int studentID;
    private string firstName;
    private string lastName;
    private decimal currentSemesterHours;
    private DateTime universityStartDate;
    private string major;


    public int StudentID
    {
        get { return studentID; }
        set { studentID = value; }
    }

    public string FirstName
    {
        get { return firstName; }
        set { firstName = value; }
    }
    
    public string LastName
    {
        get { return lastName; }
        set { lastName = value; }
    }

    public decimal CurrentSemesterHours
    {
        get { return currentSemesterHours; }
        set { currentSemesterHours = value; }
    }

    public DateTime UniversityStartDate
    {
        get { return universityStartDate; }
        set { universityStartDate = value; }
    }

    public string Major
    {
        get { return major; }
        set { major = value; }
    }

    public string FullName
    {
        get { return firstName + " " + lastName; }
    }

    public bool InStateEligible
    {
        get 
        {
            if (universityStartDate.AddYears(2) > DateTime.Today)
            {
                return false;
		    
            }
            else
	        {
                return true;
	        }
        }
    }

    public virtual decimal CalculateTuition()
    {
        decimal amount;
        if (InStateEligible)
	    {
		    amount = currentSemesterHours * 2000; //used the variable
	    }else
	    {
            amount = CurrentSemesterHours * 6000; //used the property
	    }
        
        return amount;
    }
}