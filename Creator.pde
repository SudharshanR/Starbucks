public abstract class Creator{
        public abstract void addCount();
        public abstract int count();

	public void addToFavourites(){
		addCount();
	}
	
	public int getCount(){
		return count();
	}
}
