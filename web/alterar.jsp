<%-- 
    Document   : home
    Created on : 09/05/2019, 12:13:43
    Author     : Yan
--%>


<%@page import="br.com.fatecpg.nome.Db"%>
<%@page import="br.com.fatecpg.nome.Dados"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Dados dados = new Dados(null, null, null);
    if(request.getParameter("index")!=null){
        int index = Integer.parseInt(request.getParameter("index"));
        dados = Db.getDados().get(index);
    }
    
    if(request.getParameter("cancel") != null){
        response.sendRedirect("index.jsp");
    }if(request.getParameter("set") != null){
        int index = Integer.parseInt(request.getParameter("index"));
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        Dados c = new Dados(nome, email, telefone);
        Db.getDados().set(index, c);
        response.sendRedirect("index.jsp");
    }

%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="CSS/main.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <center>
        <h2>Alterar</h2>
         <form>
            Índice:<br/>
            <%= request.getParameter("index")%></br>
            <input type="hidden" name="index"
                   value="<%=request.getParameter("index")%>"/> <br/>
            Nome:<br/>
            <input type="text" name="nome"
                   value="<%=dados.getNome()%>"/><br/>
            Email:<br/>
            <input type="text" name="email"
                    value="<%=dados.getEmail()%>"/><br/>
           Telefone:<br/>
            <input type="text" name="telefone"
                   value="<%=dados.getTelefone()%>"/><br/><br/>
            
            <input type="submit" class="botão" name="set" value="Alterar"/>
            <input type="submit" class="botão" name="cancel" value="Cancelar"/>
        </form>
       </center>
       <%@include file="WEB-INF/jspf/footer.jspf"%>            
    </body>
</html>
