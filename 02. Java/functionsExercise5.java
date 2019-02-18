/* Name : Faheem Warsalee
 * Program : Functions exercise 5 
 * Course : ICS3U
 * Date : April 13th 2018
 * Brief Description : (a) Create an integer function called digit() that accepts a positive integer (N) and requests the kth digit (k).  The function should return the digit as an integer.
                       For example, digit(54321, 2) would return the second digit, which is the integer value '4'
                       (b) Create a boolean function (true/false) called allDigitsEven() that will accept a positive integer value and return 
                       true if each digit is even, and false if any digit is not even. (Hint: You will need to use string functions to accomplish this task).
                       (c) Use this function to write the program for Exercises - String Operations #6.
 */
class functionsExercise5
{
  public static int digit(int n, int k)
  {
    String digString = Integer.toString(n);
    int kDigit = Integer.parseInt(digString.substring(k-1,k));
    return kDigit;
  }
  
  public static void main( String[] args)
  {
    int num;
    do
    {
     System.out.print("Enter an Integer: ");
     num = In.getInt();
    }
    while (num < 1);
    
    System.out.print("Which digit to send back? ");
    int k = In.getInt();
    
    System.out.println(digit(num, k));
  }
}