package baitap.NgonNguJava;

import java.util.Scanner;
public class MaxArray2D {
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);
        int[][] matrix = new int[3][3];

        System.out.println("Enter " + matrix.length + " rows and " +
                matrix[0].length + " columns: ");
        for (int row = 0; row < matrix.length; row++) {
            for (int column = 0; column < matrix[row].length; column++) {
                matrix[row][column] = input.nextInt();
            }
        }
        int max= matrix[0][0];
        for (int row = 0; row < matrix.length; row++) {
            for (int column = 0; column < matrix[row].length; column++) {
                if(matrix[row][column]>max) max = matrix[row][column];
            }
        }
        System.out.println(max);

    }
}
