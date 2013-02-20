/*********
Class: MyCardsPayScreen
Created by: David Tedjasatyawira
This class is for the Pay screen when the user interfaces the card with barcode reader.
*/
public class appleBranMuffinScreenRem implements AppScreen
{  
    // instance variables
    private AppScreen bakeryScreen;    
     private AppScreen appleBranMuffinScreen;
    private AppScreen appleBranMuffinScreenRem; 
    private AppScreen cardsMainScreen;
     //private AppScreen appleFritterScreen;
     //private AppScreen bistroScreen;
    private Bar timeBar = new Bar(0, 0, THE_WIDTH, TIMEBARHEIGHT, "timebar.png");
    private Bar nameBar = new Bar(0, TIMEBARHEIGHT, THE_WIDTH, NAMEBARHEIGHT, "mycardsbar.png");        
    
    // Define all the images for the buttons.
    PImage[] abmr = 
    {
      loadImage("applebranmuffinscreen_remove.PNG")
     // loadImage("applebranmuffinscreen_remove.PNG");
     //loadImage("paybutton.png"),
    // loadImage("paybutton2.png"),
     // loadImage("cup.png"),
     // loadImage("cup2.png"),
     // loadImage("paycard.png")
    };
    
    // Instantiate all needed button objects for the screen 
   // private RoundedButton payButton = new RoundedButton(int(THE_WIDTH*.752), int(THE_HEIGHT*.4426), int(THE_WIDTH*.18), int(THE_HEIGHT*.12), pay[0], pay[1]);
   // private RoundedButton scanButton = new RoundedButton(int(THE_WIDTH*.417), int(THE_HEIGHT*.585), int(THE_WIDTH*.176), int(THE_HEIGHT*.16093), pay[2], pay[3]);
   // private MenuCommand menuCommand;
    PFont helv42 = loadFont("HelveticaWorld-Bold-42.vlw");
    
    // Method: setCardsMainScreen(AppScreen)
    // To switch to back to Card Main Screen
   
    public void setBakeryScreen (AppScreen scr)
{
  this.bakeryScreen = scr;
}
    public void setMyCardMainScreen(AppScreen scr)
    {
        this.cardsMainScreen = scr;
    }
    // Constructor - leave it as default constructor
   

     // Method: touch (int, int)
    // This method is to send mouse click coordinates only within defined specified area
    // for buttons only purposes
    public void touch(int x, int y) 
    
    {
       System.out.println("Inside touch of Apple Bran Muffin Screen");
       System.out.println("Mouse x is----------->"+x);
       System.out.println("Mouse y is----------->"+y);
        if (x > int(7) && x < int(103) && y > int(42) && y < int(87))
        {
          appController.setScreen(bakeryScreen);
        }        
	  else if ((x>11 && x<76) && (y>680 && y<736))
      {
        appController.setScreen(cardsMainScreen);
      }  
        if (x > int(14) && x < int(485) && y > int(106) && y < int(177))
        {
          //appController.setScreen(appleBranMuffinScreenRem);
        } 
        if (x > int(THE_WIDTH*.418) && x < int(THE_WIDTH*.594) && y > int(THE_HEIGHT * .5853) && y < int(THE_HEIGHT * .74667))
        {
          // Deduct the balance for $1.50, everytime the button press
          if (float(appController.getCurrentCard().getBalance()) >= 1.50)
          {
            appController.getCurrentCard().pay(1.50f);
          }
        }
           
        if (y > int(THE_HEIGHT * .897))
        {
         //menuCommand.touch(x, y);
        }
    }

    // Draw the Pay Screen
    public void display()
    {     
      //System.out.println("in display function of drink");
      image(abmr[0], 0,0, THE_WIDTH, THE_HEIGHT);
      /*
       String cardId = appController.getCurrentCard().getCardId();
       String formattedId = cardId.substring(0, 4) + "   " + cardId.substring(4, 8) + "   " + cardId.substring(8, 12) + "   " + cardId.substring(12, 16);
      
       nameBar.display();
       timeBar.display();       
            
       image(pay[4], THE_WIDTH*.094, THE_HEIGHT*.1733, THE_WIDTH*.812, THE_HEIGHT*.336);
       
       scanButton.update();
       scanButton.display();
       payButton.update();
       payButton.display(); 
       
       // Display Menu Command at the bottom of the screen
       menuCommand.display();
              
       // Display Scan Now
       fill(255);
       textFont(helv42);
       textSize(THE_WIDTH*.06);
       text("Scan Now",THE_WIDTH*.36,THE_HEIGHT*.8);
       fill(150);
       textSize(THE_WIDTH*.04);
       text(formattedId,THE_WIDTH*.345,THE_HEIGHT*.25);*/
    }

    // Nothing in particular for the methods below, override methods from AppScreen
    public void topLeftCmd() 
    {        
    }

    // Nothing in particular for the methods below, override methods from AppScreen
    public void topRightCmd() 
    {        
    }
}

