/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Angel
 */
public class HelpServlet extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse rsp) throws ServletException, IOException {
               
        rsp.sendRedirect("http://angeltr.wordpress.com/2011/12/14/project-3-emarket/");
    }
}
