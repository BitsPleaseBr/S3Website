<%@page import="ca.ryangreen.apigateway.generic.GenericApiGatewayException"%>
<%@page import="s3.api.access.MethodCallerFactory"%>
<%
	String email = request.getParameter("email");

	try {
	  out.print(MethodCallerFactory.verificarEmail(email).call().getResponse().getHttpResponse().getStatusCode() == 200);
	} catch (GenericApiGatewayException e) {
	  out.print("false");
	}
%>