/* 
 Starbucks Mobile App Simulator. 
 Starter Code by Paul Nguyen 
 Modified by Michael Ly
*/

public class Pin {

  private String secretPin = "1234" ;
  private boolean authenticated = false ;

  public boolean isAuthenticated() {
    return this.authenticated ;
  }

  public void validate( String pinInput ) {
    if ( secretPin.equals(pinInput) ) {
      this.authenticated = true ;
      System.out.println( "Valid Pin" ) ;
    }
    else {
      this.authenticated = false ;
      System.out.println( "Invalid Pin" ) ;
    }
  }
}

