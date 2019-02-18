import java.util.Random;

class Functions
{
  public static double largest (double num1, double num2, double num3)
  {
    double big;
    if (num1 > num2 && num1 > num3)
    {
      return (num1);
    }
    else if (num2 > num3)
    {
      return (num2);
    }
    else 
    {
      return (num3);
    }
   }
  
  public static void main(String[] args)
  {
    double num1, num2, num3;
    
    System.out.print("Enter num1: ");
    num1 = In.getDouble();
    
    System.out.print("Enter num2: ");
    num2 = In.getDouble();
    
    System.out.print("Enter num3: ");
    num3 = In.getDouble();
    
    System.out.println(largest(num1, num2, num3) + " Is the largest");
    
  }
  
}