/* 
 Starbucks Mobile App Simulator. 
 Starter Code by Paul Nguyen 
 Modified by Michael Ly
*/
/**
 * class ThreePinState
 */
public class ThreePinState implements PinState
{
    private PinEntryMachine pMachine;

    /**
     * Constructor for objects of class ZeroPinState
     */
    public ThreePinState( PinEntryMachine m )
    {
        this.pMachine = m;
    }

    public void backspace() {
        // Change state
        pMachine.setStateTwoPinDigit( null );
    }
    public void number( String digit ) {
        // Change state
        pMachine.setStateFourPinDigit( digit );
    }
    public void validPin() {
        // Do Nothing
    }
    public void invalidPin() {
        // Do Nothing
    }
    
    public String toString() { return "ThreePinState"; }
}