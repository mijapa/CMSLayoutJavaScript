package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/log_in")
public class LogIn extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String login = req.getParameter("login");
        String password = req.getParameter("password");

        if (login.equals("mp") && password.equals("mp")) {
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        } else {
            req.setAttribute("login_error", true);
            req.getRequestDispatcher("/log_in.jsp").forward(req, resp);
        }
    }
}
