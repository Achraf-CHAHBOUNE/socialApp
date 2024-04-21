package users;

public class Invitation {


    private int sender_id;

    private int reciever_id;



    public Invitation( int sender_id, int reciever_id) {
        this.sender_id = sender_id;
        this.reciever_id = reciever_id;
    }

    public int getSenderId() {
        return sender_id;
    }

    public int getRecieverId() {
        return reciever_id;
    }



}
