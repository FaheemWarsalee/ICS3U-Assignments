/* Name : Faheem Warsalee
 * Program : Functions exercise 7 
 * Course : ICS3U
 * Date : April 13th 2018
 * Brief Description : In a leap year, February has 29 days.  A leap year can be determined as follows:
                                        - a year that is divisible by 4 (e.g., 1988, 1992, 1996 are all leap years)
                                        - centennial years (divisible by 100) do not follow this rule (e.g., 1800, 1900 are NOT leap years)
                                        - except centennial years divisible by 400, which are leap years (e.g., 2000 is a leap year)
                                        (a) Create a boolean function that will determine if a given year is a leap year by returning true or false for a given year.
 *
 */
class functionsExercise7
{
  public static boolean isLeap(int year)
  {
    if (year % 400 == 0)
    {
      return true;
    }
    else if (year % 100 == 0)
    {
      return false;
    }
    else if (year % 4 == 0)
    {
      return true;
    }
    else
    {
      return false;
    }
  }
  
  public static void main(String[] args)
  {
    for (int i = 0; i <= 10; i++)
    {
      int userYear;//Declare Variables
      
      System.out.print("Enter a year: ");//Input
      userYear = In.getInt();
      
      if (isLeap(userYear))
      {
        System.out.println(userYear + " is a leap year");
      }
      else
      {
        System.out.println(userYear + " is NOT a leap year");
      }
    }
  }
}