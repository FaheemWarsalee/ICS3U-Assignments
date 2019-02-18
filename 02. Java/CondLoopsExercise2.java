/*
Program:Do loop Exercise2 
Programmer: Faheem Warsaleew
Course: ICS3U
Date: April 5th 2018
Brief Description: Asks user for a letter and if not a letter loops, letter can be upper or lower case*/

class CondLoopsExercise2
{
 public static void main(String[] args)
 {
   //Varaivles
  char letter;
  
  //IPO
  do
  {
    System.out.print("enter a letter of the alphabet : ");
    letter = In.getChar();
  }
  while (!('A' <= letter && 'Z' <= letter || 'a' <= letter && 'z' <= letter));
 }
}
//End of program