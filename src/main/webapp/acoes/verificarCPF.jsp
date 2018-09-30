<%@page import="s3.api.access.MethodCallerFactory"%>
<%
	String cpf = request.getParameter("cpf").replaceAll("\\D", "");

	try {
		out.print(MethodCallerFactory.verificarCpf(cpf).call().getResponse().getHttpResponse().getStatusCode() == 200);
	} catch (Exception e) {
		out.print("false");
	}
%>