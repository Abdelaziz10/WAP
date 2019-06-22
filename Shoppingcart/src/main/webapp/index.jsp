<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Tibeb Habesha</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"  rel="stylesheet">
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <%--<link href="./static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">--%>
    <%--<link href="./static/vendor/bootstrap/css/datatable.css" rel="stylesheet">--%>
    <%--<link href="./static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">--%>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>

    <%--<link href="./static/vendor/bootstrap/css/dataTables.bootstrap.css" rel="stylesheet">--%>
    <link  rel="stylesheet" href="./static/css/newCss.css">

    <!-- Custom styles for this template -->


</head>

<body>
<div class="wrapper">

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="listproducts" style="font-size:30px;">Tibeb Habesha</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="home" style="font-size:15px;">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about" style="font-size:15px;">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact" style="font-size:15px;">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="manageProduct" style="font-size:15px;">Product Management</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="space">

</div>
<!-- Page Content -->
	<div class="container">
        <!-- /.col-lg-3 -->
       <c:if test="${pageTypeContent == true}" >
        <%@ include file="content.jsp" %>
	   </c:if>

       <c:if test="${pageTypeListProduct == true}" >
	    <%@ include file="listProduct.jsp" %>
       </c:if>

       <c:if test="${pageTypeSingleProduct == true}" >
     	<%@ include file="singleProduct.jsp" %>
       </c:if>


        <c:if test="${pageTypeProductManagement == true}" >
            <%@ include file="login.jsp" %>
        </c:if>

        <c:if test="${pageTypeWelcome == true}" >
            <%@ include file="welcome.jsp" %>
        </c:if>
        <c:if test="${pageTypeContact == true}" >
            <%@ include file="contact.jsp" %>
        </c:if>
        <c:if test="${pageTypeAbout == true}" >
            <%@ include file="about.jsp" %>
        </c:if>
        <c:if test="${pageTypeEditProduct == true}" >
            <%@ include file="editProduct.jsp" %>
        </c:if>

</div>
<!-- /.container -->


<!-- Bootstrap core JavaScript -->
<%--<script src="./static/vendor/jquery/jquery.min.js"></script>--%>
<%--<script src="./static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>--%>
    <%--<script src="./static/vendor/bootstrap/js/jquery.dataTables.js"></script>--%>
    <%--<script src="./static/vendor/bootstrap/js/dataTables.bootstrap.js"></script>--%>
    <script src="./static/vendor/bootstrap/js/myapp.js" ></script>
</div>
<!-- Footer -->
<%--<footer class="py-5 bg-dark" >--%>
	<%--<div class="container">--%>
		<%--<p class="m-0 text-center text-white">Copyright &copy; Your Website 2017</p>--%>
	<%--</div>--%>
	<%--<!-- /.container -->--%>
<%--</footer>--%>

</body>
</html>
