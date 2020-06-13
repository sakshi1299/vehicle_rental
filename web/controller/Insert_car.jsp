<%-- 
    Document   : Insert_car
    Created on : Sep 22, 2019, 7:59:03 PM
    Author     : mashe
--%>

<%@page import="CRUD.Insert_value"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.css" integrity="sha256-xykLhwtLN4WyS7cpam2yiUOwr709tvF3N/r7+gOMxJw=" crossorigin="anonymous" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha256-3blsJd4Hli/7wCQ+bmgXfOdK7p/ZUMtPXY08jmxSSgk=" crossorigin="anonymous"></script>
  
  

    </head>
    <body>
     <%
        String name=request.getParameter("name");
         String carno=request.getParameter("carno");
         String capcity=request.getParameter("capcity");
         String cost=request.getParameter("cost");
         String address=request.getParameter("address");
         String owner_name=request.getParameter("owner_name");
         String mobile=request.getParameter("mobile");
        
         
         Insert_value i1=new Insert_value();
        int i=i1.insert_car(name,carno,capcity,cost,address,owner_name,mobile );
         if(i==1){
            %>
            <script>
                $(document).ready(function() {
                    toastr.success('Successfully Inserted');
                });
               setTimeout(function () {
                 window.location.href = "http://localhost:8080/finalapp/a_index.jsp"; //will redirect to your blog page (an ex: blog.html)
                }, 2000);
            </script>
            <%
               }
            else{%>
                <script>
                 $(window).load(function() {
                    toastr.error('error occured');
                 });
                </script>
              <% }
              %>

 
   
    </body>
    
</html>
