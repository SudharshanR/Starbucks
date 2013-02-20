public class CoffeeProfile implements AppScreen{

    private AppScreen cardsMainScreen;
    private AppScreen addDecaf;  
    private AppScreen addBreakfast;  
    private AppScreen coffeeFormScreen; 
    PImage img2 = loadImage("Coffee Profile.PNG");
    
    public void display(){       
          // nameBar.display();
           //timeBar.display();
      image(img2,0,0,THE_WIDTH,THE_HEIGHT);
    }


    
    /* SUD START */
    // Method: setUaddDecafWillow(AppScreen)
    // To switch the screen
     public void setCoffeeFormScreen(AppScreen scr)
    {
        this.coffeeFormScreen = scr;
    }
    public void setAddDecafWillow(AppScreen scr)
    {
        this.addDecaf = scr;
    }
    // Method: setCoffeeProfile(AppScreen)
    // To switch the screen
    public void setAddBreakfastBlend(AppScreen scr)
    {
        this.addBreakfast = scr;
    }
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
      
      if (x > int(255) && x < int(479) && y > int(122) && y < int(159))
      {
         System.out.println("beforeeeeeeeeeeeeeee"+y);
      System.out.println("y u no working??!");
       appController.setScreen(coffeeFormScreen);
        System.out.println("afterrrrrrrrrrrrrrr"+y);
      } 
      /* SUD START */
      if ((mouseX>16 && mouseX<483) && (mouseY>209 && mouseY<277))
      {
        appController.setScreen(addDecaf);
      }
      else if ((mouseX>16 && mouseX<483) && (mouseY>559 && mouseY<623))
      {
        appController.setScreen(addBreakfast);
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
