<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<%@ page isELIgnored="false" %>
	
		<meta charset="utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
		<title>${produtos.titulo} - Casa do Código</title>
</head>
<body>
	<h1>Detalhes do livro</h1>
		<header>
		<article id="${produtos.id}">
			  
			      <h1>${produtos.titulo}</h1>
				
			    <p>
			    	${produtos.descricao}
			    </p>
			    </div>
		  </header>
	
	   
	  <form action='<c:url value="/carrinho/add" />' method="post" class="container">
	    <input type="hidden" name="produtoId" value="${produtos.id}" />
	    <ul>
	    <c:forEach items="${produtos.precos}" var="preco">
	    	  <li>
	            <input type="radio" name="tipoPreco" id="id" value="${preco.tipo}"  checked="checked"  />
	            <label>
	              ${preco.tipo}
	            </label>
	            <p>${preco.valor}</p>
	          </li>  
	     </c:forEach>         
	    </ul>
	    <button type="submit" title="Compre Agora ${produtos.titulo}">Compre Agora </button>
	  </form>
	  
	  
	<div>
	  <section>
	    <ul>
	      	<li><h3>E muito mais... <a href="casadocodigo/sumario-arquivo">veja o sumário</a>.</h3></li>
	    </ul>
	  </section>
	  
	  <section>
	    <h2>Dados do livro:</h2>
	    <p>Número de páginas: <span>${produtos.paginas}</span></p>
	    <p></p>
	    <p>Data de publicação: <fmt:formatDate pattern="dd/MM/yyyy" value="${produtos.dataLancamento.time}"/> </p>
	  </section>
	</div>
	<h3><a href="/casadocodigo/carrinho">Carrinho ${carrinhoCompras.quantidade} </a></h3>
	</article>	
</body>
</html>