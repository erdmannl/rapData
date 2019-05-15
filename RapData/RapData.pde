import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import java.util.ArrayList;
import static java.lang.System.*;

//two questions. 1) how do I make the program stay when mousePressed()
//               2) why am I getting an out of bounds error for something in the constructor?

Lyrics l1 = new Lyrics();
lyricParticle [] lp1 = new lyricParticle[27];
lyricParticle [] lp11 = new lyricParticle[1450];
Lyrics l2 = new Lyrics();
lyricParticle [] lp2 = new lyricParticle[18];
lyricParticle [] lp22 = new lyricParticle[1420];
Lyrics l3= new Lyrics();
lyricParticle [] lp3 = new lyricParticle[31];
lyricParticle [] lp33 = new lyricParticle[1186];
Lyrics l4 = new Lyrics();
lyricParticle [] lp4 = new lyricParticle[22];
lyricParticle [] lp44 = new lyricParticle[1395];
Lyrics l5 = new Lyrics();
lyricParticle [] lp5 = new lyricParticle[16];
lyricParticle [] lp55 = new lyricParticle[1459];
Lyrics l6 = new Lyrics();
lyricParticle [] lp6 = new lyricParticle[12];
lyricParticle [] lp66 = new lyricParticle[1385];


void setup() {
  size(755, 500);

  String [] s1 = loadStrings("2013rap");
  String allText2013=join(s1, " ");
  String [] cleanedText2013 = allText2013.replace("[^a-zA-Z\\. ]", "").toLowerCase().split("\\s+");
  l1.lyricMap(cleanedText2013);
  println(l1.getDegradingCount());
  println(l1.getWordNum());
  for (int i = 0; i<27; i++) {
    //println(i);
    lp1[i] = new lyricParticle(true);
  }
  for (int i = 0; i<1450; i++) {
    lp11[i] = new lyricParticle(false);
  }

  String [] s2 = loadStrings("2014rap");
  String allText2014=join(s2, " ");
  String [] cleanedText2014 = allText2014.replace("[^a-zA-Z\\. ]", "").toLowerCase().split("\\s+");
  l2.lyricMap(cleanedText2014);
  println(l2.getDegradingCount());
  println(l2.getWordNum());
  for (int i = 0; i<18; i++) {
    lp2[i] = new lyricParticle(true);
  }
  for (int i = 0; i<1420; i++) {
    lp22[i] = new lyricParticle(false);
  }

  String [] s3 = loadStrings("2015rap");
  String allText2015=join(s3, " ");
  String [] cleanedText2015 = allText2015.replace("[^a-zA-Z\\. ]", "").toLowerCase().split("\\s+");
  l3.lyricMap(cleanedText2015);
  println(l3.getDegradingCount());
  println(l3.getWordNum());
  for (int i = 0; i<31; i++) {
    lp3[i] = new lyricParticle(true);
  }
  for (int i = 0; i<1186; i++) {
    lp33[i] = new lyricParticle(false);
  }

  String [] s4 = loadStrings("2016rap");
  String allText2016=join(s4, " ");
  String [] cleanedText2016 = allText2016.replace("[^a-zA-Z\\. ]", "").toLowerCase().split("\\s+");
  l4.lyricMap(cleanedText2016);
  println(l4.getDegradingCount());
  println(l4.getWordNum());
  for (int i = 0; i<22; i++) {
    lp4[i] = new lyricParticle(true);
  }
  for (int i = 0; i<1395; i++) {
    lp44[i] = new lyricParticle(false);
  }

  String [] s5 = loadStrings("2017rap");
  String allText2017=join(s5, " ");
  String [] cleanedText2017 = allText2017.replace("[^a-zA-Z\\. ]", "").toLowerCase().split("\\s+");
  l5.lyricMap(cleanedText2017);
  println(l5.getDegradingCount());
  println(l5.getWordNum());
  for (int i = 0; i<16; i++) {
    lp5[i] = new lyricParticle(true);
  }
  for (int i = 0; i<1459; i++) {
    lp55[i] = new lyricParticle(false);
  }

  String [] s6 = loadStrings("2018rap");
  String allText2018=join(s6, " ");
  String [] cleanedText2018 = allText2018.replace("[^a-zA-Z\\. ]", "").toLowerCase().split("\\s+");
  l6.lyricMap(cleanedText2018);
  println(l6.getDegradingCount());
  println(l6.getWordNum());
  for (int i = 0; i<12; i++) {
    lp6[i] = new lyricParticle(true);
  }
  for (int i = 0; i<1385; i++) {
    lp66[i] = new lyricParticle(false);
  }
}


