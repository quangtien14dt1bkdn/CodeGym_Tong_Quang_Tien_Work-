package Employee;

import java.time.LocalDateTime;

public class Staff extends Officer {
    private String task; // nhiem vu :private

    public Staff(String name, int age, String gender, String address, String task) {
        super(name, age, gender, address);
        this.task = task;
    }

    public String getTask() {
        return task;
    }

    public void setTask(String task) {
        this.task = task;
    }

    @Override
    public String toString() {
        return "Staff{"+
                "task";
    }
}
