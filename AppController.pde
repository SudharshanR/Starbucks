/**
 * @author      Paul Nguyen
 * @version     Starter
 */
public class AppController implements AppScreen 
{
//venkat
  //private CoffeeProfileScreen CoffeeProfileScreen= new CoffeeProfileScreen();
private CoffeeFormScreen coffeeFormScreen= new CoffeeFormScreen();
private AnniversaryBlendScreen anniversaryBlendScreen = new AnniversaryBlendScreen();
private AddedAnniversaryBlendScreen addedAnniversaryBlendScreen = new AddedAnniversaryBlendScreen();
private CaffeVeronaScreen caffeVeronaScreen = new CaffeVeronaScreen();
private AddedCaffeVeronaScreen addedCaffeVeronaScreen = new AddedCaffeVeronaScreen();  
//venkat ends
    /* dinesh */
    
   //  private drinkMainScreen drinkMainScreen1 = new drinkMainScreen();
    private coldmainscreen coldmainscreen1 = new coldmainscreen();
    
private blendedCoffee blecof = new blendedCoffee();
    
    private blendedCoffee2 blecof2 = new blendedCoffee2();
    private blendedCoffee3 blecof3 = new blendedCoffee3();
  
    private refresher ref = new refresher();
    
    private refresher2 ref2 = new refresher2();
    
    private refresher3 ref3 = new refresher3();
    
    private favouritescreen favscr = new favouritescreen();
    private favouritescreen2 favscr2 = new favouritescreen2();
    
     
    private card1 c1 = new card1();
    private card2 c2 = new card2();
    private rewardd1 rew1= new rewardd1();
    
    private rewardd2 rew2= new rewardd2();
    private gift gift1 = new gift();
    private mapp mapp1 = new mapp();
    
    
    //rajan
     private AppScreen current;
    private Pin thePin;
	private MenuCommand1 coldCommand=new MenuCommand1();
	
    private Card currentCard;
    private drinkMainScreen drinkMainScreen1 = new drinkMainScreen();
    private BoldPick boldPick = new BoldPick();
    private BoldPickRm boldPickRm=new BoldPickRm();
    private Tea1 tea1 = new Tea1();
    private Tea1Rm tea1Rm=new Tea1Rm();
    private hotMainScreen hotMainScreen1 = new hotMainScreen();
    private MyCardsMainScreen cardsMainScreen = new MyCardsMainScreen();
    private MyCardsPayScreen cardsPayScreen = new MyCardsPayScreen();
    private MyCardsOptionsScreen cardOptionsScreen = new MyCardsOptionsScreen();
    private RewardScreen rewardScreen = new RewardScreen();
    private FindStarbuckScreen findStarbucksScreen = new FindStarbuckScreen();
    private PaymentScreen paymentScreen = new PaymentScreen();
    private PinScreen pinScreen = new PinScreen();
    private Setting homeSettingScreen = new Setting();
    private AddCardScreen addCardScreen = new AddCardScreen();
    private BrewedCoffe brewedCoffe=new BrewedCoffe();
    private BrewedTea brewedTea=new BrewedTea();
    private MyFav myFav =new MyFav();
	
    private ReloadSummaryScreen reloadSummaryScreen=new ReloadSummaryScreen();
 
    
    /* SUD START */
    private CoffeeProfile coffeeprofile = new CoffeeProfile();
    private AddDecafWillow addDecaf = new AddDecafWillow();
    private AddBreakfastBlend addBreakfast = new AddBreakfastBlend();
    private RemoveDecafWillow remDecaf = new RemoveDecafWillow();
    private RemoveBreakfastBlend remBreakfast = new RemoveBreakfastBlend();
    /* SUD END */
    
