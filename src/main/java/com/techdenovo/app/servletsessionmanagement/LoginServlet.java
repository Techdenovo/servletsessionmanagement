package com.techdenovo.app.servletsessionmanagement;

import com.techdenovo.app.servletsessionmanagement.dao.UserDAO;
import com.techdenovo.app.servletsessionmanagement.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("login.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        UserDAO userDAO = new UserDAO();
        try {
            User user = userDAO.checkLogin(username,password);
            String destPage = "/login.jsp";
            if(user!=null) {
                HttpSession oldHttpSession = req.getSession(false);
                if (oldHttpSession != null) {
                    oldHttpSession.invalidate();
                }
                HttpSession newHttpSession = req.getSession(true);
                newHttpSession.setAttribute("user",user);
                destPage = "/dashboard.jsp";
                newHttpSession.setMaxInactiveInterval(5 * 60);
            } else {
                String message = "Invalid email/password";
                req.setAttribute("message",message);
            }
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(destPage);
            dispatcher.forward(req,resp);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
