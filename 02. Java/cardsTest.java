import java.util.ArrayList; //To make use of arrayLists
import java.util.Collections; //To make use of shuffling

  
  public class cardsTest {
    public static void main(String[] args) {
      ArrayList<String> pkmns = new ArrayList<String>();
      pkmns.add("Pikachu");//1
      pkmns.add("Charizard");//2
      pkmns.add("Bulbasaur");//3
      pkmns.add("Wartortle");//4
      pkmns.add("Gyrados");//5
      pkmns.add("Gengar");//6
      pkmns.add("Medicham");//7
      pkmns.add("Lapras");//8
      pkmns.add("Suicune");//9
      pkmns.add("Entei");//10
      pkmns.add("Raikou");//11
      pkmns.add("Mewtwo");//12
      pkmns.add("Nidoqueen");//13
      pkmns.add("Rhydon");//14
      pkmns.add("Dragonite");//15
      
      //Try to shuffle colors
      System.out.println(pkmns);
      Collections.sort(pkmns); //Shuffles colors
      System.out.println(pkmns);
      
    }
  }
  