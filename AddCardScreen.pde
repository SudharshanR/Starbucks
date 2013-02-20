/**
 * @author      Robert Snow <rob.snow14 @ gmail.com>
 * @version     0.8
 * @since       2012-04-26
 */
public class AddCardScreen implements AppScreen
{
    private AppScreen settingsScreen ;
    private AppScreen cardsMainScreen ; 
  
    // graphic objects
    private Bar timeBar = new Bar(0, 0, THE_WIDTH, TIMEBARHEIGHT, "timebar.png");
    private Bar nameBar = new Bar(0, TIMEBARHEIGHT, THE_WIDTH, NAMEBARHEIGHT, "addcardbar.png");
    private PImage[][] topButtonImages = 
    { 
    { loadImage("cancel.png"), loadImage("cancelpressed.png")}, 
    { loadImage("add.png"), loadImage("addpressed.png")}
    };        
    private RoundedButton cancelButton = new RoundedButton(int(THE_WIDTH*.04), int(THE_HEIGHT*.057), int(THE_WIDTH*.188), int(THE_HEIGHT*.0627), topButtonImages[0][0], topButtonImages[0][1]); 
    private RoundedButton addButton = new RoundedButton(int(THE_WIDTH*.788), int(THE_HEIGHT*.057), int(THE_WIDTH*.17), int(THE_HEIGHT*.0627), topButtonImages[1][0], topButtonImages[1][1]);    
    private BlinkingCursor cardIdCursor = new BlinkingCursor(int(THE_WIDTH*.35),int(THE_HEIGHT*.271),int(THE_WIDTH*.008),int(THE_HEIGHT*.04));
    private BlinkingCursor cardCodeCursor = new BlinkingCursor(int(THE_WIDTH*.465),int(THE_HEIGHT*.3518),int(THE_WIDTH*.008),int(THE_HEIGHT*.04));
    
    // touch and display adapters
    private AddCardKeyPadAdapter kp;    
    private AddCardDisplayAdapter card;
    
    // card input variables
    private StringBuffer cardId;
    private StringBuffer cardCode;
    private String lastKey;
    private boolean errorStatus = false;
    
    /**
     * Focus = 0 for Nothing, 1 for Card ID, 2 for Card Code
     */
    private int focus = 0;
    
    /**
     * Initialize settingsScreen variable.
     *
     * @param scr Copy of settingsScreen of type AppScreen.
     * @return void
     */
    public void setSettingsScreen( AppScreen scr )
    {
        this.settingsScreen = scr ;
    }
    
    /**
     * Initialize cardsMainScreen variable.
     *
     * @param scr Copy of cardsMainScreen of type AppScreen.
     * @return void
     */
    public void setCardsMainScreen( AppScreen src )
    {
        this.cardsMainScreen = src ;
    }
    
    public AddCardScreen()
    {
        kp = new AddCardKeyPadAdapter(this);
        card = new AddCardDisplayAdapter();
        cardId = new StringBuffer();
        cardCode = new StringBuffer();
    }

    /**
     * Update lastKey variable with current keypad input.
     *
     * @param lastkey String representation of last keypad key pressed.
     * @return void
     */
    public void lastKeyPressed(String lastkey)
    {
        this.lastKey = lastkey;
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
      // focus on cardId if clicked
      if (x > THE_WIDTH*.268 && x < THE_WIDTH*.888 && y > THE_HEIGHT*.264 && y < THE_HEIGHT*.31467)
      {
        this.focus = 1;
        errorStatus = false;
      }
      // focus on cardCode if clicked
      else if (x > THE_WIDTH*.422 && x < THE_WIDTH*.732 && y > THE_HEIGHT*.3467 && y < THE_HEIGHT*.3933)
      {
        this.focus = 2;
        errorStatus = false;
      }
      // if anything else clicked do the following
      else
      {
        this.lastKey = null;
        this.kp.touch(x, y);
        if (lastKey != null && lastKey != " " && lastKey != "X" )
        {
          switch ( focus )
          {          // add latest key to cardId
            case 1 : if (cardId.length() < 16) {cardId.append(lastKey);} break;
                     // add latest key to cardCode
            case 2 : if (cardCode.length() < 8) {cardCode.append(lastKey);} break;
            default: /* do nothing */;
          }
        }
        else if (lastKey == "X")
        {
          switch ( focus )
          {          // remove latest key from cardId
            case 1 : if (cardId.length() > 0) {cardId.setLength(cardId.length()-1);} break;
                     // remove latest key from cardCode
            case 2 : if (cardCode.length() > 0) {cardCode.setLength(cardCode.length()-1);} break;
            default: /* do nothing */;
          }         
        }
        else if (lastKey == " ") { } // do nothing
        else
        {
          // focus on nothing
          focus = 0;
        } 
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
       cancelButton.update();
       cancelButton.display();
       addButton.update();
       addButton.display();
       card.display();
       kp.display();
       
       switch ( focus )
       {   // display cardID cursor if focused
           case 1 : cardIdCursor.display(cardId.length()); break;
           // display cardCode cursor if focused
           case 2 : cardCodeCursor.display(cardCode.length()); break;
           default: ;
       }
       
       // if no error message then display current inputted numbers 
       if (!errorStatus)
       {
         card.setCardInfo(cardId.toString(),cardCode.toString());
         card.setErrorStatus(errorStatus);
       } 
       // else display error message
       else
       {
         card.setErrorStatus(errorStatus);
       }
    }

    /**
     * Perform actions if topLeftCmd button pressed.
     *
     * @return void
     */
    public void topLeftCmd() 
    {
      // clear cardID and cardCode variables
      errorStatus = false;
      cardId.setLength(0);
      cardCode.setLength(0);
      card.setCardInfo("","");      
      // go to Settings Screen
      appController.setScreen(this.settingsScreen);       
    }

    /**
     * Perform actions if topRightCmd button pressed.
     *
     * @return void
     */
    public void topRightCmd() 
    {
      if (cardId.length() == 16 && cardCode.length() == 8)
      {
        // update current card information with input
       Card newCard = new Card(cardId.toString(), cardCode.toString());
        appController.setCurrentCard(newCard);
        // clear cardID and cardCode variables
        cardId.setLength(0);
        cardCode.setLength(0);
        card.setCardInfo("","");
        // go to My Cards Main Screen
        appController.setScreen(this.cardsMainScreen);
      }
      else
      {
        // set error message if the input is invalid
        errorStatus = true;
      }        
    }
}
