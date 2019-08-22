package com.wanxp.algorithm.union_find.v1;

import java.util.Arrays;
import java.util.Collection;

/**
 * 查并集，对于单棵树，默认跟节点值最大
 * 树最大值为root
 * 自动扩展森林长度
 * 记录每个元素的高度
 */
public class UnionFindSet {
    private int[] set;
    /**
     * 树节点高度
     */
    private int[] rank;

    /**
     * 长度
     */
    private int length;

    /**
     * 修改次数记录
     */
    private int modCount = 0;

    /**
     * 最大长度
     */
    private static final int MAX_LENGTH = Integer.MAX_VALUE - 8;




    public UnionFindSet() {
        this.set = new int[]{0};
        this.rank = new int[]{1};
        this.length = 1;
    }

    public UnionFindSet(int initCapacity) {
        lengthCheck(initCapacity);
        this.set = new int[initCapacity];
        this.rank = new int[initCapacity];
        this.length = initCapacity;
        initSetRange(0, initCapacity - 1);
    }

    public void add(Collection<Integer> subSet) {
        int max = subSet.stream().max(((o1, o2) -> o1.compareTo(o2))).get();
        lengthCheck(max);
        int newLength = max+1;
        if (newLength > length) {
            grow(newLength);
        }
        subSet.stream().forEach(x->{
            set[x] = unionSet(x, max);
            modCount++;
        });
    }



    public void add(Integer[] subSet) {
        add(Arrays.asList(subSet));
    }

    public int findSet(int element) {
        return findSetInternal(element);
    }


    private int findSetInternal(int element) {
        if (element < 0 || element > length)
            return element;
        if (element != set[element]) {
            set[element] = findSetInternal(set[element]);
            rank[element] = rank[set[element]] + 1;
            modCount++;
        }
        return set[element];
    }



    public int unionSet(int element, int father) {
        lengthCheck(element);
        lengthCheck(father);
        int max = Integer.max(element, father);
        int newLength = max + 1;
        if (newLength > length) {
            grow(newLength);
        }
        return unionSetInternal(element, father);
    }

    public int unionSetInternal(int element, int father) {
        int elementRoot = findSet(element);
        int fatherRoot = findSet(father);
        if (elementRoot != fatherRoot) {
            set[elementRoot] = fatherRoot;
            modCount++;
        }
        return fatherRoot;
    }

    private void initSetRange(int indexFrom, int indexTo) {
        if (indexFrom > indexTo || indexFrom < 0 || indexFrom > length || indexTo > length)
            throw new IndexOutOfBoundsException(
                    String.format("set length:%s ,but initSetRange is from %s to %s", length, indexFrom, indexTo));
        for (int i = indexFrom;i <= indexTo;i++) {
            set[i] = i;
            rank[i] = 1;
            modCount++;
        }
    }

    private void grow(int capacity) {
        int oldLength = length;
        length = capacity;
        set = Arrays.copyOf(set, length);
        rank = Arrays.copyOf(rank, length);
        modCount++;
        initSetRange(oldLength - 1, length - 1);
    }

    private void lengthCheck(int value) {
        if (value > MAX_LENGTH || value < 1 )
            throw new IndexOutOfBoundsException("the value of sub set element must more than zero " +
                    "and small than max of integer");
    }

    @Override
    public String toString() {
        return String.format("UnionFindSet:{set:%s,rank:%s,modCount:%s}",
                Arrays.toString(set), Arrays.toString(rank), modCount);
    }
}
