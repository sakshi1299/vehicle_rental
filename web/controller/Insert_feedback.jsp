<%-- 
    Document   : Insert_feedback
    Created on : Oct 1, 2019, 1:32:17 AM
    Author     : mashe
--%>

<%@page import="CRUD.Insert_value"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
              String vname=request.getParameter("vname");
         String vno=request.getParameter("vno");
         String feedback=request.getParameter("feedback");
         Insert_value i1=new Insert_value();
         i1.insert_feedback(vname,vno, feedback);
         %>
         successfull
    </body>
</html>
