package School;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class School {
    public List<Student> students;
    public School() {
        this.students = new ArrayList<>();
    }

    public void add(Student student) {
        this.students.add(student);
    }
    // tap hop danh sach hoc sinh co tuoi =20
    public List<Student> getStudents20yearOld() {
        return this.students.stream().filter(student -> student.getAge()==20)
                .collect(Collectors.toList());
    }
    // cho biet so luong hoc sinh co tuoi = 23 va que o da nang
    public long countStudent23YearOldDN() {
        return this.students.stream().filter(student -> student.getAge() == 23 && student.getHometown().equals("DN"))
                .count();
    }
    public void show() {
        this.students.forEach(s -> System.out.println(s.toString()));
    }
}
