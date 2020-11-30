package com.techdenovo.app.servletsessionmanagement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = {"/dashboard","/"})
public class DashboardServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession(false)!=null){
            request.getRequestDispatcher("dashboard.jsp").forward(request,response);
        } else {
            response.sendRedirect(request.getServletContext().getContextPath()+"/login");
//            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }

    }
}
