/* 
 Starbucks Mobile App Simulator. 
 Starter Code by Paul Nguyen 
 Modified by Michael Ly
*/
/**
 * class FourPinState
 */
public class FourPinState implements PinState
{
    private PinEntryMachine pMachine;

    /**
     * Constructor for objects of class ZeroPinState
     */
    public FourPinState( PinEntryMachine m )
    {
        this.pMachine = m;
    }

    public void backspace() {
        // Do Nothing
    }
    public void number( String digit ) {
        // Do Nothing
    }
    public void validPin() {
        // Valid Pin Check
    }
    public void invalidPin() {
        // Change state and display error message
        pMachine.setStateNoPinDigit();
    }
    
    public String toString() { return "FourPinState"; }
}