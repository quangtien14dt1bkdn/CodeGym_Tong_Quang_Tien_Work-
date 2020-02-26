package baitap;

import java.util.Scanner;

public class diemthi2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Nhap vao diem thi :");
        float score = scanner.nextFloat();
        String grade;
        if (score >= 8.5)
            grade = "A";
        else if (score >= 7.0)
            grade = "B";
        else if (score >= 5.5)
            grade = "C";
        else if (score >= 4.0)
            grade = "D";
        else
            grade = "F";
        System.out.println(grade);
    }

}
