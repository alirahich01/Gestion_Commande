<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" />

<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<!--===============================================================================================-->

<title>Update Ligne de Commande</title>
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<form action="UpdateServlet?id=${ lcmdToUpdate.getIdLigneCmd() }" method="post" class="login100-form validate-form">
				<span class="login100-form-title" style="font-size: 40px; color: white;">Editer ligne commande nº ${ lcmdToUpdate.getIdLigneCmd() }</span>
				
				<div class="wrap-input100">
					<select class="drop" name="idProd">
						<c:forEach items="${ listProd }" var="prod"> 
					  		<c:if test="${ lcmdToUpdate.getIdProd() != prod.getIdProd()}">
					  			<option value="${ prod.getIdProd() }"> ${ prod.getNomProd() } &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ${ prod.getPrixProd() } </option>
					  		</c:if>
					  		<c:if test="${ lcmdToUpdate.getIdProd() == prod.getIdProd()}">
					  			<option value="${ lcmdToUpdate.getIdProd() }" selected="${ lcmdToUpdate.getIdProd() }">  ${ prod.getNomProd() } &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ${ prod.getPrixProd() }  </option>
					    	</c:if>
					    </c:forEach>
					</select>
				</div>
				
				<div class="wrap-input100" data-validate="Valid name is required">
					<input class="input100" type="number" name="qte" value="${ lcmdToUpdate.getQuantite() }"/> 
					<span class="focus-input100"></span>
				</div>
				
				<div class="container-login100-form-btn">
					<input type="submit" name="save" value="Enregistrer" class="login100-form-btn"> <br />
				</div>
				<div style="text-align: center; margin-top: 20px;">
					<a href="ShowListServlet?act=4&id=${ lcmdToUpdate.getIdCmd() }" style="color: white; font-size: 20px;">Annuler</a>
				</div>
				<div>
					<a class="logout" href="home.jsp">Home</a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>