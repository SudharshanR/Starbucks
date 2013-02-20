/* 
 Starbucks Mobile App Simulator. 
 Starter Code by Paul Nguyen 
 Modified by Michael Ly
*/

public class PinScreen implements AppScreen {

  TouchEventHandler eventChain ;
  PinStateMachine pinMachine ;
  Passcode passcodeDisplay ;
  
  KeyPadDisplay kpd; // Displays keypad with interative buttons

  public PinScreen() {
    pinMachine = new PinEntryMachine() ;
    passcodeDisplay = new Passcode() ;
    kpd = new KeyPadDisplay();
    ((PinEntrySubject) pinMachine).registerObserver(passcodeDisplay) ;
    TouchEventHandler pc = new PasscodeHandler( passcodeDisplay ) ;
    TouchEventHandler kp = new KeyPadHandler( pinMachine ) ;
    pc.setNext(kp);
    this.eventChain = pc ;
  }

  public void touch(int x, int y) {
    eventChain.touch(x, y);
  }

  public void display()
  {  
    passcodeDisplay.display() ;
    kpd.display();    
  }

  public void topLeftCmd() {
  }

  public void topRightCmd() {
  }
}

