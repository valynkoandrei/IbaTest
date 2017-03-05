package servlets;

import crud.UserController;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/User")
public class AddUserServlet extends HttpServlet {

    private User getUser(HttpServletRequest request, HttpServletResponse response){
        String username=request.getParameter("username");
        int periodCalculation=Integer.parseInt(request.getParameter("periodCalculation"));
        long sumOfRealizationProducts=Long.parseLong(request.getParameter("sumOfRealizationProducts"));
        long sumOfUnrealizableProducts=Long.parseLong(request.getParameter("sumOfUnrealizableProducts"));
        boolean placeOfWork=Boolean.parseBoolean(request.getParameter("placeOfWork"));
        boolean privileges=Boolean.parseBoolean(request.getParameter("privileges"));
        boolean single=Boolean.parseBoolean(request.getParameter("single"));
        int amountOfChildren=Integer.parseInt(request.getParameter("amountOfChildren"));
        int amountOfChildrenDisabled=Integer.parseInt(request.getParameter("amountOfChildrenDisabled"));
        int amountOfDependents=Integer.parseInt(request.getParameter("amountOfDependents"));
        long costOfInsurance=Long.parseLong(request.getParameter("costOfInsurance"));
        long costOfStudy=Long.parseLong(request.getParameter("costOfStudy"));
        long costOfHousing=Long.parseLong(request.getParameter("costOfHousing"));
        long costOfBusinessActivities=Long.parseLong(request.getParameter("costOfBusinessActivities"));

        return new User(username, periodCalculation, sumOfRealizationProducts, sumOfUnrealizableProducts,
                placeOfWork, privileges, single, amountOfChildren, amountOfChildrenDisabled, amountOfDependents, costOfInsurance,
                costOfStudy, costOfHousing, costOfBusinessActivities);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setStatus(200);
        User user =getUser(request,response);
        UserController userController = new UserController();
        userController.addUser(user);
        List<User> allUser = new ArrayList<>();
        allUser.add(user);
        request.getSession().setAttribute("allUser", allUser);
        System.out.println(user.toString());
        request.getRequestDispatcher("jsp/View.jsp").forward(request, response);

    }


}
