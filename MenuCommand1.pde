  
  public class MenuCommand1 implements Command
{
  private AppScreen appScreen;
  private MenuImage menuImageSlot1;
  private MenuImage menuImageSlot2;
 // public ReloadAmount relamount1;
  public MenuCommand1(AppScreen scr)
  {
    this.appScreen = scr;
    
    //Instantiate all the Menu Command Bars objects
     menuImageSlot1 = new MenuImage(30, 484, "cancel1.png");
     menuImageSlot2 = new MenuImage(260, 484, "confirm1.png");
  }
  public MenuCommand1()
  {}
  public void touch(int x, int y)
  {
     if (x > int(25) && x < int(220) && y > int(222) && y < int(496))
    {
      //relamount1.setValue(0);
    appController.menu11();
    }
    else if(x > int(265) && x < int(446) && y > int(224) && y < int(496))
    {
      //appController.getCurrentCard().setBalance((float)relamount1.getReloadAmount());
    appController.menu22();
    
    }
  }
  public void execute()
  {
    appController.setScreen(appScreen);
  }
  public void display()
  {
    //menuImageSlot1.display1();
      //menuImageSlot2.display1();

  }
}
