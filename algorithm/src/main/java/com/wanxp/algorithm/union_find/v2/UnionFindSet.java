package com.wanxp.algorithm.union_find.v2;

import java.util.Arrays;

/**
 * 简单并查集森林实现
 * 树的根即为树的(高度-1)
 */
public class UnionFindSet {
    private int[] set;

    public UnionFindSet(int initCapacity) {
        sizeCheck(initCapacity);
        set = new int[initCapacity];
        makeSet();
    }

    private void makeSet() {
        Arrays.stream(set).forEach(x->x=-1);
    }

    private void sizeCheck(int initCapacity) {
        if (initCapacity > Integer.MAX_VALUE -8 || initCapacity < 1)
            throw new IndexOutOfBoundsException("size more than max lenth or smaller than 1");
    }

    private void elementCheck(int element) {
        if (element > set.length || element < 0)
            throw new IndexOutOfBoundsException("element more than lenth or smaller than 0");
    }

    /**
     * 查找树根，不修改树结构
     * 时间复杂度O(n)
     * @param element
     * @return
     */
    public int findSet(int element) {
        elementCheck(element);
        int root = set[element];
        int preRoot = root;
        while (root > 0) {
            preRoot = root;
            root = set[root];
        }
        return preRoot;
    }

    /**
     * 时间复杂度O(n)
     * @param element1
     * @param element2
     * @return
     */
    public int unionSet(int element1, int element2) {
        int root1 = findSet(element1);
        int root2 = findSet(element2);
        int root;
        if (root1 == root2)
            root = root1;
        else if (set[root1] < set[root2]) {
            set[root2] = root1;
            root = root1;
        }else {
            set[root1] = root2;
            root = root2;
        }
        return root;
    }

    /**
     * 时间复杂度O(M*N)
     * @param subSet
     * @return
     */
    public int addSet(int[] subSet) {
        int root = findSet(subSet[0]);
        if (subSet.length > 1)
        for (int i = 1;i < subSet.length; i++) {
            root = unionSet(i, root);
        }
        //TODO rank
        return root;
    }

}
