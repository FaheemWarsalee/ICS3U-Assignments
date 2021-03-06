/*
*Program:Method Assignment Level 3
*Programmer: Faheem Warsalee
*Course: ICS3U
*Date: April 20th 2018

*Brief Description: Lvl 4:Take the name of 2 players, get a computer player, 
*                         each player choses a number between 1-10. compare the values of each player to
*                         the respective score card. (Min mid Max).
*                         Player wins when they achieve the Min, 3x mid 5x and max 3x.
                           */

class MethodsAssignmentL4P
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
  
  public static void winnerStat(String p1, String p2, int[] scores)
  {
    if(scores[0] ==3 && scores[1] == 5 && scores[2] == 3) 
    {
      System.out.println(p1 + " Wins.");
    }
    else if(scores[3] ==3 && scores[4] == 5 && scores[5] == 3)
    {
      System.out.println(p2 + " Wins.");
    }
    else if(scores[6] ==3 && scores[7] == 5 && scores[8] == 3)
    {
      System.out.println("Computer Wins.");
    }
  }
  
  //CHECKS IF THERE IS A WINNER  
  public static boolean winnerIsFalse(int[] scoreCounter)
  {
    if((scoreCounter[0] ==3 && scoreCounter[1] == 5 && scoreCounter[2] == 3 )|| (scoreCounter[3] == 3 && scoreCounter[4] == 5 && scoreCounter[5] ==3) || (scoreCounter[6] == 3 && scoreCounter[7] ==5 &&scoreCounter[8] == 3) )
    {
      return true;
    }
    else
    {
      return false;
    }
  }
  
  //Checks player 1's input if invalid; retruns true if invalid and false if valid 
  public static boolean isInputInvalidA(int numA)
  {
    if (numA < 0 || numA >10)
    {
      System.out.println("Enter an INTEGER between 1-10");
      return true;
    }
    else
    {
      return false;
    }
  }
  
  //Checks player 2's number if invalid; if invalid return true, if valid return false.
  public static boolean isInputInvalidB(int numB)
  {
    if (numB < 0 || numB >10)
    {
      System.out.println("Enter an INTEGER between 1-10");
      return true;
    }
    else
    {
      return false;
    }
  }
  
  //Player 1's position (lowest, middle or highest number)
  public static String p1Out(int numA, int numB, int numC)
  {
    if (numA==numB || numA==numC)
    {
      return "Tie";
    }
    else if (numA == max(numA,numB,numC))
    {
      return "High";
    }
    else if (numA == mid(numA,numB,numC))
    {
      return "Medium";
    }
    else
    {
      return "Low";
    }
  }
  
  //Player 2's position (lowest, middle or highest number)
  public static String p2Out(int numA, int numB, int numC)
  {
    if (numB==numA || numB==numC)
    {
      return "Tie";
    }
    else if (numB == max(numA,numB,numC))
    {
      return "High";
    }
    else if (numB == mid(numA,numB,numC))
    {
      return "Medium";
    }
    else
    {
      return "Low";
    }
  }
  
  //Computer's position (lowest, middle or highest number)
  public static String p3Out(int numA, int numB, int numC)
  {
    if (numC==numB || numC==numA)
    {
      return "Tie";
    }
    else if (numC == max(numA,numB,numC))
    {
      return "High";
    }
    else if (numC == mid(numA,numB,numC))
    {
      return "Medium";
    }
    else
    {
      return "Low";
    }
  }
  
  
  //Procedure that displays all the choices, by player 1, player 2 and the computer.
  public static void choiceNums(int numA,int numB,int numC,String player1,String player2)
  {
    System.out.println("\n" + player1 + "'s choice : " + numA + "\t" + p1Out(numA,numB,numC));
    System.out.println(player2 + "'s choice : " + numB + "\t" + p2Out(numA, numB, numC));
    System.out.println("Computer's choice : " + numC + "\t" + p3Out(numA, numB, numC)); 
  }
  
  //DISPLAYS SCOREBOARD
  public static void scoreBoard(int numA, int numB, int numC, String p1, String p2, int[] scoreCounts)
  {
    System.out.println("\n======SCOREBOARD======");
    System.out.println("\t\tLowest" + "\t\tMiddle" + "\t\tHighest");
    System.out.println(p1 + "\t\t" + scoreCounts[0] + "\t\t" + scoreCounts[1] + "\t\t" + scoreCounts[2] );
    System.out.println(p2 + "\t\t" + scoreCounts[3] + "\t\t" + scoreCounts[4] + "\t\t" + scoreCounts[5] );
    System.out.println("Comp" + "\t\t" + scoreCounts[6] + "\t\t" + scoreCounts[7] + "\t\t" + scoreCounts[8] );
    System.out.println("");
    
  }
  
  //=======MAIN METHOD========
  public static void main(String[] args)
  {
    //Variables 
    int userNumA, userNumB, userNumC;
    int round = 0;
    String userName1, userName2;
    
    int scoreCounts[] = new int[9];
    
    
    System.out.print("Player 1's Name:");
    userName1 = In.getString();
    
    System.out.print("Player 2's Name:");
    userName2 = In.getString();
    
    do
    {
      //Inputs
      do
      {
        System.out.print(userName1 + " enter an Integer:");
        userNumA = (int)(10*Math.random())+1;
      }
      while (isInputInvalidA(userNumA));
      
      do
      {
        System.out.print(userName2 + " enter an Integer:");
        userNumB = (int)(10*Math.random())+1;
      }
      while (isInputInvalidB(userNumB));
      
      userNumC = (int)(10*Math.random())+1;
      
      //Checks using isFinished method if the program should be terminated
      if (isFinished(userNumA, userNumB))
      {
        System.out.println(" Program Terminated.");
      }
      else
      {
        round = round +1;
        
        choiceNums(userNumA, userNumB, userNumC, userName1, userName2);
        
        //SCORE COUNT FOR PLAYER 1 WHEN NOT TIE
          if(userNumA != userNumB && userNumA !=userNumC)
          {
            if (userNumA == min(userNumA,userNumB,userNumC) && scoreCounts[0]<3)
            {
              scoreCounts[0]++;
            }
            else if (userNumA == mid(userNumA,userNumB,userNumC)&& scoreCounts[1]<5)
            {
              scoreCounts[1]++;
            }
            else if (userNumA == max(userNumA,userNumB,userNumC)&& scoreCounts[2]<3)
            {
              scoreCounts[2]++;
            }
          }
          
          //SCORE COUNT FOR PLAYER 2 WHEN NOT TIE
          if(userNumB != userNumC && userNumB !=userNumA)
          {
            if (userNumB == min(userNumA,userNumB,userNumC) && scoreCounts[3]<3)
            {
              scoreCounts[3]++;
            }
            else if (userNumB == mid(userNumA,userNumB,userNumC) && scoreCounts[4]<5)
            {
              scoreCounts[4]++;
            }
            else if (userNumB == max(userNumA,userNumB,userNumC) && scoreCounts[5]<3)
            {
              scoreCounts[5]++;
            }
          }
          
          //SCORE COUNT FOR COMPUTER WHEN NOT TIE
          if(userNumC != userNumB && userNumC !=userNumA)
          {
            if (userNumC == min(userNumA,userNumB,userNumC) && scoreCounts[6]<3)
            {
              scoreCounts[6]++;
            }
            else if (userNumC == mid(userNumA,userNumB,userNumC) && scoreCounts[7]<5)
            {
              scoreCounts[7]++;
            }
            else if (userNumC == max(userNumA,userNumB,userNumC) && scoreCounts[8]<3)
            {
              scoreCounts[8]++;
            }
          }
          
          
          scoreBoard(userNumA, userNumB, userNumC, userName1, userName2, scoreCounts);
        }
    }
        while(!winnerIsFalse(scoreCounts));
        winnerStat(userName1, userName2, scoreCounts);
      
  }
  
}