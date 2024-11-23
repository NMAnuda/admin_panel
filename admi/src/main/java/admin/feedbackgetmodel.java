package admin;

public class feedbackgetmodel {
    private int f_ID;
    private String f_feedback;

    public feedbackgetmodel(int f_ID, String f_feedback) {
        this.f_ID = f_ID;
        this.f_feedback = f_feedback;
    }


    public int getF_ID() {
        return f_ID;
    }

    public void setF_ID(int f_ID) {
        this.f_ID = f_ID;
    }

    public String getF_feedBack() {
        return f_feedback;
    }

    public void setF_feedBack(String f_feedback) {
        this.f_feedback = f_feedback;
    }
}

