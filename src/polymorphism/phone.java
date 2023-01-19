package polymorphism;

class mobile {
	void make() {
		System.out.println("Smartphone is the most common type of phone");
	}
	
	void brand() {
		System.out.println("Samsung is the leading brand");
	}
}

class smartphone extends mobile {
	void make() {
		System.out.println("5G is the lastest addition to the technology update");
	}
	
	void brand() {
		System.out.println("Samsung launched the first 5G compatible phone in the world");
	}
}

public class phone {

	public static void main(String[] args) {
		
		mobile a = new smartphone();
		a.make();
		a.brand();
	}

}
