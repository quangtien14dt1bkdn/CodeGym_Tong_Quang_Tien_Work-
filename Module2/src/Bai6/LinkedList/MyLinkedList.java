package Bai6.LinkedList;

public class MyLinkedList {
    private  Node head;  //tạo một biến head với kiểu dữ liệu là node
    private  int numNodes;   //mặc định numNodes = 0

    public MyLinkedList(Object data) {
        head = new Node(data);   //gán một đối tượng thuộc lớp Node cho biến head với tham số truyền vào là data
    }

    private class Node {
        private Node next;
        private Object data;

        public Node(Object data) {
            this.data = data;
        }

        public Object getData() {
            return this.data;
        }
    }
    public void add(int index, Object data) {
        Node temp = head;
        Node holder;

        for(int i=0; i < index-1 && temp.next != null; i++) {//coi như gán vào vị trí thứ index(là sau head index biến).
            //chạy đến vị trí index-2 bằng cách chạy từ vị trí bắt đầu (head) index-2 lần.
            temp = temp.next;  // khi kết thúc for gán biến temp ở vị trí index-2 bằng biến nằm sau (ở vị trí index-1)
        }
        holder = temp.next;  // gán biến holder bằng biến nằm sau biến temp (biến đó lúc này là biến ở vị trí index);
        temp.next = new Node(data);  //gán biến nằm ở vị trí index bằng giá trị data truyền vào.
        temp.next.next = holder;   //gán biến nằm sau biến mới (biến ở vị trí index) là biến nằm sau biến ở vị trí index củ
        numNodes++;
    }
    public void addFirst(Object data) {
        Node temp = head;
        head = new Node(data);
        head.next = temp;   //gán cho biến nằm sau biến head là temp(là head trước đó).
        numNodes++;
    }
    public Node get(int index){
        Node temp=head;
        for(int i=0; i<index; i++) {
            temp = temp.next;
        }
        return temp;
    }
    public void printList() {
        Node temp = head;
        while(temp != null) {
            System.out.println(temp.data);
            temp = temp.next;
        }
    }
}
