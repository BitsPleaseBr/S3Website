<%@page import="s3.api.access.MethodCallerFactory"%>

<%
	String token = request.getParameter("token");

	int status = MethodCallerFactory.confirmarEmail(token).call().getResponse().getHttpResponse().getStatusCode();
	
	switch (status) {
		
		case 200: response.sendRedirect("../confirmacao.jsp?200"); break;
		case 403: response.sendRedirect("../confirmacao.jsp?403"); break;
		case 409: response.sendRedirect("../confirmacao.jsp?409"); break;
		case 500: response.sendRedirect("../confirmacao.jsp?500"); break;
	}
%>