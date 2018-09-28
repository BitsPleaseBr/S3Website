<%@include file = "includes/topo.jsp" %>

  <title>
    Login
  </title>
</head>

<body class="login-page" style="overflow:hidden">

  <%@include file="includes/navbar.jsp" %>
    	<button type="button" style="margin-left: 50px" class="btn btn-success btn-round" onclick="location.href='cadastrar.jsp'">Registre-se</button>
      </div>
    </div>
  </nav>
  <!-- End Navbar -->

  <%@include file="includes/fullpage.jsp" %>

   	<div class="content">
   
    </div>
    
	<button class="btn btn-primary btn-fill" style="display: none" id="error" onclick='swal({ title:"Não foi dessa vez!", text: "Parece que o e-mail ou a senha digitados não correspondem, pode tentar novamente por favor? x3", type: "warning", buttonsStyling: false, confirmButtonClass: "btn btn-success"})'></button>
  
    <%@include file="includes/esqueci.jsp" %>

  <%@include file="includes/footer.jsp" %>
  
<%@include file="includes/base.jsp" %>
  
  <script>
	Pace.on("done", function(){
		  $(".content").fadeIn(1500);
		});
	
	$(document).ready(function(){
		$('.content').load('includes/pages/login.jsp');
		
		var request = window.location.search.replace("?","");

		if(request == "400"){
			$('#error').click();
		}
	});
  </script>