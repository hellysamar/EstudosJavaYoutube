<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>

<% 
	@ SuppressWarnings ("unchecked") 
	ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>)request.getAttribute("contatos");
%>


<!DOCTYPE html>
<html lang="pt-BR">
	<head>
		<meta charset="UTF-8">
		<title>Agenda de Contatos</title>
		
		<link rel="stylesheet" href="style.css">
		<link rel="icon" href="imagens/favicon.png">
	</head>
	<body>
		<h1>Agenda de Contatos</h1>
		<a href="novo.html" class="Botao1">Novo Contato</a>
		<a href="report" class="Botao2">Gerar Relatório</a>
		<a href="index.html" class="Botao4">Sair</a>
		<table id="tabela">
			<thead>
				<tr>
<!--  				<th>Id</th> 					comentado para não mostrar a coluna do id do contato cadastrado-->
					<th>Nome</th>
					<th>Telefone</th>
					<th>E-mail</th>
					<th>Opções</th>
					
				</tr>
			</thead>
			<tbody>
				<%for (int i = 0; i < lista.size(); i++) {%>
					<tr>
<!-- 					<td><%=lista.get(i).getIdcon()%></td>		Comentado para não moestrar o id do contato cadastrado-->
						<td><%=lista.get(i).getNome()%></td>
						<td><%=lista.get(i).getFone()%></td>
						<td><%=lista.get(i).getEmail()%></td>
						<td><a href="select?idcon=<%=lista.get(i).getIdcon() %>" class="Botao1">Editar</a>
							<a href="javascript: confirmar(<%=lista.get(i).getIdcon() %>)" class="Botao3">Apagar</a>
						</td>
					</tr>
				<%} %>
			</tbody>
		</table>
	<script src="scripts/confirmador.js"></script>
	</body>
</html>