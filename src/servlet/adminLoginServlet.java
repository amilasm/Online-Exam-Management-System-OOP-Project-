package servlet;

import service.login;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet("/adminLoginServlet")
public class adminLoginServlet extends HttpServlet {
    public static final Logger logger = Logger.getLogger(adminLoginServlet.class.getName());
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");   //get paraeters from database
        String password = request.getParameter("password");

        login l = new login();

        //if login success redirect to adminDashboard ,if login unsuccess display same page
        if(l.adminlogin(username,password)) {
            RequestDispatcher dis = request.getRequestDispatcher("registerLecturer.jsp");
            dis.forward(request, response);
        }
        else{
            RequestDispatcher dis = request.getRequestDispatcher("adminLogin.jsp");
            dis.forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
