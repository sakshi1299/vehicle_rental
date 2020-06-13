<!DOCTYPE html>
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
          <h1 class="h3 mb-4 text-gray-800">Vehicle Registration</h1>

        </div>
        <div class="container">

            <div class="card o-hidden border-0 shadow-lg my-5">
              <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
      
               
                  <div class="col-lg-12">
                    <div class="p-5">
                      <div class="text-center">
                        <h1 class="h4 text-gray-900 mb-4">Register Vehicle</h1>
                      </div>
                      <form action="controller/Insert_car.jsp" class="user">
                        <div class="form-group row">
                          <div class="col-sm-6 mb-3 mb-sm-0">
                              <input required type="text" class="form-control form-control-user" id="exampleFirstName" placeholder="Vehicle Name" name="name">
                          </div>
                          <div class="col-sm-6">
                              <input required type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Vehicle No"name="carno">
                          </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <input required type="text" class="form-control form-control-user" id="exampleFirstName" placeholder="Capcity" name="capcity">
                            </div>
                            <div class="col-sm-6">
                                <input required type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Cost" name="cost">
                            </div> 
                          </div>
                          <div class="form-group">
                              <input required type="text" class="form-control form-control-user" id="exampleLastName" placeholder="address"name="address">
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                  <input required type="text" class="form-control form-control-user" id="exampleFirstName" placeholder="Owner Name" name="owner_name">
                                  
                                </div>
                                <div class="col-sm-6">
                                    <input required="" type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Mobile No" name="mobile">
                                </div>
                              </div>
                        
                        <button type="submit"  class="btn btn-primary btn-user btn-block">
                          Register 
                        </button>
                        <hr>
                      
                      </form>
                     
                
                    </div>
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


  <!-- Bootstrap core JavaScript-->
  <%@include file="footer.jsp" %>

</body>

</html>
