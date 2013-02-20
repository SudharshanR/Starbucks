/* 
 Starbucks Mobile App Simulator. 
 By Michael Ly
*/
public class MyCardsOptionsDisplay 
{
   private Bar timeBar = new Bar(0, 0, THE_WIDTH, TIMEBARHEIGHT, "timebar-dim.png");
   private Bar nameBar = new Bar(0, TIMEBARHEIGHT, THE_WIDTH, NAMEBARHEIGHT, "mycardsbar-dim.png"); 
   
   private PImage[] optionImages = 
   { 
     loadImage("optionbutton1.png"),
     loadImage("optionbutton2.png"),
     loadImage("optionbutton3.png"),
     loadImage("optionbutton4.png"),
     loadImage("optionbutton1dim.png"),
     loadImage("optionbutton2dim.png"),
     loadImage("optionbutton3dim.png"),
     loadImage("optionbutton4dim.png"),
     loadImage("optionstop.png"),
     loadImage("optionsbg.png")
   };   
   private float img_width = .875;
   private float img_height = .10; 
   private RoundedButton[] ob = new RoundedButton[4];
 
   MyCardsOptionsDisplay() 
   {   
      // Import button images
      for (int i=0; i<4; i++) 
      {
        this.ob[i] = new RoundedButton( int(THE_WIDTH*.065), int(THE_HEIGHT*.498 + (i*THE_HEIGHT*.12)), int(THE_WIDTH*img_width), int(THE_HEIGHT*img_height), optionImages[i], optionImages[i+4]);
      }
   } // end construtor  
  
   public void display() 
   {   
      timeBar.display();
      nameBar.display();
      image(optionImages[8], 0, int(TIMEBARHEIGHT+NAMEBARHEIGHT), THE_WIDTH, int(THE_HEIGHT*.31867));
      image(optionImages[9], 0, int(THE_HEIGHT*.45067), THE_WIDTH, int(THE_HEIGHT*.5493));
      update();
      refresh();
   }
  
   public void update() 
   {
      for (int i=0; i<4; i++) 
      {
        ob[i].update();
      }
   }

   public void refresh() 
   {
      for (int i=0; i<4; i++) 
      {
        ob[i].display();
      }
   }    
}
