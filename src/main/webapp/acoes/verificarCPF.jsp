<%@page import="ca.ryangreen.apigateway.generic.GenericApiGatewayException"%>
<%@page import="s3.api.access.MethodCallerFactory"%>
<%
	String cpf = request.getParameter("cpf").replaceAll("\\D", "");

	try {
		out.print(MethodCallerFactory.verificarCpf(cpf).call().getResponse().getHttpResponse().getStatusCode() == 200);
	} catch (GenericApiGatewayException e) {
		out.print("false");
	}
%>