package Bai6.LinkedList;

public class TestMyLinkedList {
    public static void main(String[] args) {
        System.out.println("/=/=/=/= TESTING /=/=/=/=");
        MyLinkedList ll = new MyLinkedList(10);
        ll.addFirst(11);
        ll.addFirst(12);
        ll.addFirst(13);

        //ll.add(7, 6);
        ll.add(8, 6);
        ll.add(4, 9);
        ll.printList();
    }
}
