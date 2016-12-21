<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
    	<%@ page isELIgnored="false" %>
        <meta charset="UTF-8">
        <title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais - Casa do Código</title>
        
     	<c:url value="/" var="basePath" ></c:url>

     
   		<link rel="stylesheet" href="${basePath}css/bootstrap.min.css">
		<link href="<c:url value="/css/bootstrap-theme.min.css" />" rel="stylesheet">
		<script src="${basePath}js/bootstrap.min.js" ></script>

    </head>
    <body>
    	<div class="container">
		    <h3><a href="/casadocodigo/carrinho">Carrinho de Compra ${carrinhoCompras.quantidade}</a></h3>
		    <h1>Lista de produtos</h1>
		    <p> ${sucesso} </p>
				<table class="table table-hover">
					<thead>
				        <tr>
				            <th>Título</th>
				            <th>Descrição</th>
				            <th>Páginas</th>
				        </tr>
				     </thead>
				     
				     <c:forEach items="${produtos}" var="produto">
				     
					     <tbody>
					        <tr>
					            <td><a href="${s:mvcUrl('PC#detalhes').arg(0, produto.id).build()}">${produto.titulo}</a></td>
					            <td>${produto.descricao}</td>
					            <td>${produto.paginas}</td>
					        </tr>
					      </tbody>
					      
		    		</c:forEach>
		    		
		   		 </table>
	  	</div>
    </body>
</html>