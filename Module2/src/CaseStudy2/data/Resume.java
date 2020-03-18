package CaseStudy2.data;

import CaseStudy2.Commons.FuncValidate;
import CaseStudy2.Commons.FuncWriteAndReadFileCSV;
import CaseStudy2.Models.Employee;

import java.util.ArrayList;
import java.util.Stack;

public class Resume {
    public Resume() {

    }
    public static Stack<Employee> getAllEmployee() {
        Stack<Employee> employeeList = new Stack<Employee>();
        ArrayList<Employee> employeeArrayList = FuncWriteAndReadFileCSV.getEmployeeFromCSV();
        for (Employee employee : employeeArrayList) {
            employeeList.push(employee);
        }
        return employeeList;
    }
}
