/* 
 Starbucks Mobile App Simulator. 
 Reused class Button from 'http://processing.org/learning/topics/imagebutton.html'
*/
class Button
{
  int x, y;
  int w, h;
  boolean over = false;
  boolean pressed = false;

  void pressed() 
  {
    if (over && mousePressed) {
      pressed = true;
    } 
    else {
      pressed = false;
    }
  }

  boolean overRect(int x, int y, int width, int height) 
  {
    if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
      return true;
    } 
    else {
      return false;
    }
  }
}

/* 
 Starbucks Mobile App Simulator. 
 Reused class ImageButton from 'http://processing.org/learning/topics/imagebutton.html'
 Modify by Michael Ly
*/
class ImageButton extends Button 
{
  PImage bImage;

  ImageButton(int x, int y, int w, int h, PImage bImage) 
  {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.bImage = bImage;
  }

  public void update() 
  {
    over();
    pressed();
  }

  public void display() 
  {
    image(bImage, x, y, w, h);
    if (pressed) {
      noStroke();
      fill(25, 90);
      rect(x, y, w, h);
    }
  }

  private void over() 
  {
    if ( overRect(x, y, w, h) ) {
      over = true;
    } 
    else {
      over = false;
    }
  }
}

/**
 * @author      Robert Snow <rob.snow14 @ gmail.com>
 * @version     0.8
 * @since       2012-04-26
 */
class RoundedButton extends Button 
{
  PImage buttonImage;
  PImage pressedImage;

  RoundedButton(int x, int y, int w, int h, PImage buttonImage, PImage pressedImage) 
  {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.buttonImage = buttonImage;
    this.pressedImage = pressedImage;
  }

  /**
   * Update current button pressed status.
   *
   * @return void
   */
  public void update() 
  {
    over();
    pressed();
  }

  /**
   * Display current object's graphical content.
   *
   * @return void
   */
  public void display() 
  {
    image(buttonImage, x, y, w, h);
    if (pressed) {
      image(pressedImage, x, y, w, h);
    }
  }

  /**
   * Determine if current mouse position is within the bounds of the button.
   *
   * @return void
   */
  private void over() 
  {
    if ( overRect(x, y, w, h) ) {
      over = true;
    } 
    else {
      over = false;
    }
  }
}
