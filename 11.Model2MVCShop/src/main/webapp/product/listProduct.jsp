<%@page import="java.awt.PageAttributes.OrientationRequestedType"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
   
    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	
	
	
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
   
   
   <!-- jQuery UI toolTip 사용 CSS-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!-- jQuery UI toolTip 사용 JS-->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
	  body {
            padding-top : 50px;
        }
    </style>


     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">


	function fncGetList(currentPage) {
		$("#currentPage").val(currentPage)
			
		
			
		console.log (  "메뉴 값을 출력 하라! 돌아간다 신난다 "+ $("#menu" ).val()   + " currentPage " + $("#currentPage").val());
		//document.detailForm.submit();
		$("form").attr("method" , "POST").attr("action" , "/product/listProduct?menu=${menu}").submit();
		
	
	}
	

	
	
	//ct_list_pop
	
	$(function(){
		
		$( ".ct_list_pop td:nth-child(3)" ).css("color" , "red");
		$("h7").css("color" , "red");
		
			$(".ct_list_pop:nth-child(4n+1)" ).css("background-color" , "whitesmoke");

	//	$(".ct_list_pop:nth-child(4n+6)" ).css("background-color" , "whitesmoke");
		
		
		
		$(".ct_btn01").on("click", function(){
			
			///console.log(  $( ".ct_btn01" ).html() );

			fncGetList(1);  // 시발 검색 
			
		});
		//<a href="${ menu == 'search' ? '/product/getProduct' : '/product/updateProductView'}?prodNo=${product.prodNo }&menu=${ menu }&tranCode=${product.proTranCode}">
		
		
		$(".produc_no").on("dblclick" , function(){
			
			
			var pageNAME = ($("#menu").val() == 'search') ? '/product/getProduct': '/product/updateProductView';
			 console.log(  pageNAME );

			var jprodNo = $(this).attr("value1") ;
			 console.log( "prodNo " +jprodNo );

				var jproTranCode = $(this).attr("value2") ;
				 console.log( "proTranCode  " +jproTranCode );		      
			 
			//  self.location = pageNAME + "?prodNo="+ $(".ct_list_pop  td:nth-child(1)").val() + "&menu="+$("#menu").val() +"&tranCode=" + $(".ct_list_pop  td:nth-child(3)").val() 
			  
	        self.location = pageNAME + "?prodNo="+jprodNo+"&menu="+$("#menu").val()   ; 
//	        self.location = pageNAME + "?prodNo="+jprodNo+"&menu="+$("#menu").val() +"&tranCode=" + jproTranCode  ; 
			
		});
		
		$(".produc_no").on("click" , function(){
			
			 

			var jprodNo = $(this).attr("value1") ;
			 console.log( "prodNo " +jprodNo );

				var jproTranCode = $(this).attr("value2") ;
				 console.log( "proTranCode  " +jproTranCode );		      
			 
			//  self.location = pageNAME + "?prodNo="+ $(".ct_list_pop  td:nth-child(1)").val() + "&menu="+$("#menu").val() +"&tranCode=" + $(".ct_list_pop  td:nth-child(3)").val() 
				 $.ajax( 
							{
								url : "/product/json/getProduct/"+jprodNo ,
								method : "GET" ,
								dataType : "json" ,
								headers : {
									"Accept" : "application/json",
									"Content-Type" : "application/json"
								},
								success : function(JSONData , status) {


									
									var displayValue = "<h3>"
																+"상품명 		: "+JSONData.prodName+"<br/>"
																+"상품ID 		: "+JSONData.prodNo+"<br/>"
																+"상품상세정보	: "+JSONData.prodDetail+"<br/>"
																+"제조일자		: "+JSONData.manuDate+"<br/>"
																+"가격 		: "+JSONData.price+"<br/>" 
																+"</h3>";
								
									 console.log( "displayValue  " +displayValue );		      

									$("h3").remove();
									$( "#"+jprodNo+"" ).html(displayValue);
								}
						});
				
		});
			
 
		
		
	$("#span_prodNo").on("click", function(){
		
		
		console.log(" tranNo 제대로 나온요  " + $(this).attr("value")   );
		//var currendPage =  $("#currentPage").val() ;
		 var currendPage =  $("#currentPageH").attr("value") ;

		 console.log( "currentPage  ::  " +currendPage );
		 


		  self.location ="/product/updateProdcutTranCodeByProd?currentPage="+currendPage+"&prodNo="+$(this).attr("value")+"&tranCode=003&menu=manage" ;
		 //여기 부분 보안하기 !! 눈물이 차올라거 고개를 쳐 들었다. 그렇게 눈물이 흘렀다. 
		 
		
		});
		
	 }); 
		
 
