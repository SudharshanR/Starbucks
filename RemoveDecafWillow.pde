public class RemoveDecafWillow implements AppScreen{

    PImage img2 = loadImage("removeDecafWillow.PNG");
    private AppScreen coffeeprofile;
    private AppScreen cardsMainScreen;
    
    public void display(){       
          // nameBar.display();
           //timeBar.display();
      image(img2,0,0,THE_WIDTH,THE_HEIGHT);
    }


    
    /* SUD START */
    // Method: setCoffeeProfile(AppScreen)
    // To switch the screen
    public void setCoffeeProfileScreen(AppScreen scr)
    {
        this.coffeeprofile = scr;
    }
    
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
      /* SUD START */
      if ((mouseX>24 && mouseX<104) && (mouseY>43 && mouseY<82))
      {
        appController.setScreen(coffeeprofile);
      }
      else if ((mouseX>11 && mouseX<76) && (mouseY>680 && mouseY<736))
      {
        appController.setScreen(cardsMainScreen);
      }
      /* SUD END */
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
