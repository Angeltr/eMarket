package foo;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import foo.Item;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Angel
 */
public class eMarketServlet extends HttpServlet {
        
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String cafeQuantity = request.getParameter("cafeQuantity");
        String sugarQuantity = request.getParameter("sugarQuantity");
        String waterQuantity = request.getParameter("waterQuantity");
        
        if(!cafeQuantity.equals("")) { //an o pelaths exei eisagei posothta gia cafe
            Item cafeItem = new Item();
            cafeItem.setName("Cafe");
            cafeItem.setPrice(18.50);
            cafeItem.setQuantity(Integer.parseInt(cafeQuantity.trim()));
            request.setAttribute("cafe", cafeItem);
            double cafeSum = Integer.parseInt(cafeQuantity.trim())*cafeItem.getPrice();
            Cookie cafeSumCookie = new Cookie("cafeSum",Double.toString(cafeSum));
            Cookie cafeQuantityCookie = new Cookie("cafeQuantity",cafeQuantity);
            cafeSumCookie.setMaxAge(60*60*24*7);
            cafeQuantityCookie.setMaxAge(60*60*24*7);
            response.addCookie(cafeSumCookie);
            response.addCookie(cafeQuantityCookie);
        }
        if(!sugarQuantity.equals("")) { //an o pelaths exei eisagei posothta gia zaxarh
            Item sugarItem = new Item();
            sugarItem.setName("Sugar");
            sugarItem.setPrice(6.95);
            sugarItem.setQuantity(Integer.parseInt(sugarQuantity.trim()));
            request.setAttribute("sugar", sugarItem);
            double sugarSum = Integer.parseInt(sugarQuantity.trim())*sugarItem.getPrice();
            Cookie sugarSumCookie = new Cookie("sugarSum",Double.toString(sugarSum));
            sugarSumCookie.setMaxAge(60*60*24*7);
            response.addCookie(sugarSumCookie);
            Cookie sugarQuantityCookie = new Cookie("sugarQuantity",sugarQuantity);
            sugarQuantityCookie.setMaxAge(60*60*24*7);
            response.addCookie(sugarQuantityCookie);
        }
        if(!waterQuantity.equals("")) { //an o pelaths exei eisagei posothta gia nero
            Item waterItem = new Item();
            waterItem.setName("Water");
            waterItem.setPrice(1.29);
            waterItem.setQuantity(Integer.parseInt(waterQuantity.trim()));
            request.setAttribute("water", waterItem);
            double waterSum = Integer.parseInt(waterQuantity.trim())*waterItem.getPrice();
            Cookie waterSumCookie = new Cookie("waterSum",Double.toString(waterSum));
            waterSumCookie.setMaxAge(60*60*24*7);
            response.addCookie(waterSumCookie);
            Cookie waterQuantityCookie = new Cookie("waterQuantity",waterQuantity);
            waterQuantityCookie.setMaxAge(60*60*24*7);
            response.addCookie(waterQuantityCookie);
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request,response);
    }

}
