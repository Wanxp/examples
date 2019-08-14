package com.wanxp.algorithm.union_find.example.relationship;

import com.wanxp.algorithm.union_find.UnionFindSet;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class RelationShipCheck {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        List<Integer[]> lines = new ArrayList<>();
        lines.add(new Integer[]{1,2,3});
        lines.add(new Integer[]{1,4});
        lines.add(new Integer[]{5,6,7});
        UnionFindSet set = new UnionFindSet();
        lines.forEach(x->set.add(x));
        System.out.println("Please input test number under 7:\n");
        while (scanner.hasNext()) {
            String line = scanner.nextLine();
            if ("end".equals(line))
                break;
            if (line != null && !line.isEmpty()) {
                Integer v = Integer.valueOf(line);
                System.out.println(set.findSet(v));
                System.out.println(set.toString());
            }
        }
    }
}
