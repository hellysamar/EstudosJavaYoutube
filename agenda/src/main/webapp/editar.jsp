<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
	<head>
		<meta charset="UTF-8">
		<title>Agenda de Contatos</title>
		
		<!-- <link rel="stylesheet" href="reset.css"> -->
		<link rel="stylesheet" href="style.css">
		<link rel="icon" href="imagens/favicon.png">
	</head>
	<body>
		<h1>Editar Contatos</h1>
			<form name="formContato" action="update">
		 		<h3>Id</h3>
				<input type="text" name="idcon" id="Caixa3" readonly value="<%out.println(request.getAttribute("idcon"));%>">
		 		<h3>Nome completo*</h3>
				<input type="text" name="nome" class="Caixa1" value="<%out.println(request.getAttribute("nome"));%>">
				<h3>Telefone</h3>
				<input type="text" name="fone" class="Caixa2" value="<%out.println(request.getAttribute("fone"));%>">
				<h3>E-mail*</h3>
				<input type="text" name="email" class="Caixa1" value="<%out.println(request.getAttribute("email"));%>">
				<br><br>			
				<input class="Botao1" type="button" value="Salvar" onclick="validar()">
				<a class="Botao3" href="main">Cancelar</a>
			</form>
	<script src="scripts/validador.js"></script>
	</body>
</html>