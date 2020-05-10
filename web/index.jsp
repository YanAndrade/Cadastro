<%-- 
    Document   : index
    Created on : 09/05/2019, 12:13:43
    Author     : Yan
--%>

<%@page import="br.com.fatecpg.nome.Db"%>
<%@page import="br.com.fatecpg.nome.Dados"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Índice</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div style="text-align: center">
            
            <h2>Índice</h2>
            <h3><a href="incluir.jsp">Adicionar</a></h3>
            
            <center>
            <table width="700" style="text-align: center">
                <tr>
                    <th>Índice</th>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>Telefone</th>
                    <th>Comandos</th>
                </tr>
                <%for (Dados c : Db.getDados()) {%>
                <tr>
                    <td><%= Db.getDados().indexOf(c)%></td>
                    <td><%= c.getNome()%></td>
                    <td><%= c.getEmail()%></td>
                    <td><%= c.getTelefone()%></td>
                    <td>
                        <a href="alterar.jsp?index=<%=Db.getDados().indexOf(c)%>">Alterar</a>
                        <a> / </a>
                        <a href="excluir.jsp?index=<%=Db.getDados().indexOf(c)%>">Excluir</a>
                    </td>
                </tr>
                <%}%>
            </table>
            </center>
            <br/>
        </div>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
