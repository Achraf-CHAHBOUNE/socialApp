package controller;

import Managers.FriendManager;
import users.Member;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "home", urlPatterns = "/")
public class HomeServlet extends HttpServlet {
    private FriendManager friendManager;

    @Resource(name="jdbc/tp2")
    DataSource dataSource;

    @Override
    public void init() throws ServletException {
        this.friendManager = new FriendManager(dataSource);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if (session.getAttribute("email") == null) {
            // If the email is null, redirect to the login page
            resp.sendRedirect("login");
            return;
        } else {
            String userEmail = (String) session.getAttribute("email");
            System.out.println("User email: " + userEmail);
            ArrayList<Member> friends = friendManager.getFriends(userEmail);
            System.out.println(friends);
            req.setAttribute( "friends",friends);
        }

        getServletContext().getRequestDispatcher("/home.jsp").forward(req,resp);
    }
}
