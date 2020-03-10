package School;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        School school = new School();
        while (true) {
            System.out.println("Application Student Manager");
            System.out.println("Enter 1: To insert student ");
            System.out.println("Enter 2: To get 20 year old students");
            System.out.println("Enter 3: To get 23 year old and DN hometown");
            System.out.println("Enter 4: Show student");
            System.out.println("Enter 5:To exit");
            String line = scanner.nextLine();
            switch (line) {
                case "1":
                {
                    System.out.print("Enter name: ");
                    String name = scanner.nextLine();
                    System.out.print("Enter age ");
                    int age = Integer.parseInt(scanner.nextLine());
                    System.out.print("Enter hometown: ");
                    String hometown = scanner.nextLine();
                    System.out.print("Enter classStudent: ");
                    int classStudent = Integer.parseInt(scanner.nextLine());
                    Student student = new Student(name, age, hometown, classStudent);
                    school.add(student);
                    break;
                }
                case "2":
                {
                    school.getStudents20yearOld().forEach(student -> System.out.println(student.toString()));
                    break;
                }
                case "3":
                {
                    System.out.println(school.countStudent23YearOldDN());
                    break;
                }
                case "4":
                {
                    school.show();
                    break;
                }
                case "5":
                {
                    return;
                }
                default:
                    System.out.print("Invalid");
            }
        }
    }
}