void draw() {
  background(255);

  //yearbuttons
  fill(0);
  rect(10, 10, 110, 50);
  fill(255);
  text("2013", 50, 40);
  if (mousePressed==true&&mouseX>10&&mouseX<110&&mouseY>10&&mouseY<60) {
    fill(0);
    //text("here", 200, 200);

    for (int i = 0; i<lp1.length; i++) {
      fill(0);
   // text("here", 200, 200);
      lp1[i].move();
      lp1[i].show();
    }
    for (int i = 0; i<lp11.length; i++) {
      lp11[i].move();
      lp11[i].show();
    }
  }



  fill(0);
  rect(135, 10, 110, 50);
  fill(255);
  text("2014", 175, 40);
  if (mousePressed==true&&mouseX>135&&mouseX<245&&mouseY>10&&mouseY<60) {
    fill(0);
   // text("here", 200, 200);
    for (int i = 0; i<lp2.length; i++) {
      lp2[i].move();
      lp2[i].show();
    }
    for (int i = 0; i<lp22.length; i++) {
      lp22[i].move();
      lp22[i].show();
    }
  }

  fill(0);
  rect(260, 10, 110, 50);
  fill(255);
  text("2015", 300, 40);
  if (mousePressed==true&&mouseX>260&&mouseX<370&&mouseY>10&&mouseY<60) {
    fill(0);
   // text("here", 200, 200);
    for (int i = 0; i<lp3.length; i++) {
      lp3[i].move();
      lp3[i].show();
    }
    for (int i = 0; i<lp33.length; i++) {
      lp33[i].move();
      lp33[i].show();
    }
  }

  fill(0);
  rect(385, 10, 110, 50);
  fill(255);
  text("2016", 425, 40);
  if (mousePressed==true&&mouseX>385&&mouseX<495&&mouseY>10&&mouseY<60) {
    fill(0);
   // text("here", 200, 200);
    for (int i = 0; i<lp4.length; i++) {
      lp4[i].move();
      lp4[i].show();
    }
    for (int i = 0; i<lp44.length; i++) {
      lp44[i].move();
      lp44[i].show();
    }
  }

  fill(0);
  rect(510, 10, 110, 50);
  fill(255);
  text("2017", 550, 40);
  if (mousePressed==true&&mouseX>510&&mouseX<620&&mouseY>10&&mouseY<60) {
    fill(0);
   // text("here", 200, 200);
    for (int i = 0; i<lp5.length; i++) {
      lp5[i].move();
      lp5[i].show();
    }
    for (int i = 0; i<lp55.length; i++) {
      lp55[i].move();
      lp55[i].show();
    }
  }

  fill(0);
  rect(635, 10, 110, 50);
  fill(255);
  text("2018", 675, 40);
  if (mousePressed==true&&mouseX>635&&mouseX<745&&mouseY>10&&mouseY<60) {
    fill(0);
    //text("here", 200, 200);
    for (int i = 0; i<lp6.length; i++) {
      lp6[i].move();
      lp6[i].show();
    }
    for (int i = 0; i<lp66.length; i++) {
      lp66[i].move();
      lp66[i].show();
    }
  }
}

//void mousePressed(){
//  if(10,10,110,50);


//}
