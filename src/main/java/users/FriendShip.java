package users;

public class FriendShip {

    private int user_id;

    private int friend_id;


public FriendShip(int user_id, int friend_id) {
        this.user_id = user_id;
        this.friend_id = friend_id;
    }


    public int getUserId() {
        return user_id;
    }

    public int getFriendId() {
        return friend_id;
    }

}
