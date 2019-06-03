package servlets;

import beans.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/create")
public class Create extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("name");
        String layout = req.getParameter("layout");
        String color = req.getParameter("color");
        String content = req.getParameter("content");

        System.out.println(name + " " + layout + " " + color);

        Page nowa = new Page();
        nowa.setName(name);
        nowa.setColor(color);
        nowa.setLayout(layout);
        nowa.setContent(content);

        HttpSession session = req.getSession();

        List<Page> pages = (List<Page>) session.getAttribute("pages");
        if (pages == null) {
            pages = new ArrayList<>();
        }
        pages.add(nowa);
        session.setAttribute("pages", pages);

        System.out.println(pages.toString());


        req.setAttribute("site", "pages");
        req.setAttribute("created", true);
        req.getRequestDispatcher("/main.jsp").forward(req, resp);
    }
}
