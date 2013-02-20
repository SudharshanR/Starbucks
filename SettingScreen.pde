/**
 * @author      Robert Snow <rob.snow14 @ gmail.com>
 * @version     0.8
 * @since       2012-04-26
 */
public class SettingScreen implements AppScreen
{
    private AppScreen addCardScreen ; 
     
    private Bar timeBar = new Bar(0, 0, THE_WIDTH, TIMEBARHEIGHT, "timebar.png");
    private Bar nameBar = new Bar(0, TIMEBARHEIGHT, THE_WIDTH, NAMEBARHEIGHT, "settingsbar.png");
    private PImage[] settingButtonImages = 
    { 
      loadImage("settings1.png"), loadImage("settings2.png"), loadImage("settings3.png"),
      loadImage("settings4.png"), loadImage("settings5.png"), loadImage("settings6.png"),
      loadImage("settings7.png")
    };    
    private ImageButton buttonOne = new ImageButton(int(THE_WIDTH*.028), int(THE_HEIGHT*.18), int(THE_WIDTH*.944), int(THE_HEIGHT*.0893), settingButtonImages[0]);
    private ImageButton buttonTwo = new ImageButton(int(THE_WIDTH*.028), int(THE_HEIGHT*.18+(THE_HEIGHT*.0893)), int(THE_WIDTH*.944), int(THE_HEIGHT*.0893), settingButtonImages[1]);
    private ImageButton buttonThree = new ImageButton(int(THE_WIDTH*.028), int(THE_HEIGHT*.18+(2*(THE_HEIGHT*.0875))), int(THE_WIDTH*.944), int(THE_HEIGHT*.0893), settingButtonImages[2]);
    private ImageButton buttonFour = new ImageButton(int(THE_WIDTH*.028), int(THE_HEIGHT*.18+(3*(THE_HEIGHT*.0878))), int(THE_WIDTH*.944), int(THE_HEIGHT*.0893), settingButtonImages[3]);
    private ImageButton buttonFive = new ImageButton(int(THE_WIDTH*.028), int(THE_HEIGHT*.18+(4*(THE_HEIGHT*.0875))), int(THE_WIDTH*.944), int(THE_HEIGHT*.0893), settingButtonImages[4]);
    private ImageButton buttonSix = new ImageButton(int(THE_WIDTH*.028), int(THE_HEIGHT*.68), int(THE_WIDTH*.944), int(THE_HEIGHT*.0893), settingButtonImages[5]);
    private ImageButton buttonSeven = new ImageButton(int(THE_WIDTH*.028), int(THE_HEIGHT*.68+(THE_HEIGHT*.087)), int(THE_WIDTH*.944), int(THE_HEIGHT*.0893), settingButtonImages[6]);
    private MenuCommand menuCommand;
    private PFont font = loadFont("HelveticaWorld-Bold-34.vlw");
    
    /**
     * Initialize addCardScreen variable.
     *
     * @param scr Copy of addCardScreen of type AppScreen.
     * @return void
     */
    public void setAddCardScreen( AppScreen scr )
    {
        this.addCardScreen = scr ;
    }
    
    public SettingScreen()
    {
      menuCommand = new MenuCommand(this);
    }

    /**
     * Determine whether the user's touch coordinates are important.
     *
     * @param x MouseX coordinate of the user input
     * @param y MouseY coordinate of the user input
     * @return void
     */
    public void touch(int x, int y)
    {
      // if first button pressed go to addCardScreen
      if (x > THE_WIDTH*.028 && x < (THE_WIDTH*.028+THE_WIDTH*.944) && y > THE_HEIGHT*.18 && y < (THE_HEIGHT*.18+THE_HEIGHT*.0893))
      {
        appController.setScreen(this.addCardScreen); 
      }
      // if menubar pressed, pass along touch
      if (y > int(THE_HEIGHT * .897))
      {
        menuCommand.touch(x, y);
      }
    }

    /**
     * Display current object's graphical content.
     *
     * @return void
     */
    public void display()
    {
       nameBar.display();
       timeBar.display();
       buttonOne.update();
       buttonOne.display();
       buttonTwo.update();
       buttonTwo.display();
       buttonThree.update();
       buttonThree.display();
       buttonFour.update();
       buttonFour.display();
       buttonFive.update();
       buttonFive.display();
       buttonSix.update();
       buttonSix.display();
       buttonSeven.update();
       buttonSeven.display();
       menuCommand.display();
       
       fill(255);
       textFont(font, THE_WIDTH*.036);
       text("MANAGE", THE_WIDTH*.04, THE_HEIGHT*.165);
       text("APPLICATION INFORMATION", THE_WIDTH*.04, THE_HEIGHT*.665);
    }

    public void topLeftCmd() 
    {        
    }

    public void topRightCmd() 
    {        
    }
}
