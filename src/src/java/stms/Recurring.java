package stms;



/**
 * If the Event is recurring, it will have a Recurring object
 * @author Kim
 */
public class Recurring 
{
    private int recurID;
    private String every;            // e.g. every WEEK
    private int defineEvery;        // e.g. every 2 WEEKs (from this month) 
    private int times;              // e.g. 2 times - every 2 WEEKs (from this month)
    private String days;            // e.g. Tue & Thurs ("2,4") - 2 times every - 2 WEEKs (from this month)
                                        // Monday = 1, Tuesday = 2, etc.
  

    public Recurring(int recurID, String every, int defineEvery, int times, String days) {
        this.recurID = recurID;
        this.every = every;
        this.defineEvery = defineEvery;
        this.times = times;
        this.days = days;
    }

    public Recurring(int recurID) {
        this.recurID = recurID;
    }

    
    // Getters
    public int getRecurID() {
        return recurID;
    }

    public String getEvery() {
        return every;
    }

    public int getDefineEvery() {
        return defineEvery;
    }

    public int getTimes() {
        return times;
    }

    public String getDays() {
        return days;
    }

    
    // Setters
    public void setRecurID(int recurID) {
        this.recurID = recurID;
    }

    public void setEvery(String every) {
        this.every = every;
    }

    public void setDefineEvery(int defineEvery) {
        this.defineEvery = defineEvery;
    }

    public void setTimes(int times) {
        this.times = times;
    }

    public void setDays(String days) {
        this.days = days;
    }
    
    
    
    
    
}
