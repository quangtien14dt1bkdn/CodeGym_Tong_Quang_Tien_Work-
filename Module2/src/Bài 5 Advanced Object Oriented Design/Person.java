package testJava;

public class Person {
    public String name ;
    private String secret;

    public Person(String name) { //constructor
        this.name = name;
    }
    public void showSecret() {
        System.out.println("Secret:" + this.secret);
    }
    class Diary{
        public void Logging(){
            System.out.println("Secret:" + secret);
        }
    }
}
