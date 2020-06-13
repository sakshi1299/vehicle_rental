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
    <%@include file="c_sidebar.jsp" %>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <%@include file="c_topbar.jsp" %>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
                <h1 class="h3 mb-0 text-gray-800">Vehicle </h1>
            
            </div>
          <h1 class="h3 mb-2 text-gray-800"></h1>
        
        
              <div class="my-2"></div>
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Vehicle</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                   <form action="action.jsp" method="post">    
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                        <th>Vehicle id</th>
                      <th>Vehicle Name</th>
                      <th>Vehicle No</th>
                      <th>Capacity</th>
                      <th>Cost</th>
                      <th>Owner Name</th>
                      <th>Address</th>
                      <th>Mobile No</th>
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
                          String qry="SELECT * FROM `vehicle` WHERE availibilty = 0 ";
                          rs=st.executeQuery(qry);
                         
                          while(rs.next())
                          {
                             %> 
                        
                             <tbody>
                                 <tr>
                                     <td id="t1"><%=rs.getString(1)%></td>
                                 <td ><%=rs.getString(2)%></td>
                                 <td><%=rs.getString(3)%></td>
                                 <td><%=rs.getString(4)%></td>
                                 <td><%=rs.getString(5)%></td>
                                 <td><%=rs.getString(7)%></td>
                                 <td><%=rs.getString(6)%></td>
                                 <td><%=rs.getString(8)%></td>
                                 <td><a href="action.jsp?name=<%=rs.getString(2)%>&id=<%=rs.getString(1)%>"   class="btn btn-info">
                                          Book
                            </a></td></tr>
                          </tbody>
                        
                          <% }
                      }
                      catch(Exception e){}
                      %>
                  
                </table>
                </form>        
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
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
            <form action="logout">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <input type="submit" value="logout" class="btn btn-primary" >
            </form>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
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
