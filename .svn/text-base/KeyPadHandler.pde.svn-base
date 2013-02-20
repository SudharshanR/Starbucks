/* 
 Starbucks Mobile App Simulator. 
 Starter Code by Paul Nguyen 
 Modified by Michael Ly
*/

public class KeyPadHandler implements TouchEventHandler, TouchAdapter
{
  private TouchEventHandler nextHandler ;
  private KeyPad keypad ;
  private PinStateMachine pinStateMachine ;

  public KeyPadHandler( PinStateMachine pm )
  {
    this.keypad = new KeyPad() ;
    this.nextHandler = null ;
    this.pinStateMachine = pm ;
  }

  public void setNext( TouchEventHandler next )
  {
    this.nextHandler = next ;
  }

  public void touch(int x, int y)
  {
/* Snippet of code to do translation from pixel location to Paul's coordinates */
    x = x / COLS + 1;
    y = (y-TIMEBARHEIGHT) / ROWS + 1;
/* */

    if ( y > 4 )
    {
      String key ;
      int kx, ky ;
      kx = x ; 
      ky = y-4 ;
      key = this.keypad.keyPress(kx, ky) ;
      System.out.println(key);
      if ( key.equals(" ") )
        /* nothing */        ;
      else if ( key.equals("X") )
        pinStateMachine.backspace() ;
      else
        pinStateMachine.number( key ) ;
    }
    else if ( this.nextHandler != null )
      this.nextHandler.touch( x, y );
  }
}

