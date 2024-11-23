package admin;

public class model {
    private int userID;
    private String username;
    private String email;
    
    public model(int userID, String username, String email) {
        this.userID = userID;
        this.username = username;
        this.email = email;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
