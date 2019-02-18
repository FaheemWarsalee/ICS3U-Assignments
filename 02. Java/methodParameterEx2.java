/*
 Program:Method Exercise w/ Parameters 2
Programmer: Faheem Warsalee
Course: ICS3U
Date:April 10th 2018

Brief Description: Write a procedure called writeMin(), which takes three integer parameters and outputs the lowest of the three values to the screen.
*/

class methodParameterEx2
{
  public static void writeMin(int num1, int num2, int num3)
  {
    if (num1 < num2 && num1 < num3)
    {
      System.out.println(num1 + " is the smallest");
    }
    else if (num2 < num3)
    {
      System.out.println(num2 + " is the smallest");
    }
    else 
    {
      System.out.println(num3 + " is the smallest");
    }
  }
  
  public static void main(String[] args)
  {
    int num1, num2, num3;
    
    System.out.print("Int 1: ");
    num1 = In.getInt();
    
    System.out.print("Int 2: ");
    num2 = In.getInt();
    
    System.out.print("Int 3: ");
    num3 = In.getInt();
    
    writeMin(num1, num2, num3);
  }
}