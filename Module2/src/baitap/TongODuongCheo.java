package baitap;

import java.util.Scanner;
public class TongODuongCheo {
    public static void main(String[] args) {

        int[][] matrix;
        Scanner input = new Scanner(System.in);
        int n;

        System.out.print("Enter size of matrix :");
        n = input.nextInt();
        matrix = new int[n][n];

        //int a = matrix.length;
        System.out.println("Enter " + matrix.length + " rows and " + matrix[0].length + " columns: ");
        for (int row = 0; row < matrix.length; row++) {
            for (int column = 0; column < matrix[row].length; column++) {
                matrix[row][column] = input.nextInt();
            }
        }
        int sum1=0,sum2=0;
        for (int i = 0; i < n; i++) {
            sum2+=matrix[i][n-i-1];
            sum1+=matrix[i][i];
        }
        System.out.println(sum1);
        System.out.println(sum2);

//        int x = n;
//        for (int i = 0; i < n; i++) {
//            sum2 += matrix[x][i];
//            x--;
//        }
//        System.out.println(sum2);

    }
}
