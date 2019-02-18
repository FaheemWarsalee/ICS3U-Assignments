/*
Program:Do loop Exercise1 
Programmer: Faheem Warsaleew
Course: ICS3U
Date: April 5th 2018
Brief Description: Asks user if want to continue using "y" and "n"*/

class CondLoopsExercise1
{
  public static void main(String[] args)
  {
    char answer;
    do
    {
      System.out.println("Exit using y or n");
      answer = In.getChar();
    }
    while (answer != 'y' && answer != 'n');
  }
}