/* Name : Faheem Warsalee
 * Program : functions Exercis ex2
 * Course : ICS3U
 * Date : April 13th 2018
 * Brief Description : (a) Write a function min2() that will accept two integer values and returns the smaller of the two values.
                                        (b) Write a function max2() that will accept two integer values and returns the larger of the two values.
                                        (c) Write a function min3() and max3() which work for three integer values.
                                        (d) Use method overloading to modify your methods to be named max() and min(), with different code to handle two or three input integer parameters.
 */
class functionsExercise2
{
  public static int min (int num1, int num2, int num3)
  {
    if (num1 <= num2 && num1 <= num3)
    {
      return (num1);
    }
    else if (num2 <= num3)
    {
      return (num2);
    }
    else
    {
      return num3;
    }
  }
  
    public static int max (int num1, int num2, int num3)
  {
    if (num1 >= num2 && num1 >= num3)
    {
      return (num1);
    }
    else if (num2 >= num3)
    {
      return (num2);
    }
    else
    {
      return num3;
    }
  }
  
  public static void main (String[] args)
  {
    int userNum1, userNum2, userNum3;
    
    System.out.print("Enter integer 1: ");
    userNum1 = In.getInt();
    
    System.out.print("Enter integer 2: ");
    userNum2 = In.getInt();
    
    System.out.print("Enter integer 3: ");
    userNum3 = In.getInt();
    
    System.out.println(min(userNum1, userNum2, userNum3) + " Is the smallest.");
    System.out.println(max(userNum1, userNum2, userNum3) + " Is the largest.");
  }
}