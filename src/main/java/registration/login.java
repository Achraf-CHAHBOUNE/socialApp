package registration;


import jdbc.MemberDbUtil;
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

@WebServlet(name = "login", urlPatterns = "/login")
public class login extends HttpServlet {

    @Resource(name="jdbc/tp2")
    private DataSource dataSource;

    private MemberDbUtil memberDbUtil;


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String pass = req.getParameter("password");

        Member theMember = null;
        memberDbUtil = new MemberDbUtil(dataSource);
        HttpSession session = req.getSession();

        try {
            theMember = memberDbUtil.getMember(email);

            System.out.println("Member: " + theMember.getPassword());
            System.out.println("Member: " + theMember.getUsername());
            System.out.println("Member: " + theMember.getPassword());
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (theMember != null) {
            if (theMember.getPassword().equals(pass)) {
                session.setAttribute("email", theMember.getEmail());
                resp.sendRedirect("/");
                System.out.println("Login Successful");
            } else {
                resp.sendRedirect("/login");
                System.out.println("Login Failed");
            }
        } else {
            resp.sendRedirect("/login");
            System.out.println("Login Null");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/login.jsp").forward(req, resp);
    }
}