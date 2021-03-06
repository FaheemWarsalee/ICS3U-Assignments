/*
Program: Array Ex4
Programmer: Faheem Warsalee
Course: ICS3U
Date: May 8th 2018

Brief Description: Write a program that fills an array of 100 elements with random integers between 1 and 100 
(each number should only be represented once).  Output the arrays in a meaningful way (i.e., identify each 
element #), and so that it fits on the screen.  Focus on making your output algorithm as efficient as possible.

(a)  Create a second array of the same size.  Copy the elements of the first array into the second array, but in 
reverse order (i.e., element#100 from the 2nd array should match element#1 from the 1st array).Output both 
arrays.  Again, the entire output should fit on a single screen.*/

class ArrayEx4
{
  public static void main(String[] args)
  {
    int[] hunnet = new int[100];
    int[] hunnet2 = new int[100];
    
    for (int i = 0; i < hunnet.length ; i++)
    {
      hunnet[i] = (int)(100*Math.random())+1;
    }
    
    for (int i = hunnet.length; i > 0; i--)
    {
    hunnet2[i] = hunnet[i];
    }
    
    System.out.println("Element\t\t\t\tRandomNum\t\t\t\tRandomNumBwd");
    
    for (int i = 0; i <hunnet.length ; i++)
    {
      System.out.println("\t" + (i+1) + "\t\t\t" + hunnet[i] + "\t\t\t\t\t" + hunnet2[i]);
    }
  }
}