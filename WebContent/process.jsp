
<%@ page import="com.daw.UserDaw" %> 
<jsp:useBean id="u" class="com.bean.UserBean"></jsp:useBean> 
<jsp:setProperty property="*" name="u"/>

<%
	boolean status = UserDaw.post(u);

	if(status){
		 response.sendRedirect("index.jsp");

	}else{
%>
	<jsp:forward page="error.jsp" /> 
<%	
		
	}
	
%>