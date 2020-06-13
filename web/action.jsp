<%-- 
    Document   : action.jsp
    Created on : Sep 29, 2019, 8:30:14 PM
    Author     : Sakshi
--%>

<%@page import="constant.DB"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.css" integrity="sha256-xykLhwtLN4WyS7cpam2yiUOwr709tvF3N/r7+gOMxJw=" crossorigin="anonymous" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha256-3blsJd4Hli/7wCQ+bmgXfOdK7p/ZUMtPXY08jmxSSgk=" crossorigin="anonymous"></script>
  
    </head>
    <body>
        <%
                      Connection con=null;
                      Statement st=null;
                      
                      String n=request.getParameter("name");
                      String id=request.getParameter("id");
                      session.getAttribute("user");
                      try
                      {
                         DB d=new DB();
                          con=d.getCon();
                          st=con.createStatement();
                        
                          String qry="INSERT INTO `request` (`customer_name`, `vehicle_name`) VALUES ('"+session.getAttribute("user")+"', '"+n+"')";
                           
                          st.executeUpdate(qry);
                         %>
                            <script>
                $(document).ready(function() {
                    toastr.success('Successfully Inserted');
                     setTimeout("location.href = 'http://localhost:8080/finalapp/c_index.jsp';",1500);
                });
              
            </script>
            <%
                         
                      }
                      catch(Exception e){
                            out.print(e.getMessage());
                        %>
                        <script>
                $(document).ready(function() {
                    toastr.success('Successfully Requested');
                });
          
            </script>
            <%
                        
                            
                      }
         %>
         
         <%
         response.setHeader("cache-control", "no-chace, no-store, must-revalidate");
       if(session.getAttribute("user")==null && session.getAttribute("pass")==null)
       {
           response.sendRedirect("index.jsp");
       }
   %>
    </body>
</html


