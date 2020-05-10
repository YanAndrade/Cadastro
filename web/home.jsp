<%-- 
    Document   : home
    Created on : 09/05/2019, 12:13:43
    Author     : Yan
--%>

<%@page import="br.com.fatecpg.nome.Dados"%>
<%@page import="br.com.fatecpg.nome.Db"%>
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
                </br>
                <h2>Total de cadastrados</h2>
                </br>
                <div class="pe">
                    <h3>Nomes</h3>
                    <p>Quantidade de nomes: <%=cont%></p>
                </div>
                </br>
                <div class="pe">
                    <h3>Emails</h3>
                    <p>Quantidade de emails: <%=cont%></p>
                </div>
                </br>
                <div class="pe">
                    <h3>telefone</h3>
                    <p>Quantidade de telefone: <%=cont%></p>
                </div>
            </div>
        </main>
        <br><br><br>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
