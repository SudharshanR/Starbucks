public interface SubjectInterface
{
	void registerObserver( ObserverInterface obj );
	void notifyObservers();
}
