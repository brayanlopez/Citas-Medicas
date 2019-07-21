<%-- 
    Document   : Index
    Created on : 14/07/2019, 04:46:52 PM
    Author     : USUARIO PC
--%>
<%@page import="Datos.SedeDAO"%>
<%@page import="Modelo.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            Sede nsed = new Sede();
            nsed.setIdsede(1919);
            nsed.setNombre("sede prueba");
            nsed.setTelefono(1234567);
            nsed.setDireccion("suba");

            SedeDAO seDAO = new SedeDAO();
            seDAO.setsede(nsed);
            seDAO.insertarSede();
        %>
    </body>
</html>
