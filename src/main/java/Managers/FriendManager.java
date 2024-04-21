package Managers;

import jdbc.MemberDbUtil;
import users.FriendShip;
import users.Invitation;
import users.Member;

import javax.sql.DataSource;
import java.util.ArrayList;

public class FriendManager {


    private MemberDbUtil memberDbUtil;

    private Member member;

    private ArrayList<Member> friends;
    public FriendManager(DataSource dataSource) {
        friends = new ArrayList<Member>();
        memberDbUtil = new MemberDbUtil(dataSource);
    }



    public ArrayList<Member> getFriends(String email) {

        friends = null;
        try {
            int friend_id = memberDbUtil.getidbyemail(email);
            System.out.println("email : " + email );
            System.out.println(". id :" + friend_id);
            friends = memberDbUtil.getFriends(friend_id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return friends;
    }

    public void acceptFriend(int id, int friend_id) {

        FriendShip relation = null;
        Invitation inv = null;
        try {
            relation = new FriendShip(id, friend_id);
            memberDbUtil.createFriendship(relation);

            inv = new Invitation(friend_id, id);
            memberDbUtil.removeInvitation(inv);

        } catch (Exception e) {
            e.printStackTrace();

        }
    }

    public void refuseFriend(int id, int friend_id) {
        Invitation inv = null;
        try {
            inv = new Invitation(friend_id, id);
            memberDbUtil.removeInvitation(inv);

        } catch (Exception e) {
            e.printStackTrace();

        }

    }

    public void requestFriend(int sender_id, int reciver_id) {

        try {
            memberDbUtil.sendInvitation(sender_id, reciver_id);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void removeFriend(int id, int friend_id) {
        FriendShip relation = null;
        try {
            relation = new FriendShip(id, friend_id);
            memberDbUtil.removeFriendship(relation);

        } catch (Exception e) {
            e.printStackTrace();

        }
    }

    public ArrayList<Invitation> getInvitations(int id) {
        ArrayList<Invitation> invitations = null;
        try {
            invitations = memberDbUtil.getInvitations(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return invitations;
    }

}
