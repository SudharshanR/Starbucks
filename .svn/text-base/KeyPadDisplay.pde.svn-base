/* 
 Starbucks Mobile App Simulator. 
 By Michael Ly
*/
public class KeyPadDisplay
{
  private PImage[][] keyPadButtonImages = 
  { 
    { loadImage("1.png"), loadImage("2.png"), loadImage("3.png") }, 
    { loadImage("4.png"), loadImage("5.png"), loadImage("6.png") }, 
    { loadImage("7.png"), loadImage("8.png"), loadImage("9.png") }, 
    { loadImage("empty.png"), loadImage("0.png"), loadImage("delete.png") }
  };
  private ImageButton[][] kb = new ImageButton[4][3];

  public KeyPadDisplay() 
  {
    // Import button images
    for (int i=0; i<3; i++) {
      for (int j=0; j<4; j++) {
        this.kb[j][i] = new ImageButton(COLS*i, ROWS*(j+4)+TIMEBARHEIGHT, COLS - 1, ROWS-1, keyPadButtonImages[j][i]);
      }
    }    
  }

  public void display() 
  {
    update();
    refresh();
  }
  
  public void update() 
  {
    for (int i=0; i<3; i++) {
      for (int j=0; j<4; j++) {
        kb[j][i].update();
      }
    }
  }

  public void refresh() 
  {
    for (int i=0; i<3; i++) {
      for (int j=0; j<4; j++) {
        kb[j][i].display();
      }
    }
  }
}
