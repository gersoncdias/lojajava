<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais - Casa do Código</title>
<c:url value="/resources/css" var="cssPath" />
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css" />
<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min.css" />
</head>
<body> 
	<nav class="navbar navbar-inverse">
	  <div class="container">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="${s:mvcUrl('HC#index').build()}">Casa do Código</a>
	    </div>
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li class="nav-item"><a href="${s:mvcUrl('PC#listar').build()}">Lista de Usuarios</a></li>
	        <li class="nav-item"><a href="${s:mvcUrl('PC#form').build()}">Cadastro de Usuarios</a></li>
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	      	 <li class="nav-item">
	      	 	<a href="<c:url value="/logout" />">Sair</a></span>
	      	 </li>
	      	 <li class="nav-item">
	      	 	<a href="#">
	      	 		<security:authentication property="principal" var="usuario" />
	      	 		${usuario.username }
	      	 	</a>
	      	 </li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div>
	</nav>

	<div class="container">
		<h1>Cadastro de Usuario</h1>
		<form:form action="${s:mvcUrl('UC#gravar').build() }" method="post" commandName="usuario" enctype="multipart/form-data">
			<div class="form-group">
				<label>Nome</label>
				<form:input path="nome" cssClass="form-control" />
				<form:errors path="nome" />
			</div>
			<div class="form-group">
		        <label>Email</label>
				<form:input path="email" cssClass="form-control" />
		        <form:errors path="email" />
			</div>
			<div class="form-group">
				<label>Senha</label>
				<form:password path="senha" cssClass="form-control" />
		        <form:errors path="senha" />
			</div>	
			<div class="form-group">
				<label>Senha repetida</label>
				<form:password path="senha2" cssClass="form-control" />
		        <form:errors path="senha2" />
			</div>								
			<button type="submit" class="btn btn-primary">Cadastrar</button>
		</form:form>
	</div>
</body>
</html>