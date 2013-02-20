/*************
Class: MyCardsMainScreen
Created by: David Tedjasatyawira
This is the card main screen after the user logins. This class contains all the information the screen needs.
*/
public class Tea1 implements AppScreen,SubjectInterface{
    // instance variables
    private AppScreen cardsPayScreen;  
    private AppScreen cardsOptionsScreen;  
     private AppScreen cardsMainScreen;
	 private AppScreen brewedTea;
     private AppScreen drinkMainScreen1;  
   private AppScreen tea1Rm; 
    private Bar timeBar = new Bar(0, 0, THE_WIDTH, TIMEBARHEIGHT, "timebar.png");
    private Bar nameBar = new Bar(0, TIMEBARHEIGHT, THE_WIDTH, NAMEBARHEIGHT, "mycardsbar.png");
	Drinks drink;
    
    // Define all the images for buttons needed for the main screen
    PImage card = loadImage("IMG_0418.PNG");
    private ArrayList<ObserverInterface> observers;
    
    public Tea1(){
        observers = new ArrayList<ObserverInterface>() ;
		drink = new Drinks();
    }
    
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
    public void setcardsMainScreen1(AppScreen scr)
    {
        this.cardsMainScreen = scr;
       // menuCommand = new MenuCommand(this);
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
 public void setTea1RmScreen(AppScreen scr)
    {
        this.tea1Rm = scr;
    }
	public void setBrewedTea(AppScreen scr)
    {
        this.brewedTea = scr;
    }
    
    // Constructor
    public void Tea1()
    {
      menuCommand = new MenuCommand(this);
    }

    // Method: touch (int, int)
    // This method is to send mouse click coordinates only within defined specified area
    // for buttons only purposes
    
    public void touch(int x, int y) 
    
    {
       System.out.println("Mouse x in tea touch----------->"+x);
       System.out.println("Mouse y is----------->"+y);
	    if ((mouseX>24 && mouseX<104) && (mouseY>43 && mouseY<82))
	   {
	    appController.setScreen(brewedTea);
	   }
      if (x > int(2) && x < int(495) && y > int(433) && y < int(533))
      {
		notifyObservers();
		appController.setScreen(tea1Rm);
      }if (x > int(1) && x < int(103) && y > int(674) && y < int(747))
      {
        appController.setScreen(cardsMainScreen);
      } 
      
    }

    // Draw the entire screen
    public void display()
    {       
    //   nameBar.display();
     //  timeBar.display();
             
      // image(card, 0, TIMEBARHEIGHT+NAMEBARHEIGHT, THE_WIDTH, THE_HEIGHT*.76667);
      image(card, 0,0, THE_WIDTH, THE_HEIGHT);
       
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

    public void notifyObservers() {
      for (int i=0; i<observers.size(); i++) {
        ObserverInterface observer = observers.get(i) ;
        observer.update(drink) ;
      }
    }
    
    public void registerObserver( ObserverInterface obj ) {
      observers.add( obj );
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
