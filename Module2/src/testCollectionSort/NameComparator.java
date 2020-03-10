package testCollectionSort;

import java.util.*;

class NameComparator implements Comparator<Employee> {
    public int compare(Employee s1, Employee s2) {
        return s1.name.compareTo(s2.name);
    }
}