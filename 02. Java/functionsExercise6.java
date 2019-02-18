/* Name : Faheem Warsalee
 * Program : Functions exercise 5 
 * Course : ICS3U
 * Date : April 13th 2018
 * Brief Description : (a) Create a boolean function called isPrime() that will accept a positive integer value and determine if it is a prime number. Recall: a prime number is a number that is divisible only by one and itself.  
 *                                     Write a program that will allow you to test your function.
                                        (b) Write a program to allow the user to specify a number, and display all of the prime numbers between 1 and the user's number.  This program will use your isPrime() function developed in part (a).
 *
 */
class functionsExercise6
{
  public static boolean isPrime(int num)
  {
    int k =num%2;
    
    if (k==0)
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
    int userNum;
    do
    {
    System.out.print("Enter an Integer: ");
   userNum = In.getInt();
    }
    while(userNum <= 0);
    
    for (int i = 1; i<= userNum; i++)
    {
      if (isPrime(i))
      {
        System.out.println(i + " Number is not prime");
      }
      else
      {
        System.out.println(i + " Number is prime");
      }
    }
  }
}