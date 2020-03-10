package Hotel;

public class Person {
    private String name; // ten
    private int age; // tuoi
    private String passport; // ma so
    private Room room; // loai phong ( catelory + price)
    private int numberRent; // so ngay thue

    public Person(String name, int age, String passport, Room room, int numberRent) {
        this.name = name;
        this.age = age;
        this.passport = passport;
        this.room = room;
        this.numberRent = numberRent;
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

    public String getPassport() {
        return passport;
    }

    public void setPassport(String passport) {
        this.passport = passport;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public int getNumberRent() {
        return numberRent;
    }

    public void setNumberRent(int numberRent) {
        this.numberRent = numberRent;
    }

    @Override
    public String toString() {
        return "Person{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", passport='" + passport + '\'' + room.toString() +
                '}';
    }
}
