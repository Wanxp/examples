package com.wanxp.batch.excel.util;

public class NumberUtils {
    public static boolean isNumberString(String str) {
        if (str == null || str.equals("")) {
            return false;
        }
        for (char c : str.toCharArray()) {
            if (c < '0' || c > '9') {
                return false;
            }
        }
        return true;
    }
}
