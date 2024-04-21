package jdbc;


import users.FriendShip;
import users.Invitation;
import users.Member;
import users.Post;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MemberDbUtil {

    private final DataSource dataSource;

    public MemberDbUtil(DataSource theDataSource) {
        this.dataSource = theDataSource;
    }

    public List<Member> getMembers() throws Exception {
        List<Member> members = new ArrayList<>();

        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            myConn = dataSource.getConnection();

            String sql = "select * from users";

            myStmt = myConn.createStatement();

            myRs = myStmt.executeQuery(sql);

            while (myRs.next()) {
                String name = myRs.getString("name");
                String lastName = myRs.getString("lastName");
                String username = myRs.getString("username");
                String password = myRs.getString("password");
                String email = myRs.getString("email");

                Member tempMember = new Member(name,lastName,username, password, email);

                members.add(tempMember);
            }

            System.out.println(members.get(0));

            return members;

        }
        finally {
            close(myConn, myStmt, myRs);
        }
    }

    private void close(Connection myConn, Statement myStmt, ResultSet myRs) {

        try {
            if (myRs != null) {
                myRs.close();
            }

            if (myStmt != null) {
                myStmt.close();
            }

            if (myConn != null) {
                myConn.close();   // doesn't really close it ... just puts back in connection pool
            }
        }
        catch (Exception exc) {
            exc.printStackTrace();
        }
    }
    public void addMember(Member theMember) throws Exception {
        Connection myConn = null;
        PreparedStatement myStmt = null;

        try {
            myConn = dataSource.getConnection();

            String sql = "INSERT INTO users (name, lastName, username, password, email) "
                        + "VALUES (?, ?, ?, ?, ?)";

            myStmt = myConn.prepareStatement(sql);

            myStmt.setString(1, theMember.getName());
            myStmt.setString(2, theMember.getLastName());
            myStmt.setString(3, theMember.getUsername());
            myStmt.setString(4, theMember.getPassword());
            myStmt.setString(5, theMember.getEmail());

            myStmt.execute();
        }
        finally {
            close(myConn, myStmt, null);
        }
    }

    public Member getMember(String Email) throws Exception {

        Member theMember = null;

        Connection myConn = null;
        PreparedStatement myStmt = null;
        ResultSet myRs = null;

        try {

            myConn = dataSource.getConnection();

            String sql = "select * from users where email = ?";

            myStmt = myConn.prepareStatement(sql);

            myStmt.setString(1, Email);

            myRs = myStmt.executeQuery();

            if (myRs.next()) {
                String name = myRs.getString("name");
                String lastName = myRs.getString("lastName");
                String username = myRs.getString("username");
                String password = myRs.getString("password");
                String email = myRs.getString("email");

                theMember = new Member(name,lastName, username, email, password);
                System.out.println(theMember);
            }
            else {
                throw new Exception("Could not find the user: " + Email);
            }

            return theMember;
        }
        finally {
            close(myConn, myStmt, myRs);
        }
    }

    public int getidbyemail(String Email) throws Exception {

        int id = 0;

        Connection myConn = null;
        PreparedStatement myStmt = null;
        ResultSet myRs = null;

        try {

            myConn = dataSource.getConnection();

            String sql = "select user_id from users where email = ?";

            myStmt = myConn.prepareStatement(sql);

            myStmt.setString(1, Email);

            myRs = myStmt.executeQuery();

            if (myRs.next()) {
                id = myRs.getInt("user_id");
            }
            else {
                throw new Exception("Could not find the user: " + Email);
            }

            return id;
        }
        finally {
            close(myConn, myStmt, myRs);
        }
    }

    public Member getMemberById(int id) throws Exception {

        Member theMember = null;

        Connection myConn = null;
        PreparedStatement myStmt = null;
        ResultSet myRs = null;

        try {

            myConn = dataSource.getConnection();

            String sql = "select * from users where user_id = ?";

            myStmt = myConn.prepareStatement(sql);

            myStmt.setInt(1, id);

            myRs = myStmt.executeQuery();

            if (myRs.next()) {
                String name = myRs.getString("name");
                String lastName = myRs.getString("lastName");
                String username = myRs.getString("username");
                String password = myRs.getString("password");
                String email = myRs.getString("email");

                theMember = new Member(name,lastName, username, email, password);
                System.out.println(theMember);
            }
            else {
                throw new Exception("Could not find the user: " + id);
            }

            return theMember;
        }
        finally {
            close(myConn, myStmt, myRs);
        }
    }


    public void updateUser(Member theMember) throws Exception {
        Connection myConn = null;
        PreparedStatement myStmt = null;

        try {
            myConn = dataSource.getConnection();

            String sql = "update users "
                    + "set name=?, lastNname=?, username=?, password=?, email=? "
                    + "where username=?";

            myStmt = myConn.prepareStatement(sql);

            myStmt.setString(1, theMember.getName());
            myStmt.setString(2, theMember.getLastName());
            myStmt.setString(3, theMember.getUsername());
            myStmt.setString(4, theMember.getPassword());
            myStmt.setString(5, theMember.getEmail());
            myStmt.setString(6, theMember.getUsername());

            myStmt.execute();
        }
        finally {
            close(myConn, myStmt, null);
        }
    }

    public void deleteMember(String theUsername) throws Exception {
        Connection myConn = null;
        PreparedStatement myStmt = null;

        try {;

            myConn = dataSource.getConnection();

            String sql = "delete from users where username=?";

            myStmt = myConn.prepareStatement(sql);

            myStmt.setString(1, theUsername);

            myStmt.execute();
        }
        finally {
            close(myConn, myStmt, null);
        }
    }

    public void sendInvitation(int sender, int reciever) throws Exception {
        Connection myConn = null;
        PreparedStatement myStmt = null;

        try {
            myConn = dataSource.getConnection();

            String sql = "INSERT INTO invitations (sender_id, reciever_id) "
                        + "VALUES (?, ?)";

            myStmt = myConn.prepareStatement(sql);

            myStmt.setInt(1, sender);
            myStmt.setInt(2, reciever);

            myStmt.execute();
        }
        finally {
            close(myConn, myStmt, null);
        }
    }

    public ArrayList<Invitation> getInvitations(int id) throws Exception {
        ArrayList<Invitation> invitations = new ArrayList<Invitation>();
        Connection myConn = null;
        PreparedStatement myStmt = null;
        ResultSet myRs = null;

        try {
            myConn = dataSource.getConnection();

            String sql = "select * from invitations where reciever_id = ?";

            myStmt = myConn.prepareStatement(sql);

            myStmt.setInt(1, id);

            myRs = myStmt.executeQuery();

            while (myRs.next()) {
                int sender_id = myRs.getInt("sender_id");
                int reciever_id = myRs.getInt("reciever_id");

                Invitation tempInvitation = new Invitation(sender_id, reciever_id);

                invitations.add(tempInvitation);
            }

            return invitations;
        }
        finally {
            close(myConn, myStmt, myRs);
        }
    }

    public void removeInvitation(Invitation invit) throws Exception {
        Connection myConn = null;
        PreparedStatement myStmt = null;

        try {
            myConn = dataSource.getConnection();

            String sql = "delete from invitations WHERE sender_id = ? AND receiver_id = ?";

            myStmt = myConn.prepareStatement(sql);

            myStmt.setInt(1, invit.getSenderId());
            myStmt.setInt(2, invit.getRecieverId());

            myStmt.execute();
        }
        finally {
            close(myConn, myStmt, null);
        }
    }

    public void createFriendship(FriendShip relation) throws Exception {
        Connection myConn = null;
        PreparedStatement myStmt = null;

        try {
            myConn = dataSource.getConnection();

            String sql = "INSERT INTO friendships (user1_id, user2_id) "
                        + "VALUES (?, ?)";

            myStmt = myConn.prepareStatement(sql);

            myStmt.setInt(1, relation.getUserId());
            myStmt.setInt(2, relation.getFriendId());

            myStmt.execute();
        }
        finally {
            close(myConn, myStmt, null);
        }
    }

    public void removeFriendship(FriendShip relation){
        Connection myConn = null;
        PreparedStatement myStmt = null;

        try {
            myConn = dataSource.getConnection();

            String sql = "delete from friendships WHERE user1_id = ? AND user2_id = ?";

            myStmt = myConn.prepareStatement(sql);


            myStmt.setInt(1, relation.getUserId());
            myStmt.setInt(2, relation.getFriendId());

            myStmt.execute();
        }
        catch (Exception e){
            e.printStackTrace();
        }
        finally {
            close(myConn, myStmt, null);
        }
    }

    public ArrayList<Member> getFriends(int id) throws Exception{
        ArrayList<Member> friends = new ArrayList<Member>();
        Connection myConn = null;
        PreparedStatement myStmt = null;
        ResultSet myRs = null;

        try {
            myConn = dataSource.getConnection();

            String sql = "select * from friendships where user1_id = ? OR user2_id = ?";

            myStmt = myConn.prepareStatement(sql);

            myStmt.setInt(1, id);
            myStmt.setInt(2, id);

            myRs = myStmt.executeQuery();

            while (myRs.next()) {
                int user1_id = myRs.getInt("user1_id");
                int user2_id = myRs.getInt("user2_id");

                if(user1_id == id){
                    friends.add(getMemberById(user2_id));
                }
                else{
                    friends.add(getMemberById(user1_id));
                }
            }

            return friends;
        }
        finally {
            close(myConn, myStmt, myRs);
        }
    }



    public void createPost(Post post) throws Exception {
        Connection myConn = null;
        PreparedStatement myStmt = null;

        try {
            myConn = dataSource.getConnection();

            String sql = "INSERT INTO post (title, message, lien, creationDate, user_id) "
                        + "VALUES (?, ?, ?, ?, ?)";

            myStmt = myConn.prepareStatement(sql);

            myStmt.setString(1, post.getTitle());
            myStmt.setString(2, post.getMessage());
            myStmt.setString(3, post.getLien());
            myStmt.setInt(5, post.getUserId());

            myStmt.execute();
        }
        finally {
            close(myConn, myStmt, null);
        }
    }

    public void editPost(Post post){
        Connection myConn = null;
        PreparedStatement myStmt = null;

        try {
            myConn = dataSource.getConnection();

            String sql = "UPDATE Post SET title=?, message=?, lien=?, updated_at=?, user_id=?"
                        + " WHERE post_id=?";

            myStmt = myConn.prepareStatement(sql);

            myStmt.setString(1, post.getTitle());
            myStmt.setString(2, post.getMessage());
            myStmt.setString(3, post.getLien());
            myStmt.setTimestamp(5, new Timestamp(System.currentTimeMillis())); // updated_at
            myStmt.setInt(5, post.getUserId());

            myStmt.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            close(myConn, myStmt, null);
        }

    }

    public void removePost(Post post){
        Connection myConn = null;
        PreparedStatement myStmt = null;

        try {
            myConn = dataSource.getConnection();

            String sql = "delete from post WHERE post_id = ?";

            myStmt = myConn.prepareStatement(sql);

            myStmt.setInt(1, post.getId());

            myStmt.execute();
        }
        catch (Exception e){
            e.printStackTrace();
        }
        finally {
            close(myConn, myStmt, null);
        }
    }


}
