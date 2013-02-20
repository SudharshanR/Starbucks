/**
 * @author      Paul Nguyen
 * @version     Starter
 */
public interface Command
{
  public void execute();
}

/********
Class: MenuCommand
Created by: David Tedjasatyawira
This is a class type for Menu objects at the bottom of screen. For each screen that has
"Menu Buttons" at the bottom of the screen must instantiate an object of this type MenuCommand
*/
public class MenuCommand implements Command
{
  // instance variables
  private AppScreen appScreen;
 
  // MenuImage instance members to hold the image skin for each menu button
  private MenuImage menuImageSlot1;
  private MenuImage menuImageSlot2;
  private MenuImage menuImageSlot3;
  private MenuImage menuImageSlot4;
  private MenuImage menuImageSlot5;
  
  // Constructor
  public MenuCommand(AppScreen scr)
  {
    this.appScreen = scr;
    
    //Instantiate all the Menu Command Bars objects
     menuImageSlot1 = new MenuImage(0, (int)(THE_HEIGHT *.897), "cardsmenu.png");
     menuImageSlot2 = new MenuImage(int(THE_WIDTH *.2), int(THE_HEIGHT *.897), "paymentsmenu.png");
     menuImageSlot3 = new MenuImage(int(THE_WIDTH *.4), int(THE_HEIGHT *.897), "rewardsmenu.png");
     menuImageSlot4 = new MenuImage(int(THE_WIDTH *.6), int(THE_HEIGHT *.897), "storesmenu.png");
     menuImageSlot5 = new MenuImage(int(THE_WIDTH *.8), int(THE_HEIGHT *.897), "settingsmenu.png");
  }  
 
  // Method: touch(int, int)
  // Define coordinates location for each menu button dimension
  public void touch(int x, int y)
  {
    if (x > 0 && x < int(THE_WIDTH *.2))
       appController.menu1();
  
    if (x > int(THE_WIDTH *.2) && x < int(THE_WIDTH *.4))
       appController.menu2();
      
    if (x > int(THE_WIDTH *.4) && x < int(THE_WIDTH *.6))
       appController.menu3();
      
    if (x > int(THE_WIDTH *.6) && x < int(THE_WIDTH *.8))
       appController.menu4();
  
    if (x > int(THE_WIDTH *.8))
       appController.menu5();
  }
  
  
  public void execute()
  {
    appController.setScreen(appScreen);
  }
  
  // Method: display()
  // To draw all the menu images with specified image for each button
  public void display()
  {
      String currentScreen = appController.getCurrentScreenName();
      
      if (currentScreen.equals("PinScreenDriver$MyCardsMainScreen"))
         menuImageSlot1.setActive(true, "cardsmenu2.png");
     
      else if (currentScreen.equals("PinScreenDriver$MyCardsPayScreen"))
         menuImageSlot1.setActive(true, "cardsmenu2.png");
      
      else if (currentScreen.equals("PinScreenDriver$PaymentScreen"))
         menuImageSlot2.setActive(true, "paymentsmenu2.png");
     
      else if (currentScreen.equals("PinScreenDriver$RewardScreen"))
         menuImageSlot3.setActive(true, "rewardsmenu2.png");
      
      else if (currentScreen.equals("PinScreenDriver$FindStarbuckScreen"))
         menuImageSlot4.setActive(true, "storesmenu2.png");
     
      else if (currentScreen.equals("PinScreenDriver$SettingScreen"))
         menuImageSlot5.setActive(true, "settingsmenu2.png");
         
      menuImageSlot1.display();
      menuImageSlot2.display();
      menuImageSlot3.display();
      menuImageSlot4.display();
      menuImageSlot5.display();
  }
}

/********
Class: MenuImage
Created by: David Tedjasatyawira
This class is manage the image skin for each menu button
both for active and deactive skin
*/
public class MenuImage
{
   private int yCoord;
   private int xCoord;
   private String fileName;
   private boolean isActive;
   private String activeFileName;
   
    public MenuImage(int x, int y, String name)
    {
      xCoord = x;
      yCoord = y;
      fileName = name;
      isActive = false; //Default set to false
    }
  
    public void setActive(boolean val, String fn)
    {
       isActive = val;
       activeFileName = fn;
    }   
    
    public void display()
    {
      PImage temp;
      
      if (!isActive)
        temp = loadImage(fileName);
      else
        temp = loadImage(activeFileName);
        
      image(temp, xCoord, yCoord, THE_WIDTH *.2, THE_HEIGHT *.1026);
    }
}
