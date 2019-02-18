/*
 Program:Method Exercise w/ Parameters 1
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date:April 10th 2018
 
 Brief Description: Write a procedure called writeArea(), which takes two real (decimal) parameters, length and width.  The procedure should calculate the area and output the result to the screen.
 (a) Extend this procedure so the area is rounded to the nearest integer and then written to the screen.
 */

class methodParameterEx3
{
  public static void writeArea(double length, double width)
  {
    double area = Math.round(length*width*1) / 1;
    System.out.println("Area: " +  area);
  }
  public static void main(String[] args)
  {
    writeArea(3.56, 3.56);
  }
}