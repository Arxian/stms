package stms;


/**
 * Denotes a task category, linked to task colour
 * @author Kim
 */

public class Subject 
{
    private int subjectID;
    private String name;
    private String colour;

    public Subject(int subjectID, String name, String colour) {
        this.subjectID = subjectID;
        this.name = name;
        this.colour = colour;
    }

  
    
    // Getters
    public int getSubjectID() {
        return subjectID;
    }

    public String getName() {
        return name;
    }

    public String getColour() {
        return colour;
    }

    // Setters
    public void setSubjectID(int subjectID) {
        this.subjectID = subjectID;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setColour(String colour) {
        this.colour = colour;
    }

    
    
    public String toString()
    {
        return subjectID + ";" + name + ";" + colour;
    }
}
