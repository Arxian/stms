package stms;


/**
 * To Do item with NO date attached
 * @author Kim
 */
public class OpenToDo extends Event 
{

    public OpenToDo(int eventID, String name, int priority, Subject subject, Recurring recurringEvent, String description, boolean complete, int user) {
        super(eventID, name, priority, subject, recurringEvent, description, complete, user);
    }
}
