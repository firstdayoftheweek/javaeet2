package servlet;

import db.DBManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import module.Items;

import java.io.IOException;

@WebServlet(value = "/details")
public class DetailsItemServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        Items item = DBManager.getItemById(Long.parseLong(id));
        req.setAttribute("goodsDetails", item);
        req.getRequestDispatcher("detailsItem.jsp").forward(req,resp);
    }
}
