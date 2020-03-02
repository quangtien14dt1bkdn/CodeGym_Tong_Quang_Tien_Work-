package baitap.MoveablePoint;

public class PointTest {
    public PointTest() {
    }

    public static void main(String[] args) {
        Point point = new Point();
        System.out.println(point);
        point = new Point(2.0F, 1.5F);
        System.out.println(point);
    }
}
