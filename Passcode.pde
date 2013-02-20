/* 
 Starbucks Mobile App Simulator. 
 Starter Code by Paul Nguyen 
 Modified by Michael Ly
*/

// Displays passcode slots and masked digits
public class Passcode implements PinEntryObserver {

  private int num_pin_digits;  
  private int prev_num_pin_digits;
  private boolean invalidMsgOn;
  
  private PFont font = loadFont("HelveticaWorld-Regular-34.vlw");
  private Bar timeBar = new Bar(0, 0, THE_WIDTH, TIMEBARHEIGHT, "timebar.png");
  PImage pinbg = loadImage("pinscreenbg.png");

  public Passcode() {
    this.num_pin_digits = 0 ;
    this.prev_num_pin_digits = 0;
    this.invalidMsgOn = false;
  }

  public void touch(int x, int y) {
  }

  public void display()
  {
/* Moved Robs implementation of the graphical bar here from class Pinscreen to class Passcode */ 
    timeBar.display();  
    image(pinbg, 0, TIMEBARHEIGHT, THE_WIDTH, THE_HEIGHT*.4786);
/* */
	
    String str ;
    if(invalidMsgOn)
      displayPromptInvalid();
    switch( num_pin_digits )
    {
    case 0: 
      codeDisplay0(); 
      break ;
    case 1: 
      codeDisplay1();
      invalidMsgOn = false; // disable invalid passcode message when first pin entered, if on 
      break ;
    case 2: 
      codeDisplay2(); 
      break ;
    case 3: 
      codeDisplay3(); 
      break ;
    case 4: 
      codeDisplay4();
      break ;
    default: 
      codeDisplay0();
    }
  }

  public void update(int count)
  {
    // Check for zero digit count because of invalid pin    
    if(count == 0 && !invalidMsgOn && prev_num_pin_digits == 3)
      this.invalidMsgOn = true;
    
    this.prev_num_pin_digits = this.num_pin_digits; // save previous number of pin
    this.num_pin_digits = count ;
    display() ;
  }

  private void codeDisplay0() { displayDigits(0); }
  private void codeDisplay1() { displayDigits(1); }
  private void codeDisplay2() { displayDigits(2); }
  private void codeDisplay3() { displayDigits(3); }
  private void codeDisplay4() { displayDigits(4); }

  private void displayDigits(int cnt) {
    for (int j=1; j<=cnt; j++) {
      fill(0);
      ellipse(THE_WIDTH*.16 + ((j-1)*THE_WIDTH*.216), THE_HEIGHT*.215, THE_WIDTH*.05, THE_WIDTH*.05);
    }
  }
    
  private void displayPromptInvalid() {
    fill(255,0,0);
    textAlign(CENTER);
    textFont(font, THE_WIDTH*.05);
    text("Invalid Passcode", THE_WIDTH/2, THE_HEIGHT*.315);
  }
}

