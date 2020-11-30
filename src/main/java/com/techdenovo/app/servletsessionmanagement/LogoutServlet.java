package com.techdenovo.app.servletsessionmanagement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(value = "/logout")
public class LogoutServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession oldHttpSession = request.getSession(false);
        if (oldHttpSession != null) {
            oldHttpSession.removeAttribute("user");
            oldHttpSession.invalidate();
            response.sendRedirect(request.getServletContext().getContextPath()+"/login");

        }
    }
}
