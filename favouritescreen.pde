/*********
Class: MyCardsPayScreen
Created by: David Tedjasatyawira
This class is for the Pay screen when the user interfaces the card with barcode reader.
*/
public class favouritescreen implements AppScreen,ObserverInterface
{  
    // instance variables
    private AppScreen cardsMainScreen;
    private AppScreen myFav;
    private AppScreen favscr2;
	PImage coffeeImage;
	PImage drinksImage;
	PImage foodImage;
	Food food;
	Drinks drink;
	Coffee coffee;
    
    private Bar timeBar = new Bar(0, 0, THE_WIDTH, TIMEBARHEIGHT, "timebar.png");
    private Bar nameBar = new Bar(0, TIMEBARHEIGHT, THE_WIDTH, NAMEBARHEIGHT, "mycardsbar.png");        
    
    // Define all the images for the buttons.
    PImage hotdrink = loadImage("favouritescreen.PNG");
	
    
    PFont helv42 = loadFont("HelveticaWorld-Bold-42.vlw");
    
    // Method: setCardsMainScreen(AppScreen)
    // To switch to back to Card Main Screen
      
    // Constructor - leave it as default constructor
   favouritescreen(){
	food = new Food();
	drink = new Drinks();
	coffee = new Coffee();
   }
   
    public void setMyFavScreen(AppScreen scr)
    {
        this.myFav  = scr;
    }
   
    public void setMyCardMainScreen(AppScreen scr)
    {
        this.cardsMainScreen  = scr;
    }
    
    public void setcardsMainScreen1(AppScreen scr)
    {
        this.cardsMainScreen = scr;
       // menuCommand = new MenuCommand(this);
    }
    
    public void setfavouritescreen2(AppScreen scr)
    {
        this.favscr2 = scr;
       // menuCommand = new MenuCommand(this);
    }  

     // Method: touch (int, int)
    // This method is to send mouse click coordinates only within defined specified area
    // for buttons only purposes
    public void touch(int x, int y)   
    {
	System.out.println("X :::::"+x+" y:::::"+y);
        if (x > int(10) && x < int(251) && y > int(187) && y < int(251))
        {
          appController.setScreen(myFav);
        }      
  
        if (x > int(251) && x < int(484) && y > int(187) && y < int(251))
        {
          appController.setScreen(favscr2);
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
      	image(hotdrink, 0,0, THE_WIDTH, THE_HEIGHT);
		coffeeImage = loadImage("coffee"+coffee.getCount()+".png");
		image(coffeeImage,14,255,470,68);      
		drinksImage = loadImage("drinks"+drink.getCount()+".png");
		image(drinksImage,14,186,470,68);      
		foodImage = loadImage("food"+food.getCount()+".png");
		image(foodImage,14,324,470,68);      
    }

    // Nothing in particular for the methods below, override methods from AppScreen
    public void topLeftCmd() 
    {        
    }

    // Nothing in particular for the methods below, override methods from AppScreen
    public void topRightCmd() 
    {        
    }
	
    public void update(Creator c) 
    {
		c.addToFavourites();
	}	
}
