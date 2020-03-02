package baitap.MoveablePoint;

public class MoveblePointTest {
    public MoveblePointTest() {
    }

    public static void main(String[] args) {
        MovablePoint movablePoint = new MovablePoint();
        movablePoint.setXY(1.3F, 1.6F);
        movablePoint.setXYSpeed(2.0F, 3.0F);
        System.out.println(movablePoint.move());
        movablePoint = new MovablePoint(2.0F, 1.5F);
        System.out.println(movablePoint);
    }
}
