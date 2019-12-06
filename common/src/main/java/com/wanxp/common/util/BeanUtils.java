package com.wanxp.common.util;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanWrapper;
import org.springframework.beans.BeanWrapperImpl;
import org.springframework.util.CollectionUtils;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.*;

/**
 * Bean工具类
 */
@Slf4j
public class BeanUtils {
    /**
     * 同名属性复制，默认不复制null内容
     * @param from
     * @param toClass
     */
    public static <F, T> T copyProperties(F from, Class<T> toClass) {
        T to = null;
        try {
            to = toClass.newInstance();
            copyProperties(from, to);
        } catch (InstantiationException e) {
            log.error("copy failed", e);
        } catch (IllegalAccessException e) {
            log.error("copy failed", e);
        }
        return to;
    }

    /**
     * 同名属性复制，默认不复制null内容
     *
     * @param from
     * @param toClass
     * @param ignoreProperties 主动忽略的属性名称
     */
    public static <F, T> T copyProperties(F from, Class<T> toClass, String... ignoreProperties) {
        T to = null;
        try {
            to = toClass.newInstance();
            copyProperties(from, to, ignoreProperties);
        } catch (InstantiationException e) {
            log.error("copy failed", e);
        } catch (IllegalAccessException e) {
            log.error("copy failed", e);
        }
        return to;
    }

    /**
     * 同名属性复制，默认不复制null内容
     * @param from
     * @param to
     */
    public static <F, T> T copyProperties(F from, T to) {
        copyProperties(from, to, true);
        return to;
    }

    /**
     * 同名属性复制，默认不复制null内容
     *
     * @param ignoreProperties 主动忽略的属性名称
     * @param from
     * @param to
     */
    public static <F, T> T copyProperties(F from, T to, String... ignoreProperties) {
        copyProperties(from, to, true, ignoreProperties);
        return to;
    }

    /**
     * 同名属性复制
     * @param from
     * @param to
     * @param ignoreNull 是否忽略掉null属性的内容
     */
    public static void copyProperties(Object from, Object to, Boolean ignoreNull) {
        if (from == null || to == null)
            return;
        if (ignoreNull) {
            org.springframework.beans.BeanUtils.copyProperties(from, to, getNullPropertyNames(from).toArray(new String[]{}));
        }else {
            org.springframework.beans.BeanUtils.copyProperties(from, to);
        }
    }

    /**
     * 同名属性复制
     *
     * @param from
     * @param to
     * @param ignoreNull       是否忽略掉null属性的内容
     * @param ignoreProperties 主动忽略的属性名称
     */
    public static void copyProperties(Object from, Object to, Boolean ignoreNull, String... ignoreProperties) {
        if (from == null || to == null)
            return;
        List<String> ignore = new ArrayList<>();
        if (ignoreNull) {
            ignore.addAll(getNullPropertyNames(from));

        }
        if (ignoreProperties != null && ignoreProperties.length > 0) {
            ignore.addAll(Arrays.asList(ignoreProperties));
        }
        if (!CollectionUtils.isEmpty(ignore)) {
            org.springframework.beans.BeanUtils.copyProperties(from, to, ignore.toArray(new String[]{}));
        } else {
            org.springframework.beans.BeanUtils.copyProperties(from, to);
        }
    }

    public static List<String> getNullPropertyNames(Object source) {
        final BeanWrapper src = new BeanWrapperImpl(source);
        java.beans.PropertyDescriptor[] pds = src.getPropertyDescriptors();

        List<String> emptyNames = new ArrayList<>();
        for (java.beans.PropertyDescriptor pd : pds) {
            try {
                Object srcValue = src.getPropertyValue(pd.getName());
                if (srcValue == null) {
                    emptyNames.add(pd.getName());
                }
            }catch (Exception e) {
                log.warn("BeanUtils.copyProperties get null property failed : " + src.getClass().getSimpleName()  + "." + pd.getName());
            }
        }
        return emptyNames;
    }

    /**
     * 将目标对象的指定类型属性设置为null
     * @param targetObject
     * @param cleanedPropertyType
     * @param <T>
     * @param <C>
     * @return
     */
    public static <T, C> T cleanProperties(T targetObject, Class<C> cleanedPropertyType) {
        if (targetObject == null || cleanedPropertyType == null)
            return targetObject;
        Field[] fields = targetObject.getClass().getFields();
        if (fields == null || fields.length == 0)
            return targetObject;
        for (Field field : fields) {
            field.setAccessible(true);
            log.error(field.getType().getSimpleName());
            if (field.getType().equals(cleanedPropertyType)) {
                try {
                    field.set(targetObject, null);
                } catch (IllegalAccessException e) {
                    log.error("clean targetObject property failed");
                }
            }
        }
        return targetObject;
    }

    /**
     * 通过getter获取setter然后置为空
     * @param getter
     * @param tObject
     * @param <T>
     */
    private static<T> void setNullByGetterBeyondSetter(Method getter, T tObject) {
        if (getter.getName().startsWith("get")) {
            try {
                Method setter = tObject.getClass().getMethod("set" + getter.getName().substring(3), getter.getReturnType());
                setter.setAccessible(true);
                setter.invoke(tObject, new Object[]{null});
            } catch (NoSuchMethodException e) {
                log.error("get setter failed beyond getter " + getter.getName());
            } catch (IllegalAccessException e) {
                log.error("set value failed beyond getter " + getter.getName());
            } catch (InvocationTargetException e) {
                log.error("set value failed beyond getter " + getter.getName());
            }
        }
    }

}
