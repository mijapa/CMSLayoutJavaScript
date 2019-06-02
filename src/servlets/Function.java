package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/function")
public class Function extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String site = req.getParameter("site");
        String registration = req.getParameter("registration");

        System.out.println(site + " " + registration);

        //TODO:obsługa zmiany na stronie

        req.setAttribute("site", "functions");
        req.setAttribute("realized", true);
        req.getRequestDispatcher("/main.jsp").forward(req, resp);
    }
}
