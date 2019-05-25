package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class Register extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        String passwordRepeated = req.getParameter("password-repeated");
        String firm = req.getParameter("firm");
        String business = req.getParameter("business");

        if (login.equals("")) {
            req.setAttribute("register_error", "empty_login");
        } else if (password.equals("")) {
            req.setAttribute("register_error", "empty_password");
        } else if (!(password.equals(passwordRepeated))) {
            req.setAttribute("register_error", "wrong_password");
        } else {
            //włóż dane do bazy
        }
        req.getRequestDispatcher("/register_login.jsp").forward(req, resp);

    }
}
