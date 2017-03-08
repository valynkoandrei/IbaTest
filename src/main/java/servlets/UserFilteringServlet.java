package servlets;

import crud.UserController;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Андрей on 07.03.2017.
 */
@WebServlet(urlPatterns = "/UserFilteringServlet")
public class UserFilteringServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setStatus(200);
        boolean placeOfWorkFilter=Boolean.parseBoolean(request.getParameter("placeOfWorkFilter"));
        double taxFilter=Double.parseDouble(request.getParameter("taxFilter"));
        UserController userController = new UserController();
        List<User> allUser = userController.getUserFilter(placeOfWorkFilter, taxFilter);
        request.getSession().setAttribute("allUser", allUser);
        request.getRequestDispatcher("jsp/View.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
