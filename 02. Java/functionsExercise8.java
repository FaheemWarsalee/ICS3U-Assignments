/* Name : Faheem Warsalee
 * Program : Functions exercise 7 
 * Course : ICS3U
 * Date : April 13th 2018
 * Brief Description :The absolute value is a mathematical function for determining the size, or magnitude, of a value.  The answer is always a positive number.
                                        For example, the absolute value of 5 is 5.  The absolute value of -11.2 is 11.2.
                                        (a) Write a function called absolute() that accepts a real input and gives a real output.  Write a simple program to test your function.  
                                        If your programming language already has an absolute value function, do not use it.  The goal here to is write your own version of the function.
 **/
class functionsExercise8
{
  public static double absolute(int num)
  {
    if (num > 0)
    {
      return num;
    }
    else
    {
      int newNum;
        
      newNum = num* (-1);
      return newNum;
    }
  }
  
  public static void main(String[] args)
  {
    int userNum;
    
    System.out.print("Enter an number: ");
    userNum = In.getInt();
    
    System.out.println(absolute(userNum) + " is the absolute value of " + userNum);
  }
}