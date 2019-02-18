/*
Program:Do loop Exercise3 sff
Programmer: Faheem Warsaleewl
Course: ICS3U
Date: April 5th 2018
Brief Description:loops untiluser puts a positive Interger and prints sum*/

class CondLoopsExercise3
{
  public static void main (String[] args)
  {
    int num, lowDigit;
    int sum = 0;
    
    do
    {
      System.out.print("Enter a positive Integer: ");
      num = In.getInt();
      
      lowDigit = num % 10;
      num = num / 10; 
      sum = lowDigit + num;
    }
    while (num <= 0);
    
    System.out.println(sum + " Is the sum of the digits");
    
  }
}