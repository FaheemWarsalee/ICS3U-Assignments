import java.util.ArrayList; //To make use of arrayLists
import java.util.Collections; //To make use of shuffling

public class ArrayListExample {
  public static void main(String[ ] args) 
  {
    
    ArrayList<String> pkmn = new ArrayList<String>();
    //ArrayList<String> colors = newArrayList<String>(10);
    
    String[] attacks = new String[2];
    
    pkmn.add("Pikachu");
    pkmn.add("Lotad");
    pkmn.add("Charizard");
    pkmn.add("Blastoise");
    
    //Try to shuffle colors
    System.out.println(pkmn);
    Collections.sort(pkmn); //Shuffles colors
    System.out.println(pkmn);
    
  }
}