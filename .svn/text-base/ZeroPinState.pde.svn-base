/* 
 Starbucks Mobile App Simulator. 
 Starter Code by Paul Nguyen 
 Modified by Michael Ly
*/
/**
 * class ZeroPinState
 */
public class ZeroPinState implements PinState
{
    private PinEntryMachine pMachine;

    /**
     * Constructor for objects of class ZeroPinState
     */
    public ZeroPinState( PinEntryMachine m )
    {
        this.pMachine = m;
    }
    
    public void backspace() {
        // Do Nothing
    }
    public void number( String digit ) {
        // Change state
        pMachine.setStateOnePinDigit( digit );
    }
    public void validPin() {
        // Do Nothing
    }
    public void invalidPin() {
        // Do Nothing
    }
    
    public String toString() { return "ZeroPinState"; }
}