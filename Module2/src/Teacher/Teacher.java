package Teacher;

public class Teacher {
    private double salary;
    private double bonus;
    private double penalty;
    private double realSalary;
    private String name;
    private int age;
    private String hometown;
    private String id;

    public Teacher(double salary, double bonus, double penalty, double realSalary, String name, int age, String hometown, String id) {
        this.salary = salary;
        this.bonus = bonus;
        this.penalty = penalty;
        this.realSalary=realSalary;
        this.name = name;
        this.age = age;
        this.hometown = hometown;
        this.id = id;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public double getBonus() {
        return bonus;
    }

    public void setBonus(double bonus) {
        this.bonus = bonus;
    }

    public double getPenalty() {
        return penalty;
    }

    public void setPenalty(double penalty) {
        this.penalty = penalty;
    }

    public double getRealSalary() {
        return realSalary;
    }

    public void setRealSalary(double realSalary) {
        this.realSalary = realSalary;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getHometown() {
        return hometown;
    }

    public void setHometown(String hometown) {
        this.hometown = hometown;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}
