/**
 * @author      Robert Snow <rob.snow14 @ gmail.com>
 * @version     0.8
 * @since       2012-04-26
 */
public class Bar
{
  private int xCoord;
  private int yCoord;
  private int xLength;
  private int yLength;
  private String fileName;
  
  public Bar(int x, int y, int w, int h, String name)
  {
    xCoord = x;
    yCoord = y;
    xLength = w;
    yLength = h;
    fileName = name;
  }
  
  /**
   * Display current object's graphical content.
   *
   * @return void
   */
  public void display()
  {
    PImage temp;
    temp = loadImage(fileName);
    image(temp, xCoord, yCoord, xLength, yLength);
  }
}
