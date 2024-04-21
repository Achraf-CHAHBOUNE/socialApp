package users;

import java.util.Date;

public class Post {

    private int id;

    private String title;

    private String message;

    private String lien;

    private Date creationDate;

    private int user_id;




public Post(int id, String title, String message, String lien, Date creationDate, int user_id) {
        this.id = id;
        this.title = title;
        this.message = message;
        this.lien = lien;
        this.creationDate = creationDate;
        this.user_id = user_id;
    }


    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getMessage() {
        return message;
    }

    public String getLien() {
        return lien;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public int getUserId() {
        return user_id;
    }

}