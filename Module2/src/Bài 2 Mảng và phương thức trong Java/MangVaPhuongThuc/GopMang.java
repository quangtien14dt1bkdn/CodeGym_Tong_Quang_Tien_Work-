package baitap.MangVaPhuongThuc;

import java.util.Scanner;

public class GopMang {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        int[][] matrix1 = new int[2][3];
        int[][] matrix2 = new int[3][4];
        System.out.println("Enter " + matrix1.length + " rows and " + matrix1[0].length + " columns: ");
        for (int row = 0; row < matrix1.length; row++) {
            for (int column = 0; column < matrix1[row].length; column++) {
                matrix1[row][column] = input.nextInt();
            }
        }

        System.out.println("Enter " + matrix2.length + " rows and " + matrix2[0].length + " columns: ");
        for (int row = 0; row < matrix2.length; row++) {
            for (int column = 0; column < matrix2[row].length; column++) {
                matrix2[row][column] = input.nextInt();
            }
        }

        int columnx = Math.max(matrix1.length, matrix2.length);
        int rowx = matrix1[0].length + matrix2[0].length;
        int[][] matrix3 = new int[rowx][columnx];

        System.out.println("Enter " + matrix3.length + " rows and " + matrix3[0].length + " columns: ");
        for (int row = 0; row < rowx; row++) {
            for (int column = 0; column < columnx; column++) {
            }
        }


    }
}
