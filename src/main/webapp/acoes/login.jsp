<%@page import="s3.api.access.MethodCallerFactory"%>
<%

	String email = request.getParameter("email");
	String senha = request.getParameter("senha");
	
	try{
		String token = (MethodCallerFactory.gerarToken(email, senha).call().getHashBody().get("token")).toString();
		
		response.sendRedirect("cookies.jsp?" + token);
		
		MethodCallerFactory.setToken(token);
		
	}catch(Exception e){
		response.sendRedirect("cookies.jsp?400");
	}
%>