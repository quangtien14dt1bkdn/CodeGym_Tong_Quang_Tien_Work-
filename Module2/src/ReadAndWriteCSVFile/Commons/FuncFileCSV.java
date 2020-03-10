package ReadAndWriteCSVFile.Commons;

import ReadAndWriteCSVFile.Models.Student;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.ArrayList;

public class FuncFileCSV {
    private static final String COMMA_DELIMITER = ",";
    private static final String NEW_LINE_SEPARATOR = "\n";
    private static final String FILE_HEADER_STUDENT = "name,grade,address";
    private static final String fileNameStudent = "D:\\CodeGymWork\\Module2\\src\\ReadAndWriteCSVFile\\Data\\Student.csv";

    public static void writeStudentToFileCSV(ArrayList<Student> ListStudent) {
        FileWriter fileWriter = null;
        try {
            fileWriter = new FileWriter(fileNameStudent);
            fileWriter.append(FILE_HEADER_STUDENT);
            fileWriter.append(NEW_LINE_SEPARATOR);
            for (Student student : ListStudent) {
                fileWriter.append(student.getName());
                //tien
                fileWriter.append(COMMA_DELIMITER);
                //tien,
                fileWriter.append(student.getGrade());
                //tien,12
                fileWriter.append(COMMA_DELIMITER);
                //tien,12,
                fileWriter.append(student.getAddress());
                //tien,12,thanhhoa
                fileWriter.append(NEW_LINE_SEPARATOR);
                //xuong dong
            }

        } catch (Exception ex) {
            System.out.println("Error in CSV File Writer");
        } finally {
            try {
                fileWriter.flush();
                fileWriter.close();
            } catch (Exception ex) {
                System.out.println("Error when flush or close!");
            }
        }
    }

    public static ArrayList<Student> getFileToStudent() {
        BufferedReader br = null;
        ArrayList<Student> ListStudent = new ArrayList<Student>();
        try {
            String line;
            br = new BufferedReader(new FileReader(fileNameStudent));
            while ((line = br.readLine()) != null) {
                String[] splitData = line.split(",");
                if (splitData[0].equals("name")) {
                    continue;
                }
                Student student = new Student();
                student.setName(splitData[0]);
                student.setGrade(splitData[1]);
                student.setAddress(splitData[2]);
                ListStudent.add(student);

            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }finally {
            try {
                br.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
        return ListStudent;
    }

}
