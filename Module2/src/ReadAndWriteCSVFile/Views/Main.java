package ReadAndWriteCSVFile.Views;



import CaseStudy2.Commons.FuncWriteAndReadFileCSV;
import ReadAndWriteCSVFile.Commons.FuncFileCSV;
import ReadAndWriteCSVFile.Models.Student;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    private static ArrayList<Student> ListStudent = new ArrayList<Student>();
    Scanner scanner = new Scanner(System.in);
    public static void main(String[] args) {
        displayMainMenu();

    }
    public  static void displayMainMenu() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("1.Add new student.\n"+
                "2.Show information student.\n"+
                "3.Exit.");
        switch (Integer.parseInt(scanner.nextLine())) {
            case 1:
                addNewStudent();
                break;
            case 2:
                showInformationStudent();
                break;
            case 3:
                System.exit(0);
                break;
            default:
                System.out.println("Fail");
                displayMainMenu();
        }
    }

    private static void showInformationStudent() {
        ListStudent = FuncFileCSV.getFileToStudent();
        for (Student student : ListStudent) {
            System.out.println("_____________________");
            System.out.println("name :" + student.getName());
            System.out.println("grade:" + student.getGrade());
            System.out.println("address: "+student.getAddress());
            System.out.println("_____________________");

        }
    }

    private static void addNewStudent() {
        Scanner scanner = new Scanner(System.in);
        Student student = new Student();
        ListStudent = FuncFileCSV.getFileToStudent();
        ArrayList<Student> students = new ArrayList<Student>();
        System.out.println("Enter name student");
        student.setName(scanner.nextLine());
        System.out.println("Enter grade student");
        student.setGrade(scanner.nextLine());
        System.out.println("Enter address student");
        student.setAddress(scanner.nextLine());
        ListStudent.add(student);
        FuncFileCSV.writeStudentToFileCSV(ListStudent);
        System.out.println("Complete!!!");
        scanner.nextLine();
        displayMainMenu();
    }
}
