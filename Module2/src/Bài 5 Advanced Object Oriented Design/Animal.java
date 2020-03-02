package testJava;

public class Animal {
    private String name;

    private Animal(String name) {
        //private constructor
        this.name = name;
    }

    public String getName() {
        return this.name;
    }
}
