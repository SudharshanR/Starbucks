/**
 * @author      Paul Nguyen
 * @version     Starter
 */
 public interface TouchAdapter
{
    void touch(int x, int y) ;
}

/**
 * @author      Robert Snow <rob.snow14 @ gmail.com>
 * @version     0.8
 * @since       2012-04-26
 */
public class AddCardKeyPadAdapter implements TouchAdapter
{
    private KeyPad keypad;
    private AddCardScreen screen1;
    private KeyPadDisplay kpd;

    public AddCardKeyPadAdapter(AddCardScreen scr )
    {
       this.keypad = new KeyPad();
       this.screen1 = scr;
       kpd = new KeyPadDisplay();
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
      // keypad has been clicked, pass to keypad
      if (y > TIMEBARHEIGHT+ROWS*4)
      {
        x = x / COLS + 1;
        y = (y-TIMEBARHEIGHT) / ROWS + 1;
        String key;
        int kx, ky;
        kx = x; 
        ky = y-4;
        
        String lastKey;
        lastKey = this.keypad.keyPress(kx, ky);
        screen1.lastKeyPressed(lastKey);
      }
     
      // top left command has been clicked, pass to current screen
      if (x > THE_WIDTH*.04 && x < (THE_WIDTH*.04+THE_WIDTH*.188) && y > THE_HEIGHT*.057 && y < (THE_HEIGHT*.057+THE_HEIGHT*.0627))
      {
        screen1.topLeftCmd();
      }
      // top right command has been clicked, pass to current screen
      else if (x > THE_WIDTH*.788 && x < (THE_WIDTH*.788+THE_WIDTH*.17) && y > THE_HEIGHT*.057 && y < (THE_HEIGHT*.057+THE_HEIGHT*.0627))
      {
        screen1.topRightCmd();
      }
    }
    
    /**
     * Display current object's graphical content.
     *
     * @return void
     */
    public void display()
    {
      kpd.display();
    }
}

/**
 * @author      Robert Snow <rob.snow14 @ gmail.com>
 * @version     0.8
 * @since       2012-04-26
 */
public class AddCardDisplayAdapter
{
    private String cardId = "";
    private String cardCode = "";
    private boolean errorStatus = false;
    private PImage card = loadImage("card.png"); 
    private PFont font = loadFont("HelveticaWorld-Regular-34.vlw");
    
    public AddCardDisplayAdapter()
    {
    }
    
    /**
     * Display current object's graphical content.
     *
     * @return void
     */
    public void display()
    {
      // display card           
      image(card, int(THE_WIDTH*.09), int(THE_HEIGHT*.155), int(THE_WIDTH*.82), int(THE_HEIGHT*.3453));
      
      // if no error message then display card input 
      if (!errorStatus)
        {
          fill(0);
          textFont(font, THE_WIDTH*.05);
          text(cardId,THE_WIDTH*.35,THE_HEIGHT*.3032);
          text(cardCode,THE_WIDTH*.465,THE_HEIGHT*.385);
        } 
        // else display error message       
        else
        {
          fill(255,0,0);
          textFont(font, THE_WIDTH*.05);
          text("Invalid input. 16 digits.",THE_WIDTH*.34,THE_HEIGHT*.3032);
          text("8 digits.",THE_WIDTH*.50,THE_HEIGHT*.382);
        }      
    }
    
    /**
     * Set current AddCardDisplayAdapter's error status.
     *
     * @param errorstatus Boolean of the current error status.
     * @return void
     */
    public void setErrorStatus(boolean errorstatus)
    {
      errorStatus = errorstatus;
    }
 
    /**
     * Set current cardId and cardCode for display purposes.
     *
     * @param cardid String representation of current cardid
     * @param cardcode String representation of current cardcode
     * @return void
     */
    public void setCardInfo(String cardid, String cardcode)
    {
      cardId = cardid;
      cardCode = cardcode;
    }   
}
