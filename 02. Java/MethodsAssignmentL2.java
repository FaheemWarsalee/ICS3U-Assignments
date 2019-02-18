/*
*Program:Method Assignment Level 2
*Programmer: Faheem Warsalee
*Course: ICS3U
*Date: April 19th 2018

*Brief Description: Lvl 2: asks the user for 2 integers. then determine the smallest and largest
                           and outputs the max and min. if the inputs are both 0, program ends
                           */

class MethodsAssignmentL2
{
 //Checks which user input is minimum, min is returned to displayValues to be output
 public static int min(int numA,int numB)
 {
   if (numA < numB)
   {
     return (numA);
   }
   else
   {
     return (numB);
   }
 }
 
 //checks which user input is maximum, max is returned to displayValues to be output
 public static int max(int numA,int numB)
 {
   if (numA > numB)
   {
     return (numA);
   }
   else
   {
     return (numB);
   } 
 }
 
 //checks and returns if the inputs are 0,0 so the program terminates
 public static boolean isFinished(int numA,int numB)
 {
   if (numA == 0 && numB == 0)
   {
     return true;
   }
   else
   {
     return false;
   }
 }
 
 //Once all the values are determined to be Max or Min, display results
 public static void displayValues(int numA, int numB)
 {
   System.out.print("User Input:" + numA + "," + numB);
   System.out.println(" Max value:" + max(numA, numB) + " Min value:" + min(numA, numB));//outputs and runs min() and max() method(
 }
 
 public static void main(String[] args)
 {
   //Variables 
   int userNumA, userNumB;
   
   do
   { 
     
     //Inputs
     System.out.println("Enter TWO integer values or 0,0 to terminate: ");
     userNumA = In.getInt();
     userNumB = In.getInt();
     
     //Checks using isFinished method if the program should be terminated
     if (isFinished(userNumA, userNumB))
     {
       System.out.println(" Program Terminated.");
     }
     else
     {
       displayValues(userNumA, userNumB);//if returned false for termination, do siplay values method
     }
     
   }
   while(!isFinished(userNumA,userNumB));//while the is finished procedure is false keep running the program
 }
  
}