<%@page import="java.util.Set"%>
<%@page import="id.git.api.service.GetAPIData"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    String customerID= request.getParameter("customerID").toString();
    
    try{
    	GetAPIData api = new GetAPIData();
    	Map<String, String[]> customerByid = api.GetCustomerData(customerID);
    	Set<String> id = customerByid.keySet();
    
    %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>E-Statement</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="../css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <link rel="icon" href="../img/spm.jpg" type="image/x-icon" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <!-- Google Fonts Roboto -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" />
    <!-- MDB -->
    <link rel="stylesheet" href="../css/mdb.min.css" />
</head>

<body class="sb-nav-fixed" style="
      /* padding-left: 10px; */
      background-color: #eff4f3;
      background-image: url(../img/img4.png);
      background-repeat: no-repeat;
      white-space: nowrap;
      overflow-x: auto;
      display: initia;
      /* margin: 10px; */
      /* padding: 10px; */
      /* background-size: 20%; */
      height: 100vh;
      /* background: ; */
      background-position: right bottom; /*Positioning*/
    ">
    <!-- navbar -->
    <nav class="sb-topnav navbar navbar-expand navbar bg-light" style="border-radius: 1rem">
        <!-- <nav class="sb-topnav navbar navbar-expand navbar bg-light" style="background-color: #640405"></nav> -->
        <!-- Navbar Brand-->
        <!-- <a class="navbar-brand ps-3" href="index.html">E-Statement</a> -->
        <img src="../img/spm.jpg" class="navbar-brand img-fluid ps-2" alt="" />
        <!-- Sidebar Toggle-->
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"
            style="color: #640405">
            <i class="fas fa-bars"></i>
        </button>
        <!-- Navbar Search-->
        <div class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            <div class="nav-item mt-2">
                <!-- <img src="img/spm.jpg" class="img-fluid" alt="" /> -->
                <h5>Hi Admin!</h5>
            </div>
        </div>
        <!-- Navbar-->
        <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown"
                    aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="#!">Settings</a></li>
                    <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                    <li>
                        <hr class="dropdown-divider" />
                    </li>
                    <li><a class="dropdown-item" href="#!">Logout</a></li>
                </ul>
            </li>
        </ul>
    </nav>
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav" id="sidenavAccordion" style="background-color: #640405">
            <div class="sb-sidenav-menu">
            <div class="nav">
              <!-- <br> -->
              <!-- <div class="sb-sidenav-menu-heading" style="color: #ffffff">
              </div> -->
              <a class="nav-link mt-3" href="../home.jsp" style="color: #ffffff">
                <div class="sb-nav-link-icon">
                  <i class="fas fa-tachometer-alt"></i>
                </div>
                Dashboard
              </a>
              <!-- <div class="sb-sidenav-menu-heading" style="color: #ffffff">
                Interface
              </div> -->
              <a
                class="nav-link collapsed"
                href="#"
                data-bs-toggle="collapse"
                data-bs-target="#collapseLayouts"
                aria-expanded="false"
                aria-controls="collapseLayouts"
                style="color: #ffffff"
              >
                <div class="sb-nav-link-icon">
                  <i class="fas fa-user-friends"></i>
                </div>
                Administration
                <div class="sb-sidenav-collapse-arrow">
                  <i class="fas fa-angle-down"></i>
                </div>
              </a>
              <div
                class="collapse"
                id="collapseLayouts"
                aria-labelledby="headingOne"
                data-bs-parent="#sidenavAccordion"
              >
                <nav class="sb-sidenav-menu-nested nav">
                  <a class="nav-link" href="generate-pdf.jsp" style="color: #ffffff"
                    >Generate PDF</a
                  >
                  <a
                    class="nav-link"
                    href="content.jsp"
                    style="color: #ffffff"
                    >Content Configuration</a
                  >
                   <!-- <a
                    class="nav-link"
                    href="layout-static.html"
                    style="color: #ffffff"
                    >Preview Sampling</a
                  > -->
                  <a class="nav-link" href="user-management.jsp" style="color: #ffffff"
                    >User Management</a
                  >
                </nav>
              </div>
              <a
                class="nav-link collapsed"
                href="#"
                data-bs-toggle="collapse"
                data-bs-target="#collapse"
                aria-expanded="false"
                aria-controls="collapseLayouts"
                style="color: #ffffff"
              >
                <div class="sb-nav-link-icon">
                  <i class="fas fa-book"></i>
                </div>
                E-Statement
                <div class="sb-sidenav-collapse-arrow">
                  <i class="fas fa-angle-down"></i>
                </div>
              </a>
              <div
                class="collapse"
                id="collapse"
                aria-labelledby="headingOne"
                data-bs-parent="#sidenavAccordion"
              >
                <nav class="sb-sidenav-menu-nested nav">
                  <a
                    class="nav-link"
                    href="../E-Statement/cutomer-pdf-data.jsp"
                    style="color: #ffffff"
                    >Customers PDF Data</a
                  >
                  <a
                    class="nav-link"
                    href="../E-Statement\Send-WA.jsp"
                    style="color: #ffffff"
                    >Send WhatsApp</a
                  >
                  <a
                    class="nav-link"
                    href="../E-Statement\history-report.jsp"
                    style="color: #ffffff"
                    >WhatsApp Report</a
                  >
                </nav>
              </div>
            </div>
          
          </div>
                <div class="sb-sidenav-footer">
                    <!-- <div class="small">Logged in as:</div> -->
                    <img src="../img/spm.jpg" class="img-fluid" alt="" style="border-radius: 1rem" />
                </div>
            </nav>
        </div>
        <!-- end navbar -->

        <!-- start content -->
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-2">
                    <h1 class="mt-4">Edit Content</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item">Administration</li>
                        <li class="breadcrumb-item">User Management</li>

                    </ol>
                    <div class="row">
                        <div class="card d-flex">
                            <form class="card-body" action="${pageContext.request.contextPath}/EditCustomer" method="POST">
                                <!-- Text input -->
                                <%
                                int i = 1;
                                String[] data = null; 
                                for(String idCustonmer : id){
                            		String[] data1 = customerByid.get(idCustonmer);
                            		data = data1;
                                }
                                %>
                                <div class="form-outline mb-4">
                                    <input type="text" id="test" name="test" value="<%=data[0] %>" class="form-control" disabled/>
                                    <label class="form-label" for="Title">ID Customers</label>
                                    <input type="hidden" id="idCust" name="idCust" value="<%=data[0] %>" class="form-control">
                                </div>
                                <div class="form-outline mb-4">
                                    <input type="text" id="nameCustomer" name="nameCustomer" value="<%=data[1] %>" disabled class="form-control" />
                                    <label class="form-label" for="Title">Name Customers</label>
                                </div>
                                <div class="form-outline mb-4">
                                    <input type="text" id="phoneCustomer" name="phoneCustomer" value="<%=data[3] %>" class="form-control" />
                                    <label class="form-label" for="Title">Phone</label>
                                </div>
                                <div class="form-outline mb-4">
                                    <input type="text" id="emailCustomer" name="emailCustomer" value="<%=data[2] %>" class="form-control" />
                                    <label class="form-label" for="Title">Email</label>
                                </div>
                                <!-- Message input -->
                                
                                <!-- Submit button -->
                                <button type="submit" class="btn btn-danger btn mb-4 ms-2 float-end"
                                    style="background-color: #8f0409; color: #ffffff">
                                    <i class="far fa-save"></i> Save
                                </button>
                                <a type="button" class="btn btn-dark btn mb-4 ms-2 float-end"
                                    href="userManagement.html">
                                    <i class="fa fa-ban"></i> Cancel
                                </a>
                                
                            </form>
                        </div>
                    </div>
                </div>
            </main>
            <!-- end content -->
            <!-- <footer class="py-4 bg-light mt-auto"> -->
            <div class="container-fluid px-4">
                <div class="d-flex align-items-center justify-content-center small">
                    <div class="text-muted">
                        Copyright &copy; Global Innovation Technology 2022
                    </div>
                </div>
            </div>
            <!-- </footer> -->
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
  
    <!-- MDB -->
    <script type="text/javascript" src="../js/mdb.min.js"></script>

    <!-- Custom scripts -->
    <script type="text/javascript"></script>
    
</body>

</html>
<%
}catch(Exception e ){
    	e.printStackTrace();
    }
    %>