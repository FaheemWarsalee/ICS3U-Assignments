/*
 Program:Array Exercise 1
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: May 3rd 2018
 
 Brief Description: Write a program that uses an array to store 10 student grades.  Ask the user to enter each grade.  
 When the 10th grade is entered, print out the list of grades
 
 (a) Output the list of marks forwards and backwards. (Turing Solution)
 (b) Determine the average of the grades by traversing the array using a for-loop. (Turing Solution)
 (c) Add a second array (also 10 elements) of strings.  Have the user enter their course as well as their mark.  Print out courses and marks by traversing the array and output the average at the end of the list.
 (d) Modify the output of the array to use a procedure instead (call it "printArray()" or something similar).*/

class ArrayEx1
{
  public static void main(String[] args)
  {
    double sum = 0;
    double marks[] = new double[10];
    String courses[] = new String[10];
    
    for (int i=0; i< marks.length ; i ++)
    {
      System.out.print("enter course name: "); 
      courses[i] = In.getString();
      
      System.out.print("Enter course mark " + (i+1));
      marks[i] = In.getDouble();
      
      
      sum = sum+marks[i];
    }
    
    double avg = sum/marks.length; 
    
    printArray(marks, courses, avg);
  }
  
  
  public static void printArray(double[] marks, String[] courses, double avg)
  {
    for (int i = 0; i< marks.length; i++)
    {
      System.out.println("Course: "+courses[i] + " Mark: " + marks[i]);
    }
    
    System.out.println("");
    
    for (int i = marks.length-1; i >= 0; i--)
    {
      System.out.println("Course: "+courses[i] + " Mark: " + marks[i]);
    }
    
    System.out.println("\n" + avg + "% is the Average.");
  }
  
}
//END OF PROGRAM