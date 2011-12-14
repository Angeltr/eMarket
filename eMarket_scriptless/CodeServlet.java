/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Angel
 */
public class CodeServlet extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse rsp) throws ServletException, IOException {
    
        rsp.setContentType("application/x-zip");
        
        ServletContext ctx = getServletContext();
        InputStream is = ctx.getResourceAsStream("/Code.zip");
        int read = 0;
        byte[] bytes = new byte[1024];
    

        OutputStream os = rsp.getOutputStream();
        while ((read = is.read(bytes)) != -1) {
        os.write(bytes, 0, read);
        }
        os.flush();
        os.close();
   }

}
