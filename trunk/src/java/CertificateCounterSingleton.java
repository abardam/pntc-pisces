
public class CertificateCounterSingleton {
	private static CertificateCounterSingleton counter;
	private int count;
	private CertificateCounterSingleton(){
		count = 0;
	}
	
	public int getNext(){
		return count++;
	}
	
	public static CertificateCounterSingleton getCertificateCounterSingleton(){
		return counter;
	}
	
	
}
