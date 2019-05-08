<%@page import="com.liferay.portal.kernel.json.JSONArray"%>
<%@ include file="/init.jsp"  %>
<%@page import="com.tma.user.info.constants.UserInfoPortletKeys"%>
<portlet:resourceURL id="<%=UserInfoPortletKeys.FETCH_USERS%>" var="fetchusersURL" />

<%@page import="java.util.*"%>

<%-- <%=fetchusersURL%> --%>
 
 <input hidden type="text" id="name" value="<%=fetchusersURL%>"> 
<html>  
<head>  
<meta content="text/html; charset=utf-8">  
<title></title>  

<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  
}
</style> 
 <script type="application/javascript"> 
$(document).ready(function(){
	var url = document.getElementById("name").value;//use any url that have json data  
	// var url = window.location.href;
	//var url = ${fetchusersURL};
	console.log(url)
  
	$(document).ready(function(){
		$.ajax({
			  type: "GET",
			  url: url,
			  success: function(data){
			     $("#date").html(data);
			  }
			});
	});
	  
});
</script> 
</head>  
<body >
 <h1>User&nbsp;Detais&nbsp;Are</h1>
<span id="date"></span><br/>  
 

</body>  
</html>  







