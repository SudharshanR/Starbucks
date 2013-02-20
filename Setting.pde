public class Setting implements AppScreen{

    PImage img2 = loadImage("Setting.PNG");
    private AppScreen coffeeprofile;
    private AppScreen remDecaf;
    private AppScreen cardsMainScreen;
    
    public void display(){       
          // nameBar.display();
           //timeBar.display();
      image(img2,0,0,THE_WIDTH,THE_HEIGHT);
    }


    
    /* SUD START */
    // Method: setCoffeeProfile(AppScreen)
    // To switch the screen
    // Method: setMyCardMainScreen(AppScreen)
    // To switch the screen
    public void setMyCardMainScreen(AppScreen scr)
    {
        this.cardsMainScreen = scr;
    }
    /* SUD END */

    // Method: touch (int, int)
    // This method is to send mouse click coordinates only within defined specified area
    // for buttons only purposes
    public void touch(int x, int y) 
    {
	System.out.println("x = "+x+" y = "+y);
      if ((x>11 && x<76) && (y>680 && y<736))
      {
        appController.setScreen(cardsMainScreen);
      }

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
