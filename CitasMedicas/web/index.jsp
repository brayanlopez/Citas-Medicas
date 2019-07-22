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
        <link type="text/css" rel="stylesheet" href="estilos.css">
    </head>
    <body>
        <header>
            <h1>Sistema gestor de citas</h1>
        </header>
        <main>
            <section>
                <p>
                    Bienvenido al sistema gestor de citas, a continuación encuentra tres 
                    categorias, seleccione la categoria que corresponde a el tipo de usuario 
                    que es usted.
                </p>
                <a href="Administrador.jsp">Administrador</a><br>
                <a href="Medico.jsp">Medico</a><br>
                <a href="Paciente.jsp">Paciente/afiliado</a><br>
            </section>
        </main>        
    </body>
</html>
