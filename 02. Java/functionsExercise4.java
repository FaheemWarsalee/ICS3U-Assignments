/* Name : Faheem Warsalee
 * Program : functions Exercis ex4
 * Course : ICS3U
 * Date : April 13th 2018
 * Brief Description : (a) Create a boolean function isEven() that will accept an integer value and return true if it is an even number (i.e., evenly divisible by two), and otherwise it will return a false. 
 *                                     Write a program that will let you test your program using a loop.
 (b) Use a random number instead of user input, and let the user specify how many numbers to run.  At the end of the program, report the total number of evens and odds.
 */

import java.util.Random;

class functionsExercise4
{
  public static boolean isEven()
  {
    int randGen;
      randGen = 1 + (int)(Math.random() * ((100 - 1) + 1));
      System.out.print(randGen + " is the number,");
      
      if (randGen % 2 == 0)
      {
        return (true);
      }
      else
      {
        return (false);
      }
    
  }
  
  public static void main(String[] args)
  {
    System.out.print("how many times run: ");
    int userNum = In.getInt();
    
    for (int i = 0; i <= userNum; i++)
    {
      if (isEven())
      {
      System.out.println("it is Even");
      }
      else
      {
        System.out.println("it is Odd");
      }
    }
  }
}