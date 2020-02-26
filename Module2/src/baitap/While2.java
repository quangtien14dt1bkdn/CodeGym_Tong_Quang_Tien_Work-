package baitap;

import java.util.Scanner;


public class While2 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int count, number;
        System.out.println("Enter a number: ");
        number = input.nextInt();

        count = 1;
        while (count <= number) {
            System.out.println(count + ", ");
            count++;
        }
        System.out.println("BOOOOOM!");
    }
}

