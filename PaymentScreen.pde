/**
 * @author      Robert Snow <rob.snow14 @ gmail.com>
 * @version     0.8
 * @since       2012-04-26
 */
public class PaymentScreen implements AppScreen
{
  private MenuCommand menuCommand;  
  private Bar timeBar = new Bar(0, 0, THE_WIDTH, TIMEBARHEIGHT, "timebar.png");
  private Bar nameBar = new Bar(0, TIMEBARHEIGHT, THE_WIDTH, NAMEBARHEIGHT, "paymentsbar.png");
  PImage temp = loadImage("payments.png"); 

  public PaymentScreen()
  {  
      menuCommand = new MenuCommand(this);
  }  
   
  /**
   * Display current object's graphical content.
   *
   * @return void
   */
  public void display()
  {       
       timeBar.display();
       nameBar.display();      
       menuCommand.display();              
       
     //  image(temp, 0, TIMEBARHEIGHT+NAMEBARHEIGHT, THE_WIDTH, THE_HEIGHT*.76667);      
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
        if (y > int(THE_HEIGHT * .897))
           menuCommand.touch(x, y);   
  }
    
  public void topLeftCmd() 
  {        
  }

  public void topRightCmd() 
  {        
  }
}
