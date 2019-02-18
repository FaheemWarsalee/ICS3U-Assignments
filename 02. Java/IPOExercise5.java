/* Name : Faheem Warsalee
 * Program : IPO EXERCISE 5 
 * Course : ICS3U
 * Date : March 28th 2018
 * Brief Description :Have user interger input 2 ints from 1 and 9 and find the sum, difference
 *                    , product and quotient, power.
 */

class IPOExercise5
{
  public static void main(String[] args)
  {
    //Declaring Variables
    double userNum1, userNum2;
    double sum, diff, prod, quot, pow;
    
    //Inputs
    System.out.print("Enter an interger from 1-9: ");
    userNum1 = In.getInt();
    
    System.out.print("Enter a 2nd interger from 1-9: ");
    userNum2 = In.getInt();
    
    //Processing
    sum = userNum1 + userNum2;
    diff = userNum1 - userNum2;
    prod = userNum1 * userNum2;
    quot = userNum1 / userNum2;
    pow = Math.pow(userNum1, userNum2); 
    
    System.out.println("Sum = " + sum + "\nDifference = " + diff + "\nProduct = " + prod + "\nQuotient = " + quot + "Power = " + pow );
  }
}