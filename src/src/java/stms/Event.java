package stms;


/**
 * Class represents an event that will be added to the schedule and/or the to do list
 * @author Kim
 */

public class Event 
{
    private int eventID;
    private String name;
    private int priority;
    private Subject subject;
    private Recurring recurringEvent;
    private String description;
    private boolean complete;
    private int eventUser;        // the user who created the event
   
 
    
    public Event(int eventID, String name, int priority, Subject subject, Recurring recurringEvent, String description, boolean complete, int user) 
    {
        this.eventID = eventID;
        this.name = name;
        this.priority = priority;
        this.subject = subject;
        this.recurringEvent = recurringEvent;
        this.description = description;
        this.complete = complete;
        this.eventUser = user;
    }

    public Event(int id) {
        this.eventID = id;
    }

  
    // Setters
    public void setEventUser(int eventUserID) {
        this.eventUser = eventUserID;
    }
    
    public void setEventID(int eventID) {
        this.eventID = eventID;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPriority(int priority) {
        this.priority = priority;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    public void setRecurringEvent(Recurring recurringEvent) {
        this.recurringEvent = recurringEvent;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setComplete(boolean complete) {
        this.complete = complete;
    }
   
    //  Getters
    public int getEventID() {
        return eventID;
    }

    public String getName() {
        return name;
    }

    public int getPriority() {
        return priority;
    }

    public Subject getSubject() {
        return subject;
    }

    public Recurring getRecurringEvent() {
        return recurringEvent;
    }

    public String getDescription() {
        return description;
    }

    public boolean isComplete() {
        return complete;
    }

    public int getEventUser() {
        return eventUser;
    }

    
   
}
