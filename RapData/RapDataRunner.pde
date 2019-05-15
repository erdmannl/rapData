import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

public class Lyrics {
  
  Map<String, ArrayList<String>> lyricmap;

  public Lyrics() {
    lyricmap = new HashMap<String, ArrayList<String>>();
  }

  void lyricMap(String [] s) {
    
    for (int i =0; i<s.length-1; i++) {
      String c = s[i];
      String n = s[i+1];

      if (lyricmap.get(c)==null) {
        lyricmap.put(c, new ArrayList<String>());
      }

      lyricmap.get(c).add(n);
    }
    

    for(int i =1; i<s.length; i++){
      String c = s[i];
      String n = s[i-1];

      if(lyricmap.get(c)==null){
        lyricmap.put(c, new ArrayList<String>());
      }

      lyricmap.get(c).add(n);
    }

    for(int i =0; i<s.length-2; i++){
      String c = s[i];
      String n = s[i+2];

      if(lyricmap.get(c)==null){
        lyricmap.put(c, new ArrayList<String>());
      }

      lyricmap.get(c).add(n);
    }

    for(int i =2; i<s.length; i++){
      String c = s[i];
      String n = s[i-2];

      if(lyricmap.get(c)==null){
        lyricmap.put(c, new ArrayList<String>());
      }

      lyricmap.get(c).add(n);
    }
    
  }

  int getWordNum() {
     return lyricmap.keySet().size();
  }

  int getDegradingCount() {
    int num= 0;
    String output="";
    for (String s : lyricmap.keySet()) {
      if (s.equals("girl")||s.equals("bitch")||s.equals("chick")||s.equals("her")||s.equals("hoe")||s.equals("hoes")||s.equals("bitches")||s.equals("girls")||s.equals("ass")||s.equals("chicks")) {
        for (int i=0; i<lyricmap.get(s).size(); i++) {
          String s2 = lyricmap.get(s).get(i);
          output+=s2+" ";
          if(s2.equals("hit")||s2.equals("smash")||s2.equals("hittin'")||s2.equals("pullin'")||s2.equals("scream")||s2.equals("killed")||s2.equals("kill")||s2.equals("bad")||s2.equals("stupid")||s2.equals("fucking")||s2.equals("fuck")||s2.equals("pull")||s2.equals("give")||s2.equals("got")||s2.equals("take")||s2.equals("fuckin'")||s2.equals("beat")){
           num++;
          }
        }
      }
      
      //output+="\n";
    }
   // println(output);
    return num;
  }
  
  void printMap(){
    String output="";
    for(String s: lyricmap.keySet()){
      output+=s+" "+ lyricmap.get(s)+"\n";
    }
    println(output);
  }
}