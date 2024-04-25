package aze.coders.javee;

import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<Integer> list = new ArrayList<Integer>();
        list.add(1);
        list.add(2);
        list.add(3);
        for (Integer i : list) {
            if (i == 2)
                list.remove(i);
            System.out.println(i);
            list.add(4);
        }

    }
}
