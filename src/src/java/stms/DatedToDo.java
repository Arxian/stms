package stms;


import java.util.Date;


/**
 * TO Do list item that has a date
 * @author Kim
 */
public class DatedToDo extends Event
{
    private Date date;

    public DatedToDo(Date date, int eventID, String name, int priority, Subject subject, Recurring recurringEvent, String description, boolean complete, int user) {
        super(eventID, name, priority, subject, recurringEvent, description, complete, user);
        this.date = date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Date getDate() {
        return date;
    }
    
    
}
