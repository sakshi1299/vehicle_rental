<%-- 
    Document   : a_index.jsp
    Created on : Sep 16, 2019, 8:36:13 AM
    Author     : mashe
--%>

<%@page import="constant.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="header.jsp" %> 
    </head>
    <body>
       
<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <%@include file="sidebar.jsp" %>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <%@include file="topbar.jsp" %>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
           </div>
       
      
            
       
          
          <!-- Content Row -->
          <div class="row">
            
            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Vehicle</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">
                          <%
                      Connection con=null;
                      Statement st=null;
                      ResultSet rs=null;
                      try
                      {
                          DB d=new DB();
                          con=d.getCon();
                          st=con.createStatement();
                           String c_vehicle_count="";
                          String qry="select count(*) from vehicle";
                          rs=st.executeQuery(qry);
                         
                          while(rs.next())
                          {
                             c_vehicle_count=rs.getString(1);
                             out.print(c_vehicle_count);
                          }
                      }
                      catch(Exception e){}
             %> 
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-car fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Customer's</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">
                          
                           <%
                  
                      try
                      {
                          DB d=new DB();
                          con=d.getCon();
                          st=con.createStatement();
                           String c_vehicle_count="";
                          String qry="select count(*) from customer";
                          rs=st.executeQuery(qry);
                         
                          while(rs.next())
                          {
                             c_vehicle_count=rs.getString(1);
                             out.print(c_vehicle_count);
                          }
                      }
                      catch(Exception e){}
             %> 
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-users fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Customer Feedback</div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                            <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                                  <%
                  
                      try
                      {
                          DB d=new DB();
                          con=d.getCon();
                          st=con.createStatement();
                           String c_vehicle_count="0";
                          String qry="select count(*) from feedback";
                          rs=st.executeQuery(qry);
                         
                          while(rs.next())
                          {
                             c_vehicle_count=rs.getString(1);
                             out.print(c_vehicle_count);
                          }
                      }
                      catch(Exception e){}
             %> 
                            </div>
                        </div>
                       
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-clipboard fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Pending Requests Card Example -->
           
          </div>

          <!-- Content Row -->

      
          <!-- Content Row -->
       

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  
    <%@include file="footer.jsp" %> 
    
     <%
         response.setHeader("cache-control", "no-chace, no-store, must-revalidate");
       if(session.getAttribute("user")==null && session.getAttribute("pass")==null)
       {
           response.sendRedirect("index.jsp");
       }
   %>
    </body>
</html>
