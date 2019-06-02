package servlets;

import util.Database;

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

        String name = req.getParameter("name");
        String layout = req.getParameter("layout");
        String color = req.getParameter("color");

        System.out.println(name + " " + layout + " " + color);
        Database database = new Database();
        database.showMeTheMoney();

        //TODO: obsługa tworzenia strony


        req.setAttribute("site", "pages");
        req.setAttribute("created", true);
        req.getRequestDispatcher("/main.jsp").forward(req, resp);
    }
}