    /*HETAL START*/
    private Setting settingScreen = new Setting();
    private appleBranMuffinScreenRem appleBranMuffinScreenRem = new appleBranMuffinScreenRem();
    private appleFritterScreenRem appleFritterScreenRem = new appleFritterScreenRem();
    private cheeseAndFruitScreenRem cheeseAndFruitScreenRem = new cheeseAndFruitScreenRem();
    private chickenAndHummusScreenRem chickenAndHummusScreenRem = new chickenAndHummusScreenRem();
    private foodScreen foodScreen = new foodScreen();
    private bakeryScreen bakeryScreen = new bakeryScreen();
    private bistroScreen bistroScreen = new bistroScreen();
    private appleBranMuffinScreen appleBranMuffinScreen = new appleBranMuffinScreen();
    private appleFritterScreen appleFritterScreen = new appleFritterScreen();
    private cheeseAndFruitScreen cheeseAndFruitScreen = new cheeseAndFruitScreen();
    private chickenAndHummusScreen chickenAndHummusScreen = new chickenAndHummusScreen();
//    private een myFavScreen = new myFavScreen();
    private myFavFoodScreen myFavFoodScreen = new myFavFoodScreen();
    /*HETAL END*/    
    
    /* commands */
    private MenuCommand slot1 = new MenuCommand(cardsMainScreen);
    private MenuCommand slot2 = new MenuCommand(paymentScreen);
    private MenuCommand slot3 = new MenuCommand(rewardScreen);
    private MenuCommand slot4 = new MenuCommand(findStarbucksScreen);
    private MenuCommand slot5 = new MenuCommand(settingScreen);
    private MenuCommand1 solt11=new MenuCommand1(hotMainScreen1);
    private MenuCommand1 solt22=new MenuCommand1(coldmainscreen1);
    
