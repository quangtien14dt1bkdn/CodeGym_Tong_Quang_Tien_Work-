package Bai6.ArrayList;

public class MyListTest {
    public static void main(String[] args) {
        Bai6.ArrayList.MyList<Double> listInteger = new Bai6.ArrayList.MyList<Double>();
        listInteger.add(1.0);
        listInteger.add(2.0);
        listInteger.add(3.0);
        listInteger.add(4.0);
        listInteger.add(5.0);

        System.out.println("element 4: "+listInteger.get(4));
        System.out.println("element 1: "+listInteger.get(1));
        System.out.println("element 2: "+listInteger.get(2));
        //listInteger.get(6);
        //System.out.println("element 6: "+listInteger.get(6));
    }
}