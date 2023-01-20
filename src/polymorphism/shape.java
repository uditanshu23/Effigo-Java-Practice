package polymorphism;

class Shape {
    public void draw() {
        System.out.println("Drawing a shape.");
    }
}

class Square extends Shape {
    @Override
    public void draw() {
        System.out.println("Drawing a square.");
    }
}

class Circle extends Shape {
    @Override
    public void draw() {
        System.out.println("Drawing a circle.");
    }
}
