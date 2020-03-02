package baitap.NgonNguJava;

import java.util.Scanner;

public class NamNhuan2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter year :");

        int year = scanner.nextInt();
        if (year % 4 == 0 && year % 100 != 0) {
            System.out.println("YES");
        } else if (year % 100 == 0 && year % 400 != 0) {
            System.out.println("NO");
        } else if (year % 100 == 0 && year % 400 == 0) {
            System.out.println("YES");
        }
    }
}
