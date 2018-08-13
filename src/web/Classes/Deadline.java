
import java.util.Date;


/**
 * An Event on the schedule with a single date and time
 * @author Kim
 */
public class Deadline extends Event
{
    private Date date;
    private String type;      // e.g. test, essay, test, etc - will determine deafult autofill data

    public Deadline(Date date, String type, int eventID, String name, int priority, Subject subject, Recurring recurringEvent, String description, boolean complete, User user) {
        super(eventID, name, priority, subject, recurringEvent, description, complete, user);
        this.date = date;
        this.type = type;
    }

    public Date getDate() {
        return date;
    }

    public String getType() {
        return type;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setType(String type) {
        this.type = type;
    }
    
    
}
