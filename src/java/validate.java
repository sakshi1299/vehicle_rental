/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sakshi
 */
@WebServlet(urlPatterns = {"/validate"})
public class validate extends HttpServlet {
log_check l=new log_check();
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session =request.getSession();
        String uname=request.getParameter("username");
        String p=request.getParameter("password");
        
        if(l.check_admin(uname, p))
        {
            session.setAttribute("user", uname);
             session.setAttribute("pass", p);
             session.setAttribute("msg", "0");
            response.sendRedirect("a_index.jsp");
        }
        
        else if(l.check_customer(uname, p))
        {
            session.setAttribute("user", uname);
            session.setAttribute("pass", p);
            response.sendRedirect("c_index.jsp");
        }
        
        else
        {
            response.sendRedirect("index.jsp");
        }
    }

}