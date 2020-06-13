<%@page import="constant.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <%@include file="header.jsp" %>

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

      <%@include file="sidebar.jsp" %>
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <%@include file="topbar.jsp"%>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Feedback Portal</h1>
          <p class="mb-4">All Feedback From Customer.</p>
    
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Feedback</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                        <th>Vehicle id</th>
                        <th>Customer Name</th>
                      <th>Vehicle Name</th>
                     
                      
                      <th>Cost</th>
                      
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
                          String qry="select * from return_req";
                          rs=st.executeQuery(qry);
                         
                          while(rs.next())
                          {
                             %> 
                             <form action="a_ret_confirm.jsp" method="post">
                             <tbody>
                                 <tr>
                                     <td id="t1"><%=rs.getString(1)%></td>
                                 <td ><%=rs.getString(2)%></td>
                                 <td><%=rs.getString(3)%></td>
                                <td><%=rs.getString(4)%></td>
                                 <td><a href="a_ret_confirm.jsp?name=<%=rs.getString(1)%>"   class="btn btn-info">
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


  <!-- Bootstrap core JavaScript-->
  <%@include file="footer.jsp" %>
</body>

</html>
