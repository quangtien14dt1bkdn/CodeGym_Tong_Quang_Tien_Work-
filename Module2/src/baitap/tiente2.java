package baitap;

import java.util.Scanner;
public class tiente2 {
    public static void main(String[] args) {
        double vnd = 23000;
        double usd;
        Scanner scanner = new Scanner(System.in);
        System.out.print("Nhap vao so tien :");
        usd = scanner.nextDouble();
        double quydoi = usd * vnd;
        System.out.print(quydoi);

    }
}
