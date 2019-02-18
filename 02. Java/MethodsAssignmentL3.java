/*
*Program:Method Assignment Level 3
*Programmer: Faheem Warsalee
*Course: ICS3U
*Date: April 19th 2018

*Brief Description: Lvl 3: Complete the same task as level 2 but using a min, mid, 
*                          and max methods. 
                           */

class MethodsAssignmentL3
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
 
 //Method min() overloaded with 3rd integer
 public static int min(int numA,int numB, int numC)
 {
   if (numA < numB && numA < numC)
   {
     return (numA);
   }
   else if (numB < numC)
   {
     return (numB);
   }
   else
   {
     return (numC);
   }
 }
 
 //Method that determines mid using min and max. Retrun mid to displayValues method.
 public static int mid(int numA,int numB, int numC)
 {
   if (numC > min(numA, numB) && numC < max(numA, numB))
   {
     return (numC);
   }
   else if (min(numA,numB) > numC)
   {
     return (min(numA, numB));
   }
   else
   {
     return (max(numA, numB));
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
 
 //Method overloading for method max()
  public static int max(int numA,int numB, int numC)
 {
   if (numA > numB && numA > numC)
   {
     return (numA);
   }
   else if (numB > numC)
   {
     return (numB);
   }
   else
   {
     return (numC);
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
 
 //Overloaded Method for isFinished()
  public static boolean isFinished(int numA,int numB,int numC)
 {
   if (numA == 0 && numB == 0 && numC == 0)
   {
     return true;
   }
   else
   {
     return false;
   }
 }
 
 //Once all the values are determined to be Max or Min, display results
 public static void displayValues(int numA, int numB, int numC)
 {
   System.out.print("User Input:" + numA + " " + numB + " " + numC);
   System.out.println(" Max value:" + max(numA, numB, numC) + " Mid Value:" + mid(numA, numB, numC) + " Min value:" + min(numA, numB, numC));//outputs and runs min() and max() method(
 }
 
 public static void main(String[] args)
 {
   //Variables 
   int userNumA, userNumB, userNumC;
   
   do
   { 
     
     //Inputs
     System.out.println("Enter THREE integer values or 0,0,0 to terminate: ");
     userNumA = In.getInt();
     userNumB = In.getInt();
     userNumC = In.getInt();
     
     //Checks using isFinished method if the program should be terminated
     if (isFinished(userNumA, userNumB, userNumC))
     {
       System.out.println(" Program Terminated.");
     }
     else
     {
       displayValues(userNumA, userNumB, userNumC);//if returned false for termination, do siplay values method
     }
     
   }
   while(!isFinished(userNumA,userNumB, userNumC));//while the is finished procedure is false keep running the program
 }
  
}