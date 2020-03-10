package Teacher;

import java.util.ArrayList;
import java.util.List;

public class TeacherManager {
    private List<Teacher> teachers;
    public TeacherManager() {
        this.teachers = new ArrayList<>();
    }

    public void add(Teacher teacher) {
        teachers.add(teacher);
    }

    public boolean deleteById(String id) {
        Teacher teacher = this.teachers.stream().filter(t -> t.getId().equals(id))
                .findFirst().orElse(null);
        if (teacher == null) {
            return false;
        }
        this.teachers.remove(teacher);
        return true;
    }

    public double getSalary(String id) {
        Teacher teacher = this.teachers.stream()
                .filter(teacher1 -> teacher1.getId().equals(id))
                .findFirst().orElse(null);
        if (teacher == null) {
            return 0;
        }
        return teacher.getSalary() + teacher.getBonus() + teacher.getPenalty();
    }
}
