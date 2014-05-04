<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.9.1.min.js"></script>

<script type="text/javascript">
function callMethod(){
	var txt = document.getElementById('txt1_id').value;
	alert(txt);
	var encrypVal = window.btoa(txt);
	alert(encrypVal);
	var username ="username";
	var password = "password";
	$.ajax
	  ({
	    type: "POST",
	    url: "ajax_response.jsp?txt="+encrypVal,
	    dataType: 'json',
	    async: false,
	    data: '{}',
	    success: function (){
	        alert('Thanks for your comment!'); 
	    }
	});
}
</script>
</head>
<body>
Ajax Test
<input type="text" id="txt1_id"/>
<input type="button" onclick="callMethod()"/>
</body>
</html>
