package testCollectionSort;

import java.util.*;

class AgeComparator implements Comparator<Employee> {
    public int compare(Employee s1, Employee s2) {
        if (s1.age == s2.age)
            return 0;
        else if (s1.age > s2.age)
            return 1;
        else
            return -1;
    }
}