
import java.util.Date;


/**
 * An event that has a start and finish date and time
 * @author Kim
 */
public class Timed extends Event
{
    private Date start;
    private Date end;
    private String type;

    public Timed(Date start, Date end, String type, int eventID, String name, int priority, Subject subject, Recurring recurringEvent, String description, boolean complete, User user) {
        super(eventID, name, priority, subject, recurringEvent, description, complete, user);
        this.start = start;
        this.end = end;
        this.type = type;
    }

    public Date getStart() {
        return start;
    }

    public Date getEnd() {
        return end;
    }

    public String getType() {
        return type;
    }

    public void setStart(Date start) {
        this.start = start;
    }

    public void setEnd(Date end) {
        this.end = end;
    }

    public void setType(String type) {
        this.type = type;
    }
    
    
}
