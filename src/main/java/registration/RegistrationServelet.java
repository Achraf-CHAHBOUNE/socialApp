package registration;

import jdbc.MemberDbUtil;
import users.Member;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;



@WebServlet(name = "register", urlPatterns = "/register")
public class RegistrationServelet extends HttpServlet {

    @Resource(name="jdbc/tp2")
    private DataSource dataSource;
    private Member member;
    private MemberDbUtil memberDbUtil;


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String fname = req.getParameter("fname");
        String lname = req.getParameter("lname");
        String uname = req.getParameter("uname");
        String uemail = req.getParameter("email");
        String upass = req.getParameter("pass");

        member = new Member(fname, lname, uname, uemail, upass);

        try {

             memberDbUtil = new MemberDbUtil(dataSource);
             memberDbUtil.addMember(member);
                resp.sendRedirect("/login");

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/registration.jsp").forward(req, resp);
    }
}
