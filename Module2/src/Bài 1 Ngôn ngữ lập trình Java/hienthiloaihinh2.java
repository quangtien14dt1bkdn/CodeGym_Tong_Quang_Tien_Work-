package baitap.NgonNguJava;

import java.util.Scanner;

public class hienthiloaihinh2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int choice = -1;
        while (choice != 0) {
            System.out.println("Menu");
            System.out.println("1. Draw the triangle");
            System.out.println("2. Draw the square");
            System.out.println("3. Draw the rectangle");
            System.out.println("0. Exit");
            System.out.println("Enter your choice: ");
            choice = scanner.nextInt();

            switch (choice) {
                case 1:
                    System.out.println("Draw the triangle");
                    for(int i=1; i<=5; i++)
                    {
                        for(int j=1; j<i; j++){
                            System.out.print("*");
                        }
                    }
                    break;
            }
        }
    }
}
