/*************
Class: MyCardsMainScreen
Created by: David Tedjasatyawira
This is the card main screen after the user logins. This class contains all the information the screen needs.
*/
public class MyCardsMainScreen implements AppScreen
{  
    // instance variables
    private AppScreen cardsPayScreen;  
    private AppScreen cardsOptionsScreen;  
     private AppScreen drinkMainScreen1;  
     private AppScreen favouritescreen;
     private AppScreen c1;
     private AppScreen rew1;
      private AppScreen gift1;
     private AppScreen mapp1;
    private AppScreen coffeeprofile;
    private AppScreen homeSettingScreen;
    
    //HETAL START
  private AppScreen foodScreen;
     private AppScreen myFavScreen;
   //HETAL END
   
  private AppScreen myFav;
    private Bar timeBar = new Bar(0, 0, THE_WIDTH, TIMEBARHEIGHT, "timebar.png");
    private Bar nameBar = new Bar(0, TIMEBARHEIGHT, THE_WIDTH, NAMEBARHEIGHT, "mycardsbar.png");
    
    // Define all the images for buttons needed for the main screen
    PImage[] card = 
    {
	loadImage("IMG_0261.PNG"),
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
        this.cardsOptionsScreen = scr ;
    }
    public void setfavouritescreen(AppScreen scr)
    {
        this.favouritescreen = scr;
    }
    // Method: setCardsPayScreen(AppScreen)
    // To switch the screen
    public void setCardsPayScreen(AppScreen scr)
    {
        this.cardsPayScreen = scr;
    } public void setdrinkMainScreen1(AppScreen scr)
    {
        this.drinkMainScreen1 = scr;
    }
    public void setcard1(AppScreen scr)
    {
        this.c1 = scr;
    }
    // Constructor
    public MyCardsMainScreen()
    {
      menuCommand = new MenuCommand(this);
    }
 public void setrewardd1(AppScreen scr)
    {
        this.rew1 = scr;
    }
 
 public void setgift(AppScreen scr)
    {
        this.gift1 = scr;
    }
 
 
 public void setmapp(AppScreen scr)
    {
        this.mapp1 = scr;
    }
    
    /* SUD START */
    // Method: setCoffeeProfile(AppScreen)
    // To switch the screen
    public void setCoffeeProfileScreen(AppScreen scr)
    {
        this.coffeeprofile = scr;
    }
    public void setSettingScreen(AppScreen scr)
    {
        this.homeSettingScreen = scr;
    }
    /* SUD END */
   
   
   //HETAL START
  public void setMyFavScreen(AppScreen scr)
    {
      this.myFavScreen = scr;
    }
    public void setFoodScreen(AppScreen scr)
    {
      this.foodScreen = scr;
    }
  //HETAL END
  
  
   // Method: touch (int, int)
    // This method is to send mouse click coordinates only within defined specified area
    // for buttons only purposes
    
    public void touch(int x, int y) 
    
    {
       System.out.println("Mouse x is----------->"+x);
       System.out.println("Mouse y is----------->"+y);
      if (x > int(229) && x < int(269) && y > int(319) && y < int(386))
      {
        appController.setScreen(drinkMainScreen1);
      }
     if (x > int(198) && x < int(307) && y > int(179) && y < int(266))
      {
	  
        System.out.println("entered wanteeeeeeeeeeeeeeeeeed beforeeeeeeeeeeeeeee"+y);
       appController.setScreen(favouritescreen);
        System.out.println("afterrrrrrrrrrrrrrr"+y);
      }
      
      if (x > int(101) && x < int(194) && y > int(675) && y < int(737))
      {
        // System.out.println("beforeeeeeeeeeeeeeee"+y);
       appController.setScreen(c1);
        //System.out.println("afterrrrrrrrrrrrrrr"+y);
      }
      
       if (x > int(211) && x < int(300) && y > int(678) && y < int(736))
      {
        // System.out.println("beforeeeeeeeeeeeeeee"+y);
       appController.setScreen(rew1);
        //System.out.println("afterrrrrrrrrrrrrrr"+y);
      }
      
      
      
       if (x > int(306) && x < int(399) && y > int(674) && y < int(738))
      {
        // System.out.println("beforeeeeeeeeeeeeeee"+y);
       appController.setScreen(gift1);
        //System.out.println("afterrrrrrrrrrrrrrr"+y);
      }
      
       if (x > int(404) && x < int(495) && y > int(674) && y < int(738))
      {
        // System.out.println("beforeeeeeeeeeeeeeee"+y);
       appController.setScreen(mapp1);
        //System.out.println("afterrrrrrrrrrrrrrr"+y);
      }
      /* SUD START */
      if ((mouseX>364 && mouseX<442) && (mouseY>179 && mouseY<262))
      {
        appController.setScreen(coffeeprofile);
      }
      else if ((mouseX>207 && mouseX<296) && (mouseY>184 && mouseY<262))
      {
        appController.setScreen(myFav);
      }
      /* SUD END */
      
      //HETAL START
      if (x > int(37) && x < int(158) && y > int(311) && y < int(424))
      {
         //System.out.println("beforeeeeeeeeeeeeeee"+y);
        appController.setScreen(foodScreen);
        //System.out.println("afterrrrrrrrrrrrrrr"+y);
      }
      if (x > int(180) && x < int(330) && y > int(158) && y < int(281))
      {
        // System.out.println("beforeeeeeeeeeeeeeee"+y);
        appController.setScreen(myFavScreen);
       // System.out.println("afterrrrrrrrrrrrrrr"+y);
      }
	  else if (x > int(355) && x < int(443) && y > int(329) && y < int(418))
      {
        appController.setScreen(homeSettingScreen);
      }
      //HETAL END
    }

    // Draw the entire screen
    public void display()
    {       
    //   nameBar.display();
     //  timeBar.display();
             
      // image(card[0], 0, TIMEBARHEIGHT+NAMEBARHEIGHT, THE_WIDTH, THE_HEIGHT*.76667);
     image(card[0], 0,0, THE_WIDTH, THE_HEIGHT);
       // image(card[0], 0,TIMEBARHEIGHT+NAMEBARHEIGHT, THE_WIDTH, THE_HEIGHT*.76667);
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
