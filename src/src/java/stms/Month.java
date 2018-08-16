/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package stms;

import java.util.stream.IntStream;

/**
 *
 * @author Darien
 */
public class Month {
    private int numDays = 31;
    private int firstDay = 1;
    private int pos = 1;
    
    public Month(int num, int year){
        int[] shortMonths = {4, 6, 9, 11};
        // Shorthand check for number of days
        if (num == 2){
            if (year % 4 == 0 && year %400 != 0) numDays = 28;
            else numDays = 29;
        }else if (IntStream.of(shortMonths).anyMatch(x -> x == 4)){
            numDays = 30;
        }
        int[] map = {11, 12, 1, 2 , 3, 4, 5, 6, 7, 8, 9, 10};
        firstDay = (int) (1 + 0.2*(13*map[num]-1) + (year-2000)*1.25 - 1.75*20);
    }

    public int getNumDays() {
        return numDays;
    }

    public void setNumDays(int numDays) {
        this.numDays = numDays;
    }

    public int getFirstDay() {
        return firstDay;
    }

    public void setFirstDay(int firstDay) {
        this.firstDay = firstDay;
    }

    public int getPos() {
        return pos;
    }

    public void setPos(int pos) {
        this.pos = pos;
    }
}
