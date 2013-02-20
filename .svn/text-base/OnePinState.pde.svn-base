/* 
 Starbucks Mobile App Simulator. 
 Starter Code by Paul Nguyen 
 Modified by Michael Ly
*/
/**
 * class OnePinState
 */
public class OnePinState implements PinState
{
    private PinEntryMachine pMachine;

    /**
     * Constructor for objects of class ZeroPinState
     */
    public OnePinState( PinEntryMachine m )
    {
        this.pMachine = m;
    }

    public void backspace() {
        // Change state
        pMachine.setStateNoPinDigit();
    }
    public void number( String digit ) {
        // Change state
        pMachine.setStateTwoPinDigit( digit );
    }
    public void validPin() {
        // Do Nothing
    }
    public void invalidPin() {
        // Do Nothing
    }
    
    public String toString() { return "OnePinState"; }
}