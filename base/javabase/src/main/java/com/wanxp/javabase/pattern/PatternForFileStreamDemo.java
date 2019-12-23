package com.wanxp.javabase.pattern;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 对于文件流的正则处理
 * 采用滚动模式，每次桶的大小由MAX_LINE_FOR_ONE_PATTERN控制
 */
public class PatternForFileStreamDemo {

    /**
     *
     */
    public static final int MAX_LINE_FOR_ONE_PATTERN = 100;
    public static final String PATTERN_STRING = ">(G[0-9]{4})<[\\s\\S]*([0-9]{2}:[0-9]{2})[\\s\\S]*([0-9]{2}:[0-9]{2})[\\s\\S]*([0-9]{2}:[0-9]{2})";


    /**
     * @param args
     * @throws IOException
     */
    public static void main(String[] args) throws IOException {
        BufferedReader bufferedReader =
                new BufferedReader(new FileReader(new File(PatternForFileStreamDemo.class.getResource("").getPath() + "file.html")));
        Pattern pattern = Pattern.compile(PATTERN_STRING);
        LineContainer lineContainer = LineContainer.lineContainer(MAX_LINE_FOR_ONE_PATTERN);
        List<String> trainNames = new ArrayList<>();
        Matcher matcher = null;
        do {
            matcher = pattern.matcher(lineContainer.toString());
            if (matcher.find()) {
                String trainName = handleMacher(matcher);
                if (trainName != null) {
                    trainNames.add(trainName);
                }
                lineContainer.clear();
            }
        } while ((lineContainer.appendLine(bufferedReader.readLine())) != null);
        trainNames.stream().forEach(x -> System.out.print("\"" + x + "\","));
    }

    private static String handleMacher(Matcher matcher) {
        if (matcher.groupCount() < 4) {
            return null;
        }
        String trainName = matcher.group(1);
        String startTime = matcher.group(2);
        String[] startTimes = startTime.split(":");
        if (startTimes != null && startTimes.length > 1) {
            Integer hour = Integer.valueOf(startTimes[0]);
            if (hour > 9 && hour < 21) {
                return trainName;
            }
        }
        return null;
    }

    static class LineContainer {
        private final StringBuilder stringBuilder = new StringBuilder();
        private Queue<String> container = new LinkedList<String>();
        private int maxSize = 100;
        private String lineTerminate = "\n";

        public LineContainer() {
        }

        public LineContainer(int maxSize) {
            this.maxSize = maxSize;
        }

        public LineContainer(int maxSize, String lineTerminate) {
            this.maxSize = maxSize;
            this.lineTerminate = lineTerminate;
        }

        public static LineContainer lineContainer(int maxSize) {
            return new LineContainer(maxSize);
        }

        public static LineContainer lineContainer() {
            return new LineContainer();
        }

        public String appendLine(String line) {
            if (line == null)
                return null;
            checkSize();
            container.offer(line + lineTerminate);
            return line;
        }

        private String checkSize() {
            if (container.size() >= maxSize) {
                return container.poll();
            }
            return null;
        }

        private void clear() {
            container.clear();
        }

        @Override
        public String toString() {
            String result = null;
            if (container.size() > 0) {
                container.stream().forEach(x -> {
                    stringBuilder.append(x);
                });
            }
            result = stringBuilder.toString();
            stringBuilder.setLength(0);
            return result;
        }
    }
}
