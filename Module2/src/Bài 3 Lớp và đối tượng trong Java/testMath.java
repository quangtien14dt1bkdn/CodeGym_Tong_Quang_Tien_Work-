package OPP.Circle;

import java.util.Scanner;
public class testMath {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        quadraticEquation x = new quadraticEquation(-1, 4, 0);
        //System.out.println(x.getA());
        System.out.println(x.getDiscriminant());
        System.out.println(x.getA());
        System.out.println(x.getB());
        System.out.println(x.getC());
//        if (x.getDiscriminant() >= 0) {
//            x.root1();
//            x.root2();
        System.out.println(x.root1());
        System.out.println(x.root2());
//        } else System.out.print("Vo nghiem!!");
    }
}
