package findDuplication;

import java.util.*;
import java.util.function.Function;
import java.util.stream.Collectors;

public class DupByHashSet {
    public static void main(String[] args) {
//        // neu su dung set de tim trung lap thi phai sap xep chuoc
//        List<String> duplicates = Arrays.asList("A", "C", "B", "C", "D", "E", "Z", "E", "E");
//        HashSet unique=new HashSet();
//        System.out.println("Java Find duplicate objects in list using Set");
//        for (String s:duplicates){
//            if(!unique.add(s)){   //  // java.util.Set only unique object so if object will not bee add in Set it will return false so can consider it as Duplicate
//                System.out.println(s);
//            }
//        }
//        java.util.List<String> list = Arrays.asList("A", "B", "E", "C", "Z", "D", "Z", "E", "E");
//        list.stream().collect(Collectors.groupingBy(Function.identity(),
//                Collectors.counting()))                                             // perform group by count
//                .entrySet().stream()
//                .filter(e -> e.getValue() > 1L)                                        // using take only those element whose count is greater than 1
//                .map(e -> e.getKey())                                                  // using map take only value
//                .collect(Collectors.toList())                                        // convert group by result to list
//                .forEach(System.out::println);
//
        java.util.List<String> list = Arrays.asList("A", "B", "B", "C", "D", "D", "Z", "E", "E");
        Map<String,Integer> valueCounter = new HashMap<>();
        //Iterate all the elements from list and prepare HashMap, Key is List Elements and value is duplicate element occurences
        for(String str : list){
            Integer val = valueCounter.get(str);
            if(valueCounter.get(str)==null){
                valueCounter.put(str,1); //if map does not contains key, put element with value 1
            }else{
                val = val+1;//val++, ++val
                valueCounter.put(str,val); //increment counter if map already exists element
            }
        }
        Set<Map.Entry<String, Integer>> entrySet = valueCounter.entrySet();
        for(Map.Entry<String,Integer> entry : entrySet){
            if(entry.getValue()>1){
                System.out.println(entry.getKey()+"=>"+entry.getValue());
            }
        }
        valueCounter.entrySet().stream() //we can also use stream api to achieve the same
                .filter(map -> map.getValue()>1)
                .forEach(map -> System.out.println(map.getKey()+"=>"+map.getValue()));
    }
}
