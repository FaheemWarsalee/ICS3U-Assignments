/* Name : Faheem Warsalee
 * Program : functions Exercis ex3
 * Course : ICS3U
 * Date : April 13th 2018
 * Brief Description : 
 */
class functionsExercise3
{
  public static int factorial (int num)
  {
    int fact = num-1;
    for (int i = 1; i <= fact; i++)
    {
      num = num*i;
    }
    return (num);
  }
  
  public static void main(String[] args)
  {
    System.out.print("Enter an Integer: ");
    int userNum = In.getInt();
    
    System.out.println(factorial(userNum) + " is " + userNum + " Factorial.");
  }
}