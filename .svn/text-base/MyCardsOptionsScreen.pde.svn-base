/* 
 Starbucks Mobile App Simulator. 
 Starter Code by Paul Nguyen 
 Modified by Michael Ly
*/

public class MyCardsOptionsScreen implements AppScreen 
{
  private MyCardsOptionsDisplay optionDisplay;
  private AppScreen cardsMainScreen;

  // constructor
  public MyCardsOptionsScreen() 
  {
    optionDisplay = new MyCardsOptionsDisplay();
  }

  // method for cancel
  public void setCardsMainScreen( AppScreen scr )
  {
    this.cardsMainScreen = scr ;
  }
  
  public void touch(int x, int y)
  {
     AppController app = appController;

    if (
    (x >= int(THE_WIDTH*.065) ) &&
      (x <= (int(THE_WIDTH*.065) + int(THE_WIDTH*.875))) &&
      (y >= int(THE_HEIGHT/2 + (0*THE_HEIGHT*.12))) &&
      (y <= (int(THE_HEIGHT/2 + (0*THE_HEIGHT*.12)) + int(THE_HEIGHT*.10))) )
    { 
      System.out.println("Button for 'Reload' was pressed.");
      app.getCurrentCard().reloadBalance();
    }
    else if (
    (x >= int(THE_WIDTH*.065) ) &&
      (x <= (int(THE_WIDTH*.065) + int(THE_WIDTH*.875))) &&
      (y >= int(THE_HEIGHT/2 + (1*THE_HEIGHT*.12))) &&
      (y <= (int(THE_HEIGHT/2 + (1*THE_HEIGHT*.12)) + int(THE_HEIGHT*.10))) )
    { 
      System.out.println("Button for 'Refresh' was pressed.");
    }
    else if (
    (x >= int(THE_WIDTH*.065) ) &&
      (x <= (int(THE_WIDTH*.065) + int(THE_WIDTH*.875))) &&
      (y >= int(THE_HEIGHT/2 + (2*THE_HEIGHT*.12))) &&
      (y <= (int(THE_HEIGHT/2 + (2*THE_HEIGHT*.12)) + int(THE_HEIGHT*.10))) )
    { 
      System.out.println("Button for 'More Options' was pressed.");
    }
    else if (
    (x >= int(THE_WIDTH*.065) ) &&
      (x <= (int(THE_WIDTH*.065) + int(THE_WIDTH*.875))) &&
      (y >= int(THE_HEIGHT/2 + (3*THE_HEIGHT*.12))) &&
      (y <= (int(THE_HEIGHT/2 + (3*THE_HEIGHT*.12)) + int(THE_HEIGHT*.10))) )
    { 
      System.out.println("Button for 'Cancel' was pressed.");
      app.setScreen(cardsMainScreen);
    }
  }

  public void display()
  {
    optionDisplay.display();
  }

  public void topLeftCmd() 
  {
  }

  public void topRightCmd() 
  {
  }
}

