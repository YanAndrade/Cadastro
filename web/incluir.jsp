<%-- 
    Document   : incluir
    Created on : 09/09/2019, 21:01:14
    Author     : Denos
--%>

<%@page import="br.com.fatecpg.musica.Db"%>
<%@page import="br.com.fatecpg.musica.Dados"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    if(request.getParameter("cancel") != null){
        response.sendRedirect("index.jsp");
    }if(request.getParameter("add") != null){
        String musica = request.getParameter("musica");
        String banda = request.getParameter("banda");
        String disco = request.getParameter("disco");
        Dados c = new Dados(musica, banda, disco);
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
            Musica:<br/>
            <input type="text" name="musica"/><br>
            Banda:<br/>
            <input type="text" name="banda"/><br>
            Disco:<br/>
            <input type="text" name="disco"/><br></br>
            
            <input type="submit" class="botão" name="add" value="Adicionar"/>
            <input type="submit" class="botão" name="cancel" value="Cancelar"/>
        </form>
        </center>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