</script>




</head>
	<jsp:include page="/layout/toolbar.jsp" />

<div style="width:98%; margin-left:10px;">
 <input type="hidden" id="menu"   value="${menu}"/>

<form name="detailForm" >
<!-- <form name="detailForm" action="/product/listProduct?menu=${menu}" method="post">  -->
<!-- menu를 manage로 보냄  -->

 

	<div class="container">
	 	<div class="page-header text-info">
					  <c:if test="${menu=='search'}">
						  	     <h3> 상품 검색</h3>
						  </c:if>
						<c:if test="${menu=='manage'}">
							   <h3>  상품 관리 </h3> 
						  </c:if>	 	
	      
	    </div>
	  </div>



<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
	<tr>
	<td align="right">
				<select name="searchCondition"    class="ct_input_g" style="width:80px">
			 
				<option value="0" ${ ! empty search.searchCondition && search.searchCondition =="0" ? "selected" : ""} > 상품번호</option>
				<option value="1" ${ ! empty search.searchCondition && search.searchCondition =="1" ? "selected" : ""} > 상품명</option>
				<option value="2" ${ ! empty search.searchCondition && search.searchCondition =="2" ? "selected" : ""} > 상품가격</option>
		 
			
			
			
				</select>
		<input type="text" name="searchKeyword" value="${search.searchKeyword}"  class="ct_input_g" style="width:200px; height:19px" />
				
				
				
	</td>	
		
		
		<td align="right" width="70">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23">
						<img src="/images/ct_btnbg01.gif" width="17" height="23">
					</td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;">
						<!--  <a href="javascript:fncGetList('1');">검색</a>-->
						검색
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23">
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>


<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
	<tr>
			<td colspan="11" >
	
	<%--	<td colspan="11" >전체  <%= total%> 건수, 현재 <%=currentPage %> 페이지</td> --%>
			전체  ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage}  페이지
				 <input type="hidden" id="currentPageH"   value="${resultPage.currentPage}"/>
		
	</tr>

<div class="container"> 
	
	 <c:forEach var="product" items="${list}">
 

 	<div class="col-xs-3 col-sm-3 col-md-3 ">
      <div class="thumbnail">
       <img src="/images/uploadFiles/${product.fileName }" alt="" width="242" heigth="200">
          <div class="caption">
            <h3>${ product.prodName } </h3>
            <p>${product.price}</p>
            <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
        </div>
      </div>
    </div> 


	</c:forEach>	

</div>







	
	
  
	
	
	 <c:set var="i" value="0" /> <!-- 값 세팅 --> 
	 <c:forEach var="product" items="${list}">
			<c:set var="i" value="${ i+1 }" />
	

	<tr class="ct_list_pop" >
		<td align="center"   >${i}</td>
		<td></td>
		
		
				<td align="left"  class = "produc_no" value1="${product.prodNo}"  value2="${product.proTranCode}">
				
 
							
						${ product.prodName }	
				</td> 
		
		<td></td>
		<td align="left">${product.price}</td>
		<td></td>
		<td align="center">${product.regDate}	</td>
		<td></td>
		
					<td align="center">${product.quantity}	</td>
	
		<td></td>		
	</tr>
	<tr>
	
		
		
 <td id="${product.prodNo}" colspan="11" bgcolor="D6D7D6" height="1"></td>
		
		<td colspan="11" bgcolor="D6D7D6" height="1"></td>
	</tr>

	</c:forEach>		
	
	
</table>



	
	
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
<tr>
		<td align="center">
		   <input type="hidden" id="currentPage" name="currentPage" value=""/>
		  
		   
 
 	<jsp:include page="../common/pageNavigator_new.jsp"/>
 
 
<!-- 	<jsp:include page="../common/pageNavigator.jsp"/>	  -->	
			
    	</td>
	</tr>
</table>
<!--  페이지 Navigator 끝 -->

</form>

</div>
</body>
</html>