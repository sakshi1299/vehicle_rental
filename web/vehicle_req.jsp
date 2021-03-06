<%@page import="constant.DB"%>
<!DOCTYPE html>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html lang="en">

<head>

    <%@include file="header.jsp" %>

</head>

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
          <h1 class="h3 mb-2 text-gray-800">Vehicle Requests</h1>
          <p class="mb-4">All Vehicle Requests.</p>
    
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Requests</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                        <th>Customer name</th>
                        <th>Vehicle Name</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <%
                      Connection con=null;
                      Statement st=null;
                      ResultSet rs=null;
                      try
                      {
                          DB d=new DB();
                          con=d.getCon();
                          st=con.createStatement();
                          String qry="select * from request";
                          rs=st.executeQuery(qry);
                         
                          while(rs.next())
                          {
                             %> 
                             <form action="action_req.jsp" method="post">
                             <tbody>
                                 <tr>
                                     <td id="t1"><%=rs.getString(1)%></td>
                                 <td ><%=rs.getString(2)%></td>
                                 
                                 <td><a href="action_req.jsp?name=<%=rs.getString(2)%> "   class="btn btn-info">
                                    Approve
                            </a></td></tr>
                          </tbody>
                          </form>
                          <% }
                      }
                      catch(Exception e){}
                      %>
                  
                </table>
              </div>
            </div>
          </div>

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

</body>

</html>
