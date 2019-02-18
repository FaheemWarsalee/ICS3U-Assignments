/*
*Program:Method Assignment Level 3
*Programmer: Faheem Warsalee
*Course: ICS3U
*Date: April 20th 2018

*Brief Description: Lvl 4++:Take the name of 2 players, get a computer player, 
*                         each player choses a number between 1-10. compare the values of each player to
*                         the respective score card. (Min mid Max).
*                         Player wins when they achieve the Min, 3x mid 5x and max 3x.
                           */

class L4PPTEST
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
  
  public static void winnerStat(String p1, String p2, int[] scores,int[] rounds, boolean[] winConds)
  {
   
    if(winConds[0]) 
    {
      System.out.println(p1 + " Wins.");
    }
    else if(winConds[1])
    {
      System.out.println(p2 + " Wins.");
    }
    else if(winConds[2])
    {
      System.out.println("Computer Wins.");
    }
  }
  
  //CHECKS IF THERE IS A WINNER  
  public static boolean winnerIsFalse(int[] scoreCounter, int[] rounds)
  {
    if((scoreCounter[0] ==rounds[0] && scoreCounter[1] == rounds[1] && scoreCounter[2] == rounds[0] )|| 
       (scoreCounter[3] == rounds[0] && scoreCounter[4] == rounds[1] && scoreCounter[5] ==rounds[0]) || 
       (scoreCounter[6] == rounds[0] && scoreCounter[7] ==rounds[1] &&scoreCounter[8] == rounds[0]) )
    {
      return true;
    }
    else
    {
      return false;
    }
  }
  
  //Parsing Integers
  public static int parsingInt(String userNum)
  {
    try
    {
      int num = Integer.parseInt(userNum);
      return num;
    }
    catch (NumberFormatException e) 
    {
      return 0;
    }
  }
  
  //Checks player 1's input if invalid; retruns true if invalid and false if valid 
  public static boolean isInputInvalidA(int numA)
  {
      if (numA < 1 || numA >10)
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
      if (numB < 1 || numB >10)
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
    String userNumA, userNumB; 
    int userNumC;
    int round = 0;
    String userName1, userName2;
    
    int rounds[] = new int[2];
    int scoreCounts[] = new int[9];
    boolean winConds[] = new boolean[3];
    
    rounds[0] = 3;
    rounds[1] = 5;
    
    
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
      userNumA = In.getString();
      
      parsingInt(userNumA);
      }
      while(isInputInvalidA(parsingInt(userNumA)));
      
      do
      {
      System.out.print(userName2 + " enter an Integer:");
      userNumB = In.getString();
      
      parsingInt(userNumB);
      }
      while(isInputInvalidB(parsingInt(userNumB)));
      
      userNumC = (int)(10*Math.random())+1;
      
      round = round +1;
      System.out.println("\nRound: "+round);
      
      choiceNums(parsingInt(userNumA), parsingInt(userNumB), userNumC, userName1, userName2);
      
      //SCORE COUNT FOR PLAYER 1 WHEN NOT TIE
      if(parsingInt(userNumA) != parsingInt(userNumB) && parsingInt(userNumA) !=userNumC)
      {
        if (parsingInt(userNumA) == min(parsingInt(userNumA),parsingInt(userNumB),userNumC) && scoreCounts[0]<rounds[0])
        {
          scoreCounts[0]++;
        }
        else if (parsingInt(userNumA) == mid(parsingInt(userNumA),parsingInt(userNumB),userNumC)&& scoreCounts[1]<rounds[1])
        {
          scoreCounts[1]++;
        }
        else if (parsingInt(userNumA) == max(parsingInt(userNumA),parsingInt(userNumB),userNumC)&& scoreCounts[2]<rounds[0])
        {
          scoreCounts[2]++;
        }
      }
      
      //SCORE COUNT FOR PLAYER 2 WHEN NOT TIE
      if(parsingInt(userNumB) != userNumC && parsingInt(userNumB) !=parsingInt(userNumA))
      {
        if (parsingInt(userNumB) == min(parsingInt(userNumA),parsingInt(userNumB),userNumC) && scoreCounts[3]<rounds[0])
        {
          scoreCounts[3]++;
        }
        else if (parsingInt(userNumB) == mid(parsingInt(userNumA),parsingInt(userNumB),userNumC) && scoreCounts[4]<rounds[1])
        {
          scoreCounts[4]++;
        }
        else if (parsingInt(userNumB) == max(parsingInt(userNumA),parsingInt(userNumB),userNumC) && scoreCounts[5]<rounds[0])
        {
          scoreCounts[5]++;
        }
      }
      
      //SCORE COUNT FOR COMPUTER WHEN NOT TIE
      if(userNumC != parsingInt(userNumB) && userNumC !=parsingInt(userNumA))
      {
        if (userNumC == min(parsingInt(userNumA),parsingInt(userNumB),userNumC) && scoreCounts[6]<rounds[0])
        {
          scoreCounts[6]++;
        }
        else if (userNumC == mid(parsingInt(userNumA),parsingInt(userNumB),userNumC) && scoreCounts[7]<rounds[1])
        {
          scoreCounts[7]++;
        }
        else if (userNumC == max(parsingInt(userNumA),parsingInt(userNumB),userNumC) && scoreCounts[8]<rounds[0])
        {
          scoreCounts[8]++;
        }
      }
      
    winConds[0] = scoreCounts[0] ==rounds[0] && scoreCounts[1] == rounds[1] && scoreCounts[2] == rounds[0];
    
    winConds[1] = scoreCounts[3] ==rounds[0] && scoreCounts[4] == rounds[1] && scoreCounts[5] == rounds[0];
    
    winConds[2] = scoreCounts[6] ==rounds[0] && scoreCounts[7] == rounds[1] && scoreCounts[8] == rounds[0];
    
    if((winConds[0] && winConds[1])||(winConds[1] && winConds[2])||(winConds[0] && winConds[2])||(winConds[0] && winConds[1] && winConds[2]))
    {
      rounds[0] = rounds[0] + 3;
      rounds[1] = rounds[1] + 5;
      
      System.out.println("\nTie Game! Players complete 1 more scorecard.");
    }
      
      scoreBoard(parsingInt(userNumA), parsingInt(userNumB), userNumC, userName1, userName2, scoreCounts);
    }
    while(!winnerIsFalse(scoreCounts, rounds));
    winnerStat(userName1, userName2, scoreCounts, rounds, winConds);
  }
  
}