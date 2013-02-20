/**
 * @author      Michael Ly 
 * @author      Robert Snow <rob.snow14 @ gmail.com>
 * @version     0.8
 * @since       2012-04-26
 */
 
/**
 * This will scale the canvas accordingly within 0 > PSCALE >= 1 
 */
private static final float PSCALE = 1;
private static final int THE_WIDTH = int(500 * PSCALE);                 // Original width of canvas is 500
private static final int THE_HEIGHT = int(750 * PSCALE);                // Original height of canvas is 750
private static final int TIMEBARHEIGHT = int(THE_HEIGHT * .0413 + 1);   // This will change the height of the timebar in pixels
private static final int NAMEBARHEIGHT = int(THE_HEIGHT * .092);        // This will change the height of the namebar in pixels


static int coffeeCount = 0;
static int foodCount = 0;
static int drinksCount = 0;

private static final int COLS = (THE_WIDTH / 3) + 1;
private static final int ROWS = ((THE_HEIGHT - TIMEBARHEIGHT) / 8) + 1;

/**
 * All Pin objects should reference STATIC_PIN
 */
private static Pin STATIC_PIN = null;
private static AppController appController = null;

void setup()
{
  size(THE_WIDTH,THE_HEIGHT);  
  
  STATIC_PIN = new Pin();
  appController = new AppController();
  
  appController.startUp();
}

void draw()
{
  background(33);
  smooth();
  appController.display();
}

void mouseReleased() 
{
  appController.touch(mouseX, mouseY);
}

