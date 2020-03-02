package baitap.MangVaPhuongThuc;

import java.util.Scanner;
public class ChenPhanTu {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int[] arr;
        arr = new int[10];
        arr[0] = 10;
        arr[1] = 4;
        arr[2] = 6;
        arr[3] = 7;
        arr[4] = 8;
        System.out.println("Enter the position:");

        int index = input.nextInt();
        System.out.println("Enter the value:");
        int value = input.nextInt();
        if (index >= 1 && index < arr.length - 1) {
            for (int i = (arr.length - 1); i > (index - 1); i--) {
                arr[i] = arr[i - 1];
            }
            arr[index - 1] = value;
        }
//        System.out.println(arr[index - 1]);
        System.out.printf("%-20s%s", "Reverse array: ", "");
        for (int j = 0; j < arr.length; j++) {
            System.out.print(arr[j] + "\t");
        }
    }

}
