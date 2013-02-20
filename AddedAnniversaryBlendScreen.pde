/**** 
TITLE: Added Anniversary Blend Screen
Work by: Venkataraman
Use : The customer enters the Coffee Form and selects Anniversary Blend and adds it to myCoffees.
***/
public class AddedAnniversaryBlendScreen implements AppScreen
{
    
    // instance variables
    private AppScreen addedanniversaryscreen;  
    private AppScreen cardsMainScreen;
    private AppScreen coffeeform;

  
   // private Bar timeBar = new Bar(0, 0, THE_WIDTH, TIMEBARHEIGHT, "timebar.png");
//    private Bar nameBar = new Bar(0, TIMEBARHEIGHT, THE_WIDTH, NAMEBARHEIGHT, "mycardsbar.png");
    
    // Define all the images for buttons needed for the main screen
    PImage[] card = 
    {
	loadImage("AnniversaryBlend2.PNG"),
     // loadImage("cardbutton.png"),
     // loadImage("cardbutton2.png"),
     // loadImage("balancebox.png"),
     // loadImage("cardbackground.png")
    };
    
    // instantiate instance member objects for buttons and menu buttons.
  //  private RoundedButton cardButton = new RoundedButton(int(THE_WIDTH*.7559), int(THE_HEIGHT*.4426), int(THE_WIDTH*.18), int(THE_HEIGHT*.12), card[0], card[1]);
  //  private ImageButton balanceBox = new ImageButton(int(THE_WIDTH*.173), int(THE_HEIGHT*.58), int(THE_WIDTH*.654), int(THE_HEIGHT*.1626), card[2]);
    private MenuCommand menuCommand;
    PFont helv42 = loadFont("HelveticaWorld-Bold-42.vlw");
    
    // Method: setOptionsScreen(AppScreen)
    // To switch to option screen
    public void setOptionsScreen(AppScreen scr )
    {
   //     this.cardsOptionsScreen = scr ;
    }
    
    // Method: setCardsPayScreen(AppScreen)
    // To switch the screen
    public void setCardsPayScreen(AppScreen scr)
    {
   //     this.cardsPayScreen = scr;
    } public void setdrinkMainScreen1(AppScreen scr)
    {
   //     this.drinkMainScreen1 = scr;
    }
    public void setMyCardMainScreen(AppScreen scr)
    {
        this.cardsMainScreen = scr;
    }
    public void setAnniversaryBlendScreen(AppScreen scr)
    {
       // this.anniversaryBlendScreen = scr;
    }
    public void setCoffeeFormScreen(AppScreen scr)
    {
        this.coffeeform = scr;
    }
    // Constructor
    public void AddedAnniversaryScreen()
    {
      menuCommand = new MenuCommand(this);
    }

    // Method: touch (int, int)
    // This method is to send mouse click coordinates only within defined specified area
    // for buttons only purposes
    
    public void touch(int x, int y) 
    
    {
       System.out.println("Mouse x is----------->"+x);
       System.out.println("Mouse y is----------->"+y);
      if (x > int(344) && x < int(398) && y > int(144) && y < int(227))
      {
         System.out.println("beforeeeeeeeeeeeeeee"+y);
         System.out.println("I am here in CoffeeForm");
     //  appController.setScreen(CoffeeFormScreen);
        System.out.println("afterrrrrrrrrrrrrrr"+y);
      }
      else if ((mouseX>24 && mouseX<104) && (mouseY>43 && mouseY<82))
      {
        appController.setScreen(coffeeform);
      }
	  else if ((x>11 && x<76) && (y>680 && y<736))
      {
        appController.setScreen(cardsMainScreen);
      }
      else if (x > int(THE_WIDTH*.173) && x < int(THE_WIDTH*.827) && y > int(THE_HEIGHT *.58) && y < int(THE_HEIGHT *.7426))
      { 
      //  appController.setScreen(cardsOptionsScreen);
      }
      else if (y > int(THE_HEIGHT *.897))
      {
        menuCommand.touch(x, y);
      }      
    }

    // Draw the entire screen
    public void display()
    {       
    //   nameBar.display();
     //  timeBar.display();
             
      // image(card[0], 0, TIMEBARHEIGHT+NAMEBARHEIGHT, THE_WIDTH, THE_HEIGHT*.76667);
      image(card[0], 0,0, THE_WIDTH, THE_HEIGHT);
       
     //  cardButton.update();
   //    cardButton.display();
  //    balanceBox.update();
     //  balanceBox.display();
       
       // Display the balance
     /*  fill(255); 
       textFont(helv42, THE_WIDTH*.12);
       textAlign(CENTER);
       String balance = "$" + appController.getCurrentCard().getBalance();
       text(balance, THE_WIDTH*.5, THE_HEIGHT*.665);
       
       //Display the time       
       int hours = hour();
       String timeLabel;
       if (hours > 12)
       {
         hours = hours % 12;
         timeLabel = "PM";
       }
       else 
       {
         timeLabel = "AM";
       }
       
       // Use DecimalFormat object help to define 2 decimal digits for time
       DecimalFormat formatter = new DecimalFormat("00");
       fill(255);
       textFont(helv42, THE_WIDTH*.05);  //textFont(PFont, size)
       String time = "as of TODAY at " + hours + ":" + formatter.format(minute()) + " " + timeLabel;
       text(time, THE_WIDTH*.5, THE_HEIGHT*.71);  //text(String, x, y)
       textAlign(LEFT);
*/
       // Display menu command bar
      // menuCommand.display();
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
