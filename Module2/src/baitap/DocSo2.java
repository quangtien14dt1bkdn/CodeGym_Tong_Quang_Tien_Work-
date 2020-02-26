package baitap;

import java.util.Scanner;
public class DocSo2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter your number : ");
        int number = scanner.nextInt();
        String x = "teen";
        String y = "ty";
        String mot = "one";
        String hai = "two";
        String ba = "three";
        String bon = "four";
        String nam = "five";
        String sau = "six";
        String bay = "seven";
        String tam = "eight";
        String chin = "nine";
        if (number < 10 && number > 0) {
            switch (number) {
                case 1:
                    System.out.println(mot);
                    break;
                case 2:
                    System.out.println(hai);
                    break;
                case 3:
                    System.out.println(bon);
                    break;
                case 4:
                    System.out.println(nam);
                    break;

            }
        }
    }
}


