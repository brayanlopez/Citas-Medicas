<%-- 
    Document   : Administrador
    Created on : 21/07/2019, 10:24:12 PM
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
        <h1>Modulo para administrador</h1>
        <section>
            <h2>Gestion de sedes</h2>

            <!-- Pinta la forma -->
            <h3>Ingresar sede</h3>
            <FORM >
                <TABLE BORDER="1">
                    <TR>
                        <TD>Código sede</TD>
                        <TD><INPUT type=number name="codSede"></TD>
                    </TR>
                    <TR>
                        <TD>Nombre sede</TD>
                        <TD><INPUT type=text name="nomSede"></TD>
                    </TR>
                    <TR>
                        <TD>Telefono sede</TD>
                        <TD><INPUT type=number name="telSede"></TD>
                    </TR>
                    <TR>
                        <TD>Direccion sede</TD>
                        <TD><INPUT TYPE=text NAME = "dirSede"> </TD>
                    </TR>
                    <TR>
                        <TD><INPUT TYPE="submit" VALUE="Insertar sede"></TD>
                        <TD><a href="index.jsp" target="blank">Regresar</a></TD>
                    </TR>
                </TABLE>
            </FORM>
            <%if (!request.getParameterMap().isEmpty()) {
                    try {
                        Sede nsed = new Sede();
                        nsed.setIdsede(Integer.valueOf(request.getParameter("codSede")));
                        nsed.setNombre(request.getParameter("nomSede"));
                        nsed.setTelefono(Integer.valueOf(request.getParameter("telSede")));
                        nsed.setDireccion(request.getParameter("dirSede"));

                        SedeDAO seDAO = new SedeDAO();
                        seDAO.setsede(nsed);
                        seDAO.insertarSede();
                        out.println("Sede [" + nsed.getNombre() + "] Incluida exitosamente");
                    } catch (NumberFormatException e) {
                        out.println("Error --> " + "El código y el telefono de la seden son requeridos y deben ser numéricos");
                    } catch (Exception e1) {
                        out.println("Error --> " + e1 + e1.getMessage());
                    }
                }%>
            <form>
                <input type="text" name="busquedaSede" >
            </form>
            <%
                SedeDAO seDAO = new SedeDAO();
                //seDAO.buscarSede();
            %>
        </section>
    </body>
</html>
