<%-- 
    Document   : Index
    Created on : 14/07/2019, 04:46:52 PM
    Author     : USUARIO PC
--%>
<%@page import="Modelo.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Principal</title>
    </head>
    <body>
        <div>Ejercicio de prueba</div>
        <input id="prueba" type=text name="codPostal">
        <div id="divPrueba">resultado:</div>
        <input TYPE="submit" VALUE="Incluir Municipio">
        <button id="btnPrueba">ejecutar</button>
        <%
            Sede nSed = new Sede();
            nSed.setDireccion("suba");
            String prueba = request.getParameter("prueba");
            int var = 5;
            out.println(var + prueba);
            out.println(request.getParameter("btnPrueba"));
            out.println(nSed.getDireccion());
        %>
    </body>
</html>
