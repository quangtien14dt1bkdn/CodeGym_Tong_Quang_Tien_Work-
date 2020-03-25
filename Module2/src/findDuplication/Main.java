package findDuplication;

import java.util.Arrays;
import java.util.function.Function;
import java.util.stream.Collectors;

public class Main {
    public static void main(String[] args) {
        java.util.List<String> list = Arrays.asList("A", "B", "B", "C", "D", "D", "Z", "E", "E");
        list.stream().collect(Collectors.groupingBy(Function.identity(),Collectors.counting()))                                             // perform group by count
                .entrySet().stream()
                .filter(e -> e.getValue() > 1L)                                        // using take only those element whose count is greater than 1
                .map(e -> e.getKey())                                                  // using map take only value
                .collect(Collectors.toList())                                        // convert group by result to list
                .forEach(System.out::println);
    }
}
