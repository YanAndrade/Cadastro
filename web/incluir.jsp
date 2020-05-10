<%-- 
    Document   : incluir
    Created on : 09/05/2019, 12:13:43
    Author     : Yan
--%>

<%@page import="br.com.fatecpg.nome.Db"%>
<%@page import="br.com.fatecpg.nome.Dados"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    if(request.getParameter("cancel") != null){
        response.sendRedirect("index.jsp");
    }if(request.getParameter("add") != null){
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        Dados c = new Dados(nome, email, telefone);
        Db.getDados().add(c);
        response.sendRedirect("index.jsp");
    }

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/main.css">
        <title>Incluir</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf"%>
        <center>
        <h2>Adicionar</h2>
        <form>
            Nome:<br/>
            <input type="text" name="nome"/><br>
            Email:<br/>
            <input type="text" name="email"/><br>
            Telefone:<br/>
            <input type="text" name="telefone"/><br></br>
            
            <input type="submit" class="botão" name="add" value="Adicionar"/>
            <input type="submit" class="botão" name="cancel" value="Cancelar"/>
        </form>
        </center>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