    private void configScreens()
    {
		addDecaf.registerObserver(favscr);
		addBreakfast.registerObserver(favscr);
		anniversaryBlendScreen.registerObserver(favscr);
		caffeVeronaScreen.registerObserver(favscr);
		boldPick.registerObserver(favscr);
		tea1.registerObserver(favscr);
		appleBranMuffinScreen.registerObserver(favscr);
		appleFritterScreen.registerObserver(favscr);
		//cheeseAndFruitScreen.registerObserver(favscr);
		//chickenAndHummusScreen.registerObserver(favscr);
		blecof2.registerObserver(favscr);
		ref2.registerObserver(favscr);
      //venkat
        this.cardsMainScreen.setCoffeeProfileScreen(this.coffeeprofile);
        //this.cardsMainScreen.setCoffeeProfileScreen(this.CoffeeProfileScreen);
      this.coffeeprofile.setCoffeeFormScreen(this.coffeeFormScreen);
      this.coffeeFormScreen.setAnniversaryBlendScreen(this.anniversaryBlendScreen);
      this.anniversaryBlendScreen.setAddedAnniversaryBlendScreen(this.addedAnniversaryBlendScreen);
      this.coffeeFormScreen.setCaffeVeronaScreen(this.caffeVeronaScreen);      
      this.caffeVeronaScreen.setAddedCaffeVeronaScreen(this.addedCaffeVeronaScreen);
      
      //venkat ends  
        this.cardsMainScreen.setOptionsScreen(this.cardOptionsScreen);
        this.cardsPayScreen.setCardsMainScreen(this.cardsMainScreen);
        this.cardOptionsScreen.setCardsMainScreen(this.cardsMainScreen);
        this.cardsMainScreen.setCardsPayScreen(this.cardsPayScreen);
      //  this.settingScreen.setAddCardScreen(this.addCardScreen);
        this.addCardScreen.setCardsMainScreen(this.cardsMainScreen);
        this.addCardScreen.setSettingsScreen(this.settingScreen);
        this.cardsMainScreen.setdrinkMainScreen1(this.drinkMainScreen1);
        this.cardsMainScreen.setfavouritescreen(this.favscr);
        this.drinkMainScreen1.sethotMainScreen1(this.hotMainScreen1);
        this.hotMainScreen1.setBrewedCoffeScreen(this.brewedCoffe);
        this.hotMainScreen1.setBrewedTeaScreen(this.brewedTea);
        this.brewedCoffe.setBoldPick(this.boldPick);
        this.brewedTea.setTea1Screen(this.tea1);
        this.brewedTea.setHotMainScreen(this.hotMainScreen1);
        this.tea1.setTea1RmScreen(this.tea1Rm);
		this.boldPick.setBrewedCoffeScreen(this.brewedCoffe);
		this.hotMainScreen1.setDrinkMainScreen(this.drinkMainScreen1);
        this.boldPick.setBoldPickRmScreen(this.boldPickRm);
        this.c1.setReloadSummaryScreen(this.reloadSummaryScreen);
        this.drinkMainScreen1.setcardsMainScreen1(this.cardsMainScreen);
        this.hotMainScreen1.setcardsMainScreen1(this.cardsMainScreen);
this.boldPickRm.setBoldPickScreen(this.boldPick);
this.tea1.setBrewedTea(this.brewedTea);
this.tea1Rm.setTea1Screen(this.tea1);

	
        this.hotMainScreen1.setcardsMainScreen1(this.cardsMainScreen);
        this.drinkMainScreen1.setcommand(this.coldCommand);	
        this.brewedCoffe.setcardsMainScreen1(this.cardsMainScreen);
		this.brewedCoffe.setHotMainScreen(this.hotMainScreen1);
        this.brewedTea.setcardsMainScreen1(this.cardsMainScreen);
        this.tea1.setcardsMainScreen1(this.cardsMainScreen);
        this.tea1Rm.setcardsMainScreen1(this.cardsMainScreen);
        this.boldPickRm.setcardsMainScreen1(this.cardsMainScreen);
        this.myFav.setcardsMainScreen1(this.cardsMainScreen);
        //dinesh's code
         this.cardsMainScreen.setdrinkMainScreen1(this.drinkMainScreen1);
		 this.coldmainscreen1.setDrinkMainScreen(this.drinkMainScreen1);
        this.drinkMainScreen1.setcoldMainScreen1(this.coldmainscreen1);
        this.coldmainscreen1.setblendedCoffee(this.blecof);
        this.coldmainscreen1.setrefresher(this.ref);
        this.blecof.setblendedCoffee2(this.blecof2);
        this.ref.setrefresher2(this.ref2);
        this.blecof2.setblendedCoffee3(this.blecof3);
        this.ref2.setrefresher3(this.ref3);  
        this.favscr.setMyFavScreen(this.myFav);
        this.favscr.setfavouritescreen2(this.favscr2);
        this.cardsMainScreen.setcard1(this.c1);
        this.c1.setcard2(this.c2);
         this.cardsMainScreen.setrewardd1(this.rew1);
                this.cardsMainScreen.setgift(this.gift1);
                this.cardsMainScreen.setmapp(this.mapp1);
       
       this.blecof.setColdMainScreen1(this.coldmainscreen1);
        this.blecof2.setBlendedCoffeeScreen(this.blecof);
		this.blecof3.setBlendedCoffee2(this.blecof2);
		this.rew1.setrewardd2(this.rew2);
       
        this.coldmainscreen1.setCardsMainScreen(this.cardsMainScreen);
        this.blecof.setCardsMainScreen(this.cardsMainScreen);
        this.blecof2.setCardsMainScreen(this.cardsMainScreen);
        this.blecof3.setCardsMainScreen(this.cardsMainScreen);
        this.c1.setCardsMainScreen(this.cardsMainScreen);
        this.c2.setCardsMainScreen(this.cardsMainScreen);
        this.ref.setCardsMainScreen(this.cardsMainScreen);
        this.ref2.setCardsMainScreen(this.cardsMainScreen);
        this.ref3.setCardsMainScreen(this.cardsMainScreen);
        this.ref.setColdMainScreen1(this.coldmainscreen1);
this.ref2.setRef(this.ref);
this.ref3.setRef2(this.ref2);
        this.rew1.setCardsMainScreen(this.cardsMainScreen);
        this.rew2.setCardsMainScreen(this.cardsMainScreen);
        this.gift1.setCardsMainScreen(this.cardsMainScreen);
        this.mapp1.setCardsMainScreen(this.cardsMainScreen);
        
      /* SUD START */
	  this.anniversaryBlendScreen.setMyCardMainScreen(this.cardsMainScreen);
	  this.addedAnniversaryBlendScreen.setMyCardMainScreen(this.cardsMainScreen);
	  this.anniversaryBlendScreen.setCoffeeFormScreen(this.coffeeFormScreen);
	  this.addedAnniversaryBlendScreen.setCoffeeFormScreen(this.coffeeFormScreen);
	  this.caffeVeronaScreen.setMyCardMainScreen(this.cardsMainScreen);
	  this.addedCaffeVeronaScreen.setMyCardMainScreen(this.cardsMainScreen);
	  this.caffeVeronaScreen.setCoffeeFormScreen(this.coffeeFormScreen);
	  this.addedCaffeVeronaScreen.setCoffeeFormScreen(this.coffeeFormScreen);
	  this.appleBranMuffinScreen.setMyCardMainScreen(this.cardsMainScreen);
	  this.appleBranMuffinScreenRem.setMyCardMainScreen(this.cardsMainScreen);
	  this.appleFritterScreen.setMyCardMainScreen(this.cardsMainScreen);
	  this.appleFritterScreenRem.setMyCardMainScreen(this.cardsMainScreen);
      this.coffeeFormScreen.setMyCardMainScreen(this.cardsMainScreen);
	  this.boldPick.setMyCardMainScreen(this.cardsMainScreen);
	  
        this.cardsMainScreen.setCoffeeProfileScreen(this.coffeeprofile);
        this.cardsMainScreen.setSettingScreen(this.homeSettingScreen);
//        this.cardsMainScreen.setMyFavouriteScreen(this.myFav);
        this.coffeeprofile.setAddDecafWillow(this.addDecaf);
        this.coffeeprofile.setAddBreakfastBlend(this.addBreakfast);
        this.coffeeprofile.setMyCardMainScreen(this.cardsMainScreen);
		this.favscr.setMyCardMainScreen(this.cardsMainScreen);
		this.homeSettingScreen.setMyCardMainScreen(this.cardsMainScreen);
        
        this.addDecaf.setCoffeeProfileScreen(this.coffeeprofile);
        this.addDecaf.setRemoveDecafWillow(this.remDecaf);
        this.addDecaf.setMyCardMainScreen(this.cardsMainScreen);
        
        this.addBreakfast.setCoffeeProfileScreen(this.coffeeprofile);
        this.addBreakfast.setRemoveBreakfastBlend(this.remBreakfast);
        this.addBreakfast.setMyCardMainScreen(this.cardsMainScreen);
        
        this.remDecaf.setCoffeeProfileScreen(this.coffeeprofile);
        this.remDecaf.setMyCardMainScreen(this.cardsMainScreen);
        
        this.remBreakfast.setCoffeeProfileScreen(this.coffeeprofile);
        this.remBreakfast.setMyCardMainScreen(this.cardsMainScreen);
        /* SUD END */
        
        /*HETAL START*/
        this.cardsMainScreen.setFoodScreen(this.foodScreen);
        this.cardsMainScreen.setMyFavScreen(this.favscr);
        this.foodScreen.setBakeryScreen(this.bakeryScreen);
        this.foodScreen.setBistroScreen(this.bistroScreen);
        this.foodScreen.setCardsMainScreen(this.cardsMainScreen);
        this.bakeryScreen.setAppleBranMuffinScreen(this.appleBranMuffinScreen);
        this.bakeryScreen.setAppleFritterScreen(this.appleFritterScreen);
        this.bakeryScreen.setFoodScreen(this.foodScreen);
        this.bistroScreen.setCheeseAndFruitScreen(this.cheeseAndFruitScreen);
        this.bistroScreen.setChickenAndHummusScreen(this.chickenAndHummusScreen);
        this.bistroScreen.setFoodScreen(this.foodScreen);
        this.appleBranMuffinScreen.setBakeryScreen(this.bakeryScreen);
        this.appleBranMuffinScreen.setAppleBranMuffinScreenRem(this.appleBranMuffinScreenRem);
        this.appleBranMuffinScreenRem.setBakeryScreen(this.bakeryScreen);
        this.appleFritterScreen.setBakeryScreen(this.bakeryScreen);
        this.appleFritterScreenRem.setBakeryScreen(this.bakeryScreen);
        this.appleFritterScreen.setAppleFritterScreenRem(this.appleFritterScreenRem);
        this.cheeseAndFruitScreen.setBistroScreen(this.bistroScreen);
        this.cheeseAndFruitScreenRem.setBistroScreen(this.bistroScreen);
        this.cheeseAndFruitScreen.setCheeseAndFruitScreenRem(this.cheeseAndFruitScreenRem);
        this.chickenAndHummusScreen.setBistroScreen(this.bistroScreen);        
        this.chickenAndHummusScreenRem.setBistroScreen(this.bistroScreen);        
        this.chickenAndHummusScreen.setChickenAndHummusScreenRem(this.chickenAndHummusScreenRem);        
        //this.myFavScreen.setMyFavFoodScreen(this.myFavFoodScreen);
        //this.myFavScreen.setCardsMainScreen(this.cardsMainScreen);
        //this.myFavFoodScreen.setMyFavScreen(this.myFavScreen); 
        /*HETAL END*/     
    }    

