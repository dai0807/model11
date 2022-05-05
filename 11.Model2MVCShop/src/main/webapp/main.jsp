<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--   jQuery , Bootstrap CDN  -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
	<!--  CSS �߰� : ���ٿ� ȭ�� ������ ���� �ذ� :  �ּ�ó�� ��, �� Ȯ��-->
	<style>
        body {
            padding-top : 10px;
        }
        
        
    
        
   	</style>
   	
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	 	
	
</head>
	
<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
		<jsp:include page="/common/Q&A.jsp" />
	
   	<!-- ToolBar End /////////////////////////////////////-->



	<!--  �Ʒ��� ������ http://getbootstrap.com/getting-started/  ���� -->	
   	<div class="container ">
  

      <!-- Main jumbotron for a primary marketing message or call to action -->




    <div >


 		     <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		  <!-- Indicators -->
		  <ol class="carousel-indicators">
		  <!-- li�� �̹��� ������ŭ �߰��ϰ� data-target�� carousel id�� ����Ų��. -->
			<!-- data-slide-to�� ������� 0���� �ö󰡰� 0�� active�� �����Ѵ�. -->
			<!-- ���� �� �κ��� �ɼǺ��� �����ϰ� ����. -->

		<!-- ���� �̹��� ������ -->
		<!-- class�� carousel-inner�� �����ϰ� role�� listbox���� �����Ѵ�. -->
		

  		    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
		  </ol>

	  <!-- ���� �̹��� ������  Wrapper for slides -->
	  <div class="carousel-inner" role="listbox">
	    <div class="item active"  >
	      <img src="/images/fait_main.jpg" alt="..."    >
	      <div class="carousel-caption">
	        ...
	      </div>
	    </div>
	    <div class="item"  >
	      <img src="/images/fait_main2.jpg" alt="..."    >
	      <div class="carousel-caption">
	         
	      </div>
	    </div>
	  	    <div class="item"   >
	      <img src="/images/fait_main3.jpg"  >
	      <div class="carousel-caption">
	         ..
	      </div>
	    </div>
	  </div>
	
	  <!-- Controls -->
	  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
	    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	    <span class="sr-only">Previous</span>
	  </a>
	  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
	    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	  </a>
	</div>
   </div>  
     
     
     
     
  
    </div>

	<!-- ���� : http://getbootstrap.com/css/   : container part..... -->
	<div class="container">
        <h3> ���� ������ �� </h3>
        <p>" ���� ������ �� ."</p>
  	 	<h3>" ���� ������ �� ."</h3>
         <h3> ���� ������ �� </h3>
         <p>. ���� ������ �� .</p>
 
  	 </div>

</body>






</html>