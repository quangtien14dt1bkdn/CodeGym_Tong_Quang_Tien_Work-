package OPP.Circle;

public class quadraticEquation {
    private double a,b, c;
    public quadraticEquation() {
    }
    public quadraticEquation(double a, double b, double c) {
        this.a=a;
        this.b=b;
        this.c=c;
    }
//constructor
    public double getA() {
        return this.a;
    }
    public double getB() {
        return this.b;
    }
    public double getC() {
        return this.c;
    }
    public double getDiscriminant() {
        return Math.pow(getB(), 2) - 4 * getA() * getC();
    }
    public double root1() {
        return (-getB() + Math.pow(getDiscriminant(), 0.5)) / (2 * getA());
    }
    public double root2() {
        return (-getB() - Math.pow(getDiscriminant(), 0.5)) / (2 * getA());
    }

}
