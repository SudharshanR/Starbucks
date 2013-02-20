/* 
 Starbucks Mobile App Simulator. 
 Starter Code by Paul Nguyen 
 Modified by Michael Ly
*/
/**
 * class TwoPinState
 */
public class TwoPinState implements PinState
{
    private PinEntryMachine pMachine;

    /**
     * Constructor for objects of class ZeroPinState
     */
    public TwoPinState( PinEntryMachine m )
    {
        this.pMachine = m;
    }

    public void backspace() {
        // Change state
        pMachine.setStateOnePinDigit( null );
    }
    public void number( String digit ) {
        // Change state
        pMachine.setStateThreePinDigit( digit );
    }
    public void validPin() {
        // Do Nothing
    }
    public void invalidPin() {
        // Do Nothing
    }
    
    public String toString() { return "TwoPinState"; }
}