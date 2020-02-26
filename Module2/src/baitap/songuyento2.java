package baitap;

import java.util.Scanner;
public class songuyento2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Nhap vao n :");
        boolean status = true;
        int n = scanner.nextInt();
        if (n >= 1) {
            for (int i = 2; i < n; i++) {
                if (n % i == 0) status = false;
            }
        }
        else System.out.println("Nhap lai ! ");
        if(status) System.out.println("Yes");
        else System.out.println("No");
    }
}
