package polymorphism;

public class MainApp {

	public static void main(String[] args) {
		Shape shape1 = new Square();
        Shape shape2 = new Circle();
        
        shape1.draw();
        shape2.draw();
	}

}
