/**
 * @author      Paul Nguyen
 * @author      David Tedjasatyawira
 * @author      Robert Snow <rob.snow14 @ gmail.com>
 * @version     0.8
 * @since       2012-04-26
 */
public class Card 
{
    private float balance = 16.50f; 
    private String cardId = "1234567890123456";
    private String cardCode = "11111111";
    public Card()
    {
    }
    public Card(String id, String code)
    {
        this.cardId = id ;
        this.cardCode = code ;
    }
    // return cardId, this function is for debug purposes
    public String getCardId()
    {
        return cardId; 
    }
    
    // return cardCode, this function is for debug purposes
    public String getCardCode()
    {
        return cardCode;
    }
    
    /**
     * Returns current card's balance as a String
     *
     * @return String
     */
    public String getBalance() 
    {
        //DT[3.27.12]: Add DecimalFormat object so that it can display 2 decimal digits
        //Otherwise, $16.50 will be displayed as $16.5
        DecimalFormat df = new DecimalFormat("0.00");
        return df.format(balance);
    }
    /**
     * Deduct the amount specified from the current card's balance
     *
     * @param amt Amount to be deducted from current card's balance
     * @return void
     */
    public void pay(float amt) 
    {
        this.balance -= amt;
    }
    
    /**
     * Reset the current card's balance to 16.50f for demonstration purposes
     *
     * @return void
     */
    public void reloadBalance()
    {
        this.balance = 16.50f;
    }
}
