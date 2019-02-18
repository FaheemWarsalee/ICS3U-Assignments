/*
 Program:Method Exercise w/ Parameters 4
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date:April 10th 2018
 
 Brief Description: Use the printBar() procedure (see exercise B.1) to write a procedure printTriangle(), which prints a triangle centered on the page.  
                                    The number of rows in the triangle, and the character used to print the triangle, are the parameters of the procedure.
 */

class methodParameterB1
{
  public static void printBar(char symb,int row)
  {
      for (int count = 1; count <= row; count++)
    {
      System.out.print(symb);
    }
  }
  
  public static void main(String[] args)
  {
    
    printBar('@', 10);
  }
  
}

