/*********
Class: MyCardsPayScreen
Created by: David Tedjasatyawira
This class is for the Pay screen when the user interfaces the card with barcode reader.
*/
public class refresher2 implements AppScreen,SubjectInterface{
    // instance variables
    private AppScreen cardsMainScreen;    
    private AppScreen ref3;    
    private AppScreen ref;
    private Bar timeBar = new Bar(0, 0, THE_WIDTH, TIMEBARHEIGHT, "timebar.png");
    private Bar nameBar = new Bar(0, TIMEBARHEIGHT, THE_WIDTH, NAMEBARHEIGHT, "mycardsbar.png");        
    
    // Define all the images for the buttons.
    PImage hotdrink = loadImage("refresher2.PNG");
    private ArrayList<ObserverInterface> observers;
	Drinks drink;
    
    public refresher2(){
        observers = new ArrayList<ObserverInterface>() ;
		drink = new Drinks();
    }
	
    
            public void setrefresher3(AppScreen scr)
    {
        this.ref3 = scr;
       // menuCommand = new MenuCommand(this);
    }  
	 public void setCardsMainScreen (AppScreen scr)
    {
      this.cardsMainScreen = scr;
    }
	public void setRef (AppScreen scr)
    {
      this.ref = scr;
    }

    // Instantiate all needed button objects for the screen 
   // private RoundedButton payButton = new RoundedButton(int(THE_WIDTH*.752), int(THE_HEIGHT*.4426), int(THE_WIDTH*.18), int(THE_HEIGHT*.12), pay[0], pay[1]);
   // private RoundedButton scanButton = new RoundedButton(int(THE_WIDTH*.417), int(THE_HEIGHT*.585), int(THE_WIDTH*.176), int(THE_HEIGHT*.16093), pay[2], pay[3]);
   // private MenuCommand menuCommand;
    PFont helv42 = loadFont("HelveticaWorld-Bold-42.vlw");
    
    // Method: setCardsMainScreen(AppScreen)
    // To switch to back to Card Main Screen
    
    // Constructor - leave it as default constructor
   

     // Method: touch (int, int)
    // This method is to send mouse click coordinates only within defined specified area
    // for buttons only purposes
    public void touch(int x, int y) 
    
    {
       if ((mouseX>24 && mouseX<104) && (mouseY>43 && mouseY<82))
	   {
	    appController.setScreen(ref);
	   } 
        if (x > int(15) && x < int(484) && y > int(602) && y < int(677))
        {
		notifyObservers();
          appController.setScreen(ref3);
        }      
          if (x > int(1) && x < int(103) && y > int(674) && y < int(747))
      {
        appController.setScreen(cardsMainScreen);
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
      image(hotdrink, 0,0, THE_WIDTH, THE_HEIGHT);
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

