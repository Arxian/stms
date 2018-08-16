package stms;



/**
 * A comment left on an Event
 * @author Kim
 */
public class Comment 
{
    private int commentID;
    private String text;
    private Event commentEvent;         // the event that the comment is attached to
    private User userFrom;              // user who created the comment
    private User userTo;                // user who receives the comment
    private Comment linkedCommentID;    // is the comment a reply to another comment

    public Comment(int commentID, String text, Event commentEvent, User userFrom, User userTo, Comment linkedCommentID) {
        this.commentID = commentID;
        this.text = text;
        this.commentEvent = commentEvent;
        this.userFrom = userFrom;
        this.userTo = userTo;
        this.linkedCommentID = linkedCommentID;
    }

    public void setCommentID(int commentID) {
        this.commentID = commentID;
    }

    public void setText(String text) {
        this.text = text;
    }

    public void setCommentEvent(Event commentEvent) {
        this.commentEvent = commentEvent;
    }

    public void setUserFrom(User userFrom) {
        this.userFrom = userFrom;
    }

    public void setUserTo(User userTo) {
        this.userTo = userTo;
    }

    public void setLinkedCommentID(Comment linkedCommentID) {
        this.linkedCommentID = linkedCommentID;
    }

    public int getCommentID() {
        return commentID;
    }

    public String getText() {
        return text;
    }

    public Event getCommentEvent() {
        return commentEvent;
    }

    public User getUserFrom() {
        return userFrom;
    }

    public User getUserTo() {
        return userTo;
    }

    public Comment getLinkedCommentID() {
        return linkedCommentID;
    }
 
    
}
