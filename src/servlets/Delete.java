package servlets;

import beans.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/delete")
public class Delete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Integer num = Integer.valueOf(req.getParameter("a"));
        if (num != null)
            System.out.println("num: " + num);
        else
            System.out.println("num nie ma wartości");
        HttpSession session = req.getSession();


        List<Page> pages = (List<Page>) session.getAttribute("pages");
        if (num != null && pages != null) {
            pages.remove(num - 1);
        }
        session.setAttribute("pages", pages);

        System.out.println(pages.toString());


        req.setAttribute("site", "pages");
        req.setAttribute("deleted", true);
        req.getRequestDispatcher("/main.jsp").forward(req, resp);
    }
}
