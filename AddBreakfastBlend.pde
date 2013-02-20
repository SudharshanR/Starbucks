public class AddBreakfastBlend implements AppScreen,SubjectInterface{

    private AppScreen remBreakfast;
    private AppScreen coffeeprofile;
    private AppScreen cardsMainScreen;
    PImage img2 = loadImage("addBreakfastBlend.PNG");
    private ArrayList<ObserverInterface> observers;
	Coffee coffee;
    
    public AddBreakfastBlend(){
        observers = new ArrayList<ObserverInterface>() ;
		coffee = new Coffee();
    }
    
    
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
    // Method: setCoffeeProfile(AppScreen)
    // To switch the screen
    public void setRemoveBreakfastBlend(AppScreen scr)
    {
        this.remBreakfast = scr;
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
      /* SUD START */
      if ((mouseX>24 && mouseX<104) && (mouseY>43 && mouseY<82))
      {
        appController.setScreen(coffeeprofile);
      }
      else if ((mouseX>14 && mouseX<486) && (mouseY>600 && mouseY<666))
      {
        notifyObservers();
        appController.setScreen(remBreakfast);
      }
      else if ((mouseX>11 && mouseX<76) && (mouseY>680 && mouseY<736))
      {
        appController.setScreen(cardsMainScreen);
      }
      /* SUD END */
    }

    public void notifyObservers() {
      for (int i=0; i<observers.size(); i++) {
        ObserverInterface observer = observers.get(i) ;
        observer.update(coffee) ;
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
