package testCollectionSort;

import java.util.*;

class TestSort4 {

    public static void main(String[] args) {
        ArrayList<Employee> al = new ArrayList<Employee>();
        al.add(new Employee(101, "Peter", 23));
        al.add(new Employee(106, "Marry", 27));
        al.add(new Employee(105, "John", 21));
        al.add(new Employee(100, "John", 23));
        al.add(new Employee(100, "John", 19));



        System.out.println("sorting by age...");

        Collections.sort(al, new AgeComparator());
        for (Employee st : al) {
            System.out.println(st.id + " " + st.name + " " + st.age);
        }
        System.out.println("Sorting by Name...");

        Collections.sort(al, new NameComparator());
        for (Employee st : al) {
            System.out.println(st.id + " " + st.name + " " + st.age);
        }

    }
}