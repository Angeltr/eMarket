<%-- 
    Document   : index
    Created on : Dec 10, 2011, 11:20:19 PM
    Author     : Angel
--%>

<%@page import="foo.Item" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            body { background-color: #6495ED }
            h1 {text-align:center;}
        </style>
    </head>
    <body>
        
       
        
     <%   String cafeQuantity_str="0";
          String sugarQuantity_str="0";
          String waterQuantity_str="0";
          double cafeSum=0.0;
          double sugarSum=0.0;
          double waterSum=0.0;
          String cafeSum_str="0.0";
          String sugarSum_str="0.0";
          String waterSum_str="0.0"; 
          Item cafeItem=null;
          Item sugarItem=null;
          Item waterItem=null;        %>
          
      <% Cookie[] cookies = request.getCookies();
        if(cookies!=null) {
          for(int i=0;i<cookies.length;i++) {
              if(cookies[i].getName().equals("cafeQuantity")) {
                   cafeQuantity_str=cookies[i].getValue();
                      }
              if(cookies[i].getName().equals("sugarQuantity")) {
                   sugarQuantity_str=cookies[i].getValue();
                      }
              if(cookies[i].getName().equals("waterQuantity")) {
                   waterQuantity_str=cookies[i].getValue();
                      }
              if(cookies[i].getName().equals("cafeSum")) {
                   cafeSum_str=cookies[i].getValue();
                      }
              if(cookies[i].getName().equals("sugarSum")) {
                   sugarSum_str=cookies[i].getValue();
                      }
              if(cookies[i].getName().equals("waterSum")) {
                   waterSum_str=cookies[i].getValue();
                      }
                    }      
                  }        %>   
                    
        <% if(request.getAttribute("cafe")!=null) { 
                        cafeItem = (Item)request.getAttribute("cafe");
                        cafeSum=cafeItem.getQuantity()*cafeItem.getPrice();
                        cafeSum_str = Double.toString(cafeSum);
                           } %>
                           
        <% if(request.getAttribute("sugar")!=null) { 
                        sugarItem = (Item)request.getAttribute("sugar");
                        sugarSum=sugarItem.getQuantity()*sugarItem.getPrice();
                        sugarSum_str = Double.toString(sugarSum);
                           } %>
                           
        <% if(request.getAttribute("water")!=null) { 
                        waterItem = (Item)request.getAttribute("water");
                        waterSum=waterItem.getQuantity()*waterItem.getPrice(); 
                        waterSum_str = Double.toString(waterSum);
                        } %>
                        
        <% double total=0.0;
           String total_str="0.0"; %>
        <% total = Integer.parseInt(cafeQuantity_str)*18.50+Integer.parseInt(sugarQuantity_str)*6.95+Integer.parseInt(waterQuantity_str)*1.29;
           total_str = Double.toString(total); %>
        <% total = cafeSum+sugarSum+waterSum;
           total_str = Double.toString(total); %>
        
        <h1>Welcome to the e-Market</h1>
        
        <div align="center">
         <form name="input" method="post" action="eMarketServlet">
          <table border="1">
            <caption>Basket</caption>
            <tr>
                <th>Item</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total</th>
            </tr>
            <tr>
                <td>Cafe</td>
                <td>18.50</td>
                <td>
                    <input type="text" name="cafeQuantity" value=<%= cafeQuantity_str %> />
                    <script type="text/javascript"> <%-- Javascript gia na krataw thn timh sto input field --%>
                       <% if(cafeItem!=null) { %>
                       document.forms["input"]["cafeQuantity"].value =<%= Integer.toString(cafeItem.getQuantity()) %>;
                       <% } %>
                    </script>
                </td>
                <td>
                    <input type="text" value=<%= cafeSum_str %> />
                </td>
            </tr>
            <tr>
                <td>Sugar</td>
                <td>6.95</td>
                <td>
                    <input type="text" name="sugarQuantity" value=<%= sugarQuantity_str %> />
                    <script type="text/javascript">
                       <% if(sugarItem!=null) { %>
                       document.forms["input"]["sugarQuantity"].value =<%= Integer.toString(sugarItem.getQuantity()) %>;
                       <% } %>
                    </script>
                </td>
                <td>
                    <input type="text" value=<%= sugarSum_str %> />
                </td>
            </tr>
            <tr>
                <td>Water</td>
                <td>1.29</td>
                <td>
                    <input type="text" name="waterQuantity" value=<%= waterQuantity_str %> />
                    <script type="text/javascript">
                       <% if(waterItem!=null) { %>
                       document.forms["input"]["waterQuantity"].value =<%= Integer.toString(waterItem.getQuantity()) %>;
                       <% } %>
                    </script>
                </td>
                <td>
                    <input type="text" value=<%= waterSum_str %> />
                </td>
            </tr>
            <tr>
                <td>Total</td>
                <td></td>
                <td></td>
                <td> 
                    <input type="text" value=<%= total_str %> />
                </td>
            </tr>
        </table>
             <input type="submit" />
       </form>
                
       <form name="code" method="get" action="Code.zip" >
         <input type="submit" name="getCode" value="source code" />
       </form>
                
       <form name="help" method="get" action="HelpServlet" >
         <input type="submit" name="getHelp" value="help" />
       </form>
      </div>
                
        
    </body>
</html>
