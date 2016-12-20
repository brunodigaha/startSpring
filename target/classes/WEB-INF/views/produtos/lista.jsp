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
    </head>
    <body>
    <h3><a href="/casadocodigo/carrinho">Carrinho de Compra ${carrinhoCompras.quantidade}</a></h3>
    <h1>Lista de produtos</h1>
    <p> ${sucesso} </p>
		<table>
        <tr>
            <td>Título</td>
            <td>Descrição</td>
            <td>Páginas</td>
        </tr>
        <c:forEach items="${produtos}" var="produto">
        <tr>
            <td><a href="${s:mvcUrl('PC#detalhes').arg(0, produto.id).build()}">${produto.titulo}</a></td>
            <td>${produto.descricao}</td>
            <td>${produto.paginas}</td>
        </tr>
    </c:forEach>
    </table>
    </body>
</html>