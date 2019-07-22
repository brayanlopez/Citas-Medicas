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
        <header>
            <h1>Modulo para administrador</h1>
        </header>
        <main>
            <section id="sede">
                <h2>Gestion de sedes</h2>

                <!-- Pinta la forma -->
                <h3>Ingresar nueva sede</h3>
                <form>
                    Código sede
                    <input type=number name="codSede"><br>
                    Nombre sede
                    <input type=text name="nomSede"><br>
                    Telefono sede
                    <input type=number name="telSede"><br>
                    Direccion sede
                    <input TYPE=text name= "dirSede"><br> 
                    <input TYPE="submit" VALUE="Insertar sede">
                </form>
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
                            out.println("Error --> " + "El código y el telefono de la sedes son requeridos y deben ser numéricos");
                        } catch (Exception e1) {
                            out.println("Error --> " + e1 + e1.getMessage());
                        }
                    }%>
                <h3>Buscar sede</h3>
                <form>
                    Sede a buscar: 
                    <input type="text" name="busquedaSede"><br>
                    <input TYPE="submit" VALUE="Buscar sede">
                </form>
                <%
                    /*                    String busqueda = request.getParameter("busquedaSede");
                    boolean buscar = busqueda.equals("");
                    out.println(buscar);
                    if (!buscar) {
                        try {
                            Sede nsed2 = new Sede();
                            nsed.setIdsede(Integer.valueOf(request.getParameter("codSede")));
                            nsed.setNombre(request.getParameter("nomSede"));
                            nsed.setTelefono(Integer.valueOf(request.getParameter("telSede")));
                            nsed.setDireccion(request.getParameter("dirSede"));

//                            SedeDAO seDAO2 = new SedeDAO();
  //                          seDAO2.setsede(nsed);
                            //seDAO2.buscarSede();

                            out.println("Sede [" + nsed.getNombre() + "] Incluida exitosamente");
                        } catch (NumberFormatException e) {
                            out.println("Error --> " + "El código y el telefono de la seden son requeridos y deben ser numéricos");
                        } catch (Exception e1) {
                            out.println("Error --> " + e1 + e1.getMessage());
                        }
                    }*/%>
            </section>
            <section id="medico">
                <h2>Gestion de medicos</h2>
                <h3>Ingresar nuevo medico</h3>
                <form>
                    Código sede
                    <input type=number name="codSede"><br>
                    Nombre sede
                    <input type=text name="nomSede"><br>
                    Telefono sede
                    <input type=number name="telSede"><br>
                    Direccion sede
                    <input TYPE=text name= "dirSede"><br> 
                    <input TYPE="submit" VALUE="Insertar sede">
                </form>
            </section>
        </main>
        <footer>
            <a href="index.jsp" target="blank">Regresar</a>
            <br>
        </footer>
    </body>
</html>