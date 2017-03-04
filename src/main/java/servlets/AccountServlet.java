package servlets;

import entity.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/Account")
public class AccountServlet extends HttpServlet {

    private Account getAccount(HttpServletRequest request, HttpServletResponse response){
        String username=request.getParameter("username");
        int periodCalculation=Integer.parseInt(request.getParameter("periodCalculation"));
        int sumOfRealizationProducts=Integer.parseInt(request.getParameter("sumOfRealizationProducts"));
        int sumOfUnrealizableProducts=Integer.parseInt(request.getParameter("sumOfUnrealizableProducts"));
        boolean placeOfWork=Boolean.parseBoolean(request.getParameter("placeOfWork"));
        boolean privileges=Boolean.parseBoolean(request.getParameter("privileges"));
        boolean single=Boolean.parseBoolean(request.getParameter("single"));
        int amountOfChildren=Integer.parseInt(request.getParameter("amountOfChildren"));
        int amountOfChildrenDisabled=Integer.parseInt(request.getParameter("amountOfChildrenDisabled"));
        int amountOfDependents=Integer.parseInt(request.getParameter("amountOfDependents"));
        int costOfInsurance=Integer.parseInt(request.getParameter("costOfInsurance"));
        int costOfStudy=Integer.parseInt(request.getParameter("costOfStudy"));
        int costOfHousing=Integer.parseInt(request.getParameter("costOfHousing"));
        int costOfBusinessActivities=Integer.parseInt(request.getParameter("costOfBusinessActivities"));
        Account account=new Account(username, periodCalculation, sumOfRealizationProducts, sumOfUnrealizableProducts,
                placeOfWork, privileges, single, amountOfChildren, amountOfChildrenDisabled, amountOfDependents, costOfInsurance,
                costOfStudy, costOfHousing, costOfBusinessActivities);
        return account;
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setStatus(200);
        Account account=getAccount(request,response);
        List<Account> allAccount = new ArrayList<>();
        allAccount.add(account);
        request.getSession().setAttribute("allAccount",allAccount);
        System.out.println(account.toString());
        request.getRequestDispatcher("jsp/View.jsp").forward(request, response);

    }


}
