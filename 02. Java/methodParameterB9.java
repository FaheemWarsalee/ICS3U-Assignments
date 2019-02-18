/* Name : Faheem Warsalee
 * Program : Method ParameterB9
 * Course : ICS3U
 * Date : Arpil 12th 2018
 * Brief Description : Many advanced calculators have a fraction feature that will simplify fractions for you.  You are to write a program that will accept for 
 * input a positive or negative integer as a numerator and a positive integer as a denominator, and output the fraction in simplest form. That is, the fraction 
 * cannot be reduced any further, and the numerator will be less than the denominator. You can assume that all input numerators and denominators will produce
 * valid fractions.  Remember the div and mod operators.
    Implement this by writing a procedure that takes in a numerator and denominator, and 
    returns an integer, a new reduced numerator and denominator (i.e., it can change the input parameters).  
    You may also use a combination of functions and procedures for other features in your program.
 */

class methodParameterB9
{ 
  //Method for Fractions
  public static void simpleFrac(int numer, int denom)
  {
    int wholeNum, fraction;
      int gcd = 0;
    
    wholeNum = numer / denom;
    fraction = numer % denom;
    
    if (wholeNum != 0 && fraction == 0)
    {
      System.out.println("Answer: " + wholeNum);
    }
    else if (wholeNum  == 0 && fraction != 0)
    {
      for (int i = 1; i <= fraction; i++)
      {
        if (fraction % i == 0 && denom % i == 0)
        {
          gcd = i;
        }
      }
      System.out.println("Answer: " +  fraction/gcd + "/" + denom/gcd);
    }
    else 
    {
      System.out.println("Answer: " + wholeNum + " "  + wholeNum + "/" + denom);
    }
  }
  
  //Main Method
  
   public static void main (String[] args)
  {
    int userNumer, userDenom;
    
    System.out.print("Enter an integer for Numerator: ");
    userNumer = In.getInt();
    
    do
    {
      System.out.print("Enter an POSITIVE integer for Denominator: ");
      userDenom = In.getInt();
    }
    while (userDenom < 1);
   
    simpleFrac(userNumer, userDenom);
    
  }
  
  
}