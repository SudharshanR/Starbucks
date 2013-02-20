/**
 * @author      Robert Snow <rob.snow14 @ gmail.com>
 * @version     0.8
 * @since       2012-04-26
 */
public class BlinkingCursor
{
  private int xCoord;
  private int yCoord;
  private int cursorWidth;
  private int cursorHeight;

  public BlinkingCursor(int x, int y, int cwidth, int cheight)
  {
    xCoord = x;
    yCoord = y;
    cursorWidth = cwidth;
    cursorHeight = cheight;
  }
  
  /**
   * Display current object's graphical content.
   *
   * @return void
   */
  public void display(int currentPosition)
  {
    if ((second() % 2) == 0)
    {
      noStroke();
      fill(66, 107, 242);
      // draw cursor using math function for determining current cursor x position
      rect((xCoord + ((THE_WIDTH*.028) * currentPosition)),yCoord,cursorWidth,cursorHeight);
    }
  }
}
