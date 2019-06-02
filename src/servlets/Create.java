package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/create")
public class Create extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //TODO: obsługa tworzenia strony

        req.setAttribute("site", "functions");
        req.setAttribute("created", true);
        req.getRequestDispatcher("/main.jsp").forward(req, resp);
    }
}
