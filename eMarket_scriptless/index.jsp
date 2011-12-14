<%-- 
    Document   : index
    Created on : Dec 13, 2011, 10:06:00 PM
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
        <script type="text/javascript">
            function check() {
  //  if(document.forms["input"]["cafeQuantity"].value == "0")
        document.forms["input"]["cafeQuantity"].value = "empty";
}
        </script>
    </head>
    <body>
        
      <jsp:useBean id="cafe" class="foo.Item" >
        <jsp:setProperty name="cafe" property="quantity" param="cafeQuantity" />
        <jsp:setProperty name="cafe" property="name" value="Cafe" />
        <jsp:setProperty name="cafe" property="price" value="18.50" />
      </jsp:useBean>
        
      <jsp:useBean id="sugar" class="foo.Item" >
        <jsp:setProperty name="sugar" property="quantity" param="sugarQuantity" />
        <jsp:setProperty name="sugar" property="name" value="Sugar" />
        <jsp:setProperty name="sugar" property="price" value="6.95" />
      </jsp:useBean>
        
      <jsp:useBean id="water" class="foo.Item" >
        <jsp:setProperty name="water" property="quantity" param="waterQuantity" />
        <jsp:setProperty name="water" property="name" value="Cafe" />
        <jsp:setProperty name="water" property="price" value="1.29" />
      </jsp:useBean>
        
        <h1>Welcome to the e-Market</h1>
        
        <div align="center">
         <form name="input" method="post" action="index.jsp">
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
                    <input id="cafeInput" type="text" name="cafeQuantity" value="0" />
                    <script type="text/javascript">
                        document.forms["input"]["cafeQuantity"].value = "${cafe.quantity}";
                    </script>
                </td>
                <td>
                    <input type="text" value="${cafe.quantity*cafe.price}" />
                </td>
            </tr>
            <tr>
                <td>Sugar</td>
                <td>6.95</td>
                <td>
                    <input type="text" name="sugarQuantity" value="0" />
                    <script type="text/javascript">
                        document.forms["input"]["sugarQuantity"].value = "${sugar.quantity}";
                    </script>
                </td>
                <td>
                    <input type="text" value="${sugar.quantity*sugar.price}" />
                </td>
            </tr>
            <tr>
                <td>Water</td>
                <td>1.29</td>
                <td>
                    <input type="text" name="waterQuantity" value="0" />
                    <script type="text/javascript">
                        document.forms["input"]["waterQuantity"].value = "${water.quantity}";
                    </script>
                </td>
                <td>
                    <input type="text" value="${water.quantity*water.price}" />
                </td>
            </tr>
            <tr>
                <td>Total</td>
                <td></td>
                <td></td>
                <td>
                    <input type="text" value="${cafe.quantity*cafe.price+sugar.quantity*sugar.price+water.quantity*water.price}" />
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