    public void startUp() 
    {
        this.current = this.pinScreen;
        this.thePin = STATIC_PIN;
        this.currentCard = new Card();
        configScreens() ;
    }
    
    public Card getCurrentCard() 
    {
        return this.currentCard;
    }
    
    public void setCurrentCard(Card newCard) 
    {
      
        this.currentCard = newCard;
    }

    /**
     * Pass user's touch coordinates to current screen.
     *
     * @param x MouseX coordinate of the user input
     * @param y MouseY coordinate of the user input
     * @return void
     */
    public void touch(int x, int y) 
    {
        current.touch(x, y);
        if ( thePin.isAuthenticated() &&  isCurrentScreenPinScreen() ) 
        {
          setScreen(cardsMainScreen);  
        }
    }
    
    /**
     * Display current screen's graphical content.
     *
     * @return void
     */
    public void display() 
    {
     // System.out.println("THE CURENT SCREEN BEFORE DISPLAY IS---->"+current);
        current.display();
    }
    
    /**
     * Perform actions if topLeftCmd button pressed.
     *
     * @return void
     */
    public void topLeftCmd() {
        if (!thePin.isAuthenticated())
            /* do nothing */ ;
        else
            this.current.topLeftCmd();
    }

    /**
     * Perform actions if topRightCmd button pressed.
     *
     * @return void
     */
    public void topRightCmd() {
        if (!thePin.isAuthenticated())
            /* do nothing */ ;
        else
            this.current.topRightCmd();
    }
    
    public void setScreen(AppScreen screen) {
    //  System.out.println("IN SET SCREEN--->"+screen);
        this.current = screen;
    }
    
    public String getCurrentScreenName()
    {
        return current.getClass().getName() ;
    }

    private boolean isCurrentScreenPinScreen() {
        return current.getClass().getName().endsWith("PinScreen");
    }

    public void menu1() {
        if (!thePin.isAuthenticated())
            // do nothing 
            ;
        else
            slot1.execute();
    }

    public void menu2() {
        if (!thePin.isAuthenticated())
            // do nothing 
            ;
        else
            slot2.execute();
    }

    public void menu3() {
        if (!thePin.isAuthenticated())
            // do nothing 
             ;
        else
            slot3.execute();
    }

    public void menu4() {
        if (!thePin.isAuthenticated())
            //
            ;
        else
            slot4.execute();
    }

    public void menu5() {
        if (!thePin.isAuthenticated())
            // 
            ;
        else
            slot5.execute();
    }
	 public void menu11() {
        if (!thePin.isAuthenticated())
            // 
            ;
        else
          
            solt11.execute();
    }
    public void menu22(){
     if (!thePin.isAuthenticated())
            // 
            ;
        else
            solt22.execute();
     
    }
}

