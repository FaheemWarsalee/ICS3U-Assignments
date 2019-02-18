/*
 Program: Couted Loop Exercise 1
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: April 4ht 2018

 Brief Description: aks the user for their name and repeats it*/

class CountedLoopsExercise1
{
 public static void main (String[] args)
   
 {
  String userName;
  int xLoops;
  
  //Inputs
  System.out.print("enter your name: ");
  userName = In.getString();
  
  System.out.print("Repetittions; ");
  xLoops = In.getInt();
  
  //Processing
  for (int count = 1; count <= xLoops; count++)
  {
    System.out.println(userName);
  }
    
    
 }
}