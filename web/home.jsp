<%-- 
    Document   : home
    Created on : 15/09/2019, 12:13:43
    Author     : Cliente
--%>

<%@page import="br.com.fatecpg.musica.Dados"%>
<%@page import="br.com.fatecpg.musica.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="CSS/main.css">
        <title>Home</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <%
            int cont = 0;
            
            for(Dados a : Db.getDados()){
                cont+=1;
            }
        %>
        <main>
            <div class="team">
                <h2>Total de cadastrados</h2>
                <div class="pe">
                    <h3>Musicos(Bandas)</h3>
                    <p>N° de bandas: <%=cont%></p>
                </div>
                <div class="pe">
                    <h3>Albuns</h3>
                    <p>N° de albuns: <%=cont%></p>
                </div>
                <div class="pe">
                    <h3>Musicas</h3>
                    <p>N° de musicas: <%=cont%></p>
                </div>
            </div>
        </main>
        <br><br><br>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
