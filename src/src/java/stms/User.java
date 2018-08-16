package stms;



/**
 *
 * @author Kim
 */
public class User 
{
    private String studentNo;
    private String username;
    private String password;
    private UserLevel userLevel;
    
    public enum UserLevel
    {
        STUDENT,
        ADMIN;
    }

    public User(String studentNo, String username, String password, UserLevel userLevel) {
        this.studentNo = studentNo;
        this.username = username;
        this.password = password;
        this.userLevel = userLevel;
    }

    
    
    
    // Getters
    public String getUsername() {
        return username;
    }

    public String getStudentNo() {
        return studentNo;
    }

    public String getPassword() {
        return password;
    }

    public UserLevel getUserLevel() {
        return userLevel;
    }
    
    // Setters
    public void setUsername(String username) {
        this.username = username;
    }

    public void setStudentNo(String studentNo) {
        this.studentNo = studentNo;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUserLevel(UserLevel userLevel) {
        this.userLevel = userLevel;
    }
    
    
    
    
}
