package inheritance;

class vehicle {
	void property1 () {
		System.out.println("Vechicle runs on fuel");
	}
}

class bike extends vehicle {
	void property2() {
		System.out.println("It runs on two wheels");
	}
}

class car extends vehicle {
	void property3() {
		System.out.println("It runs on four wheels");
	}
}

public class inhert {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		bike honda = new bike();
		honda.property2();
		honda.property1();
	}

}
