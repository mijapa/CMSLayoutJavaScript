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
        String strona = (String) req.getAttribute("strona");
        String imie = (String) req.getAttribute("imie");

        //TODO:obsługa zmiany na stronie

        req.setAttribute("realized", true);
        req.getRequestDispatcher("/main.jsp").forward(req, resp);
    }
}
