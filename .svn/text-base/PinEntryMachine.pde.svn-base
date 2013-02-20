/* 
 Starbucks Mobile App Simulator. 
 Starter Code by Paul Nguyen 
 Modified by Michael Ly
*/
import java.util.ArrayList;

public class PinEntryMachine implements PinStateMachine, PinEntrySubject
{
    private Pin pin;            // validates pin entered
    private int pinCount = 0;   // current count of digit entered for pin
                                // update observers when changed
    // Observers
    private ArrayList<PinEntryObserver> observers;
	
    // Store digit values
    private String d1, d2, d3, d4;
	
    // States
    private PinState zeroPinState;
    private PinState onePinState;
    private PinState twoPinState;
    private PinState threePinState;
    private PinState fourPinState;
    // Current PinState 
    private PinState currentPinState;     
    
    /**
     * Constructor for objects of class PinEntryMachine
     */
    public PinEntryMachine()
    {
        observers = new ArrayList<PinEntryObserver>() ;
        
        this.zeroPinState = new ZeroPinState(this);
        this.onePinState = new OnePinState(this);
        this.twoPinState = new TwoPinState(this);
        this.threePinState = new ThreePinState(this);
        this.fourPinState = new FourPinState(this);
        this.currentPinState = zeroPinState;
        

//        this.pin = Pin.getInstance();
        this.pin = STATIC_PIN;        
    }

    // implemented methods from interface PinStateMachine
    public void backspace() { currentPinState.backspace(); }
    public void number( String digit ) { currentPinState.number( digit); }
    public void validPin() { currentPinState.validPin(); }
    public void invalidPin() { currentPinState.invalidPin(); }

    public void setStateNoPinDigit() {
        this.currentPinState = zeroPinState;
        this.d1 = "";
        this.d2 = "";
        this.d3 = "";
        this.d4 = "";
        
        this.pinCount = 0;
        notifyObservers();
        
    }
    
   public  void setStateOnePinDigit( String digit ) {
        this.currentPinState = onePinState;
        if (digit != null) {
          this.d1 = digit;
        }
        
        this.pinCount = 1;
        notifyObservers();
    }
    
    public void setStateTwoPinDigit( String digit ) {
        currentPinState = twoPinState;
        if (digit != null)
          this.d2 = digit;
        
        this.pinCount = 2;
        notifyObservers();
    }
    
    public void setStateThreePinDigit( String digit ) {
        currentPinState = threePinState;
        if (digit != null)
          this.d3 = digit;
        
        this.pinCount = 3;
        notifyObservers();
    }
    
    public void setStateFourPinDigit( String digit ) {
        
        currentPinState = fourPinState;
        this.d4 = digit;
        
        this.pinCount = 4;
        notifyObservers(); 
        
        System.out.println(d1+d2+d3+d4);
        // Validate pin
        this.pin.validate( d1+d2+d3+d4 ); 
        
        // Reset state if pin incorrect
        if ( !this.pin.isAuthenticated() )
            this.setStateNoPinDigit();
    }
    
    // implement methods from interface PinEntrySubject
    public void registerObserver( PinEntryObserver obj ) {  
        observers.add( obj );
    }
    public void removeObserver( PinEntryObserver obj ) {
        int i = observers.indexOf(obj) ; // locate obj using ArrayList function indexOf
        if ( i >= 0 )
            observers.remove(i) ;
    }
    public void notifyObservers( ) {
        for (int i=0; i<observers.size(); i++) {
            PinEntryObserver observer = observers.get(i) ;
            observer.update( this.pinCount ) ; 
        }
    }
}
