package baitap.MoveablePoint;

public class MovablePoint extends Point {
    private float xSpeed;
    private float ySpeed;

    public MovablePoint() {
    }

    public MovablePoint(float xSpeed, float ySpeed) {
        this.xSpeed = xSpeed;
        this.ySpeed = ySpeed;
    }

    public MovablePoint(float xSpeed, float ySpeed, float x, float y) {
        super(x, y);
        this.xSpeed = xSpeed;
        this.ySpeed = ySpeed;
    }

    public float getxSpeed() {
        return this.xSpeed;
    }

    public void setxSpeed(float xSpeed) {
        this.xSpeed = xSpeed;
    }

    public float getySpeed() {
        return this.ySpeed;
    }

    public void setySpeed(float ySpeed) {
        this.ySpeed = ySpeed;
    }

    public void setXYSpeed(float xSpeed, float ySpeed) {
        this.xSpeed = xSpeed;
        this.ySpeed = ySpeed;
    }

    public float[] getXYSpeed() {
        float[] array = new float[]{this.getX(), this.getY()};
        return array;
    }

    public String toString() {
        String var10000 = super.toString();
        return var10000 + "speed=(" + this.xSpeed + "," + this.ySpeed + ")";
    }

    public MovablePoint move() {
        MovablePoint movablePoint = new MovablePoint();
        movablePoint.setX(super.getX() + this.xSpeed);
        movablePoint.setY(super.getY() + this.ySpeed);
        movablePoint.setXYSpeed(this.xSpeed, this.ySpeed);
        return movablePoint;
    }
}