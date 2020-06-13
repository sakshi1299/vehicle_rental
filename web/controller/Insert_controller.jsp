<%-- 
    Document   : Insert_controller
    Created on : Sep 22, 2019, 7:27:54 PM
    Author     : mashe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="CRUD.Insert_value"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <%
         // for inserting customer
         String fname=request.getParameter("first_name");
         String mname=request.getParameter("middle_name");
         String lname=request.getParameter("last_name");
         String email=request.getParameter("email_id");
         String phoneno=request.getParameter("phone_number");
         String pass=request.getParameter("password");
         
         Insert_value i1=new Insert_value();
         Insert_value i2=new Insert_value();
         Insert_value i3 = new Insert_value();
         i1.insert_cust(email,fname, mname, lname,phoneno);
         i2.insert_registered_customer(email, pass);
      
         
    
     %>
     <script>
         window.location.replace("http://localhost:8080/finalapp/index.jsp");
     </script>
    </body>
</html>
