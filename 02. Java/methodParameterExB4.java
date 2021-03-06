/*
 Program:Method Exercise w/ Parameters B4
Programmer: Faheem Warsalee
Course: ICS3U
Date:April 10th 2018

Brief Description: Write a procedure printDate() that will have inputs of month, day, and year as integer values.  The procedure will output the name of the month, and the numbers for the day and year.  
                                   Extend: Check for valid input, and output an error message if any values are out of range

You should review the "if-elsif" conditional statements for this program.  You might also look into the "case" statement, but we will cover this command at a later date. 
*/

class methodParameterExB4
{
  public static void printDate(int month, int day, int year)
  {
    String mnthS[] = {"Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"};
    
    System.out.println(mnthS[month - 1] + " -" + day + "-" + year);
  }
  
  public static void main (String[] args)
  {
   int  userMnth, userDay, userYr;
    
    System.out.print("Enter Month (1-12): ");
    userMnth = In.getInt();
   
    System.out.print("Enter day (1-30): ");
    userDay = In.getInt();
    
    System.out.print("Enter Year: ");
    userYr = In.getInt();
    
    printDate(userMnth, userDay, userYr);
  }
}