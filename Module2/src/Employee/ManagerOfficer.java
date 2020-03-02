package Employee;

import java.util.ArrayList;
import java.util.stream.Collectors;
import java.util.List;

public class ManagerOfficer {
    private List<Officer> officers;
    //
    public ManagerOfficer() {
        this.officers = new ArrayList<>();
    }
    public void addOfficer(Officer officer) {
        this.officers.add(officer);
    }
    public List<Officer> searchOfficerByName(String name) {
        return this.officers.stream().filter(o -> o.getName().contains(name)).collect(Collectors.toList());
    }
    //getname() chả về name của tất cả phần tử trong List
    //contains(name) duyệt qua tất cả name trong List và chả về true nếu đúng
    // filter o = true
    // collect((Collector.toList()) chả về mảng gồm tất cả phần tử có tên name
    public void showListInfoOfficer() {
        this.officers.forEach(o -> System.out.println(o.toString()));
    }
    //@Override to String
}