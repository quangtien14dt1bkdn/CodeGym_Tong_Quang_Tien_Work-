package OPP.Circle;

import java.util.Arrays;
import java.util.Date;
import java.util.Random;
import java.util.Scanner;

public class StopWatch {
    public StopWatch() {
    }
    private Date startTime ;
    private Date endTime;

    public Date getStartTime() {
        return this.startTime;
    }
    public Date getEndTime() {
        return this.endTime;
    }
    public void start() {
        this.startTime = new Date();
    }
    public  void end() {
        this.endTime = new Date();
    }
    public long getElapsedTime() {
         return getEndTime().getTime() - getStartTime().getTime();
    }

    public static int[] array(int num) {
        new Scanner(System.in);
        int[] Array = new int[num];

        for(int i = 0; i < num; ++i) {
            Random random = new Random();
            Array[i] = random.nextInt(100000);
        }
        return Array;
    }

    public static void main(String[] args) {
        StopWatch stopWatch = new StopWatch();
        int[] x = array(100000);
        stopWatch.start();
        Arrays.sort(x);
        stopWatch.end();
        System.out.println(stopWatch.getElapsedTime());
    }
}
