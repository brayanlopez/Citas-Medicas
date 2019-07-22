package Datos;

import Modelo.Sede;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import util.CaException;
import util.ServiceLocator;

/**
 * @author camilo
 * @version 1.0
 * @created 19-jul.-2019 2:28:05 p. m.
 */
public class SedeDAO {

    private Sede sede;

    /*
     * Constructor de la clase
     */
    public SedeDAO() {
        sede = new Sede();
    }

    /**
     * Incluye una nueva fila en la tabla Sede.
     *
     * @throws CaException
     */
    public void insertarSede() throws CaException {
        try {
            String strSQL = "INSERT INTO \"Sede\" (k_sede, n_sede, \"o_telefonoSede\", \"o_direccionSede\") VALUES(?,?,?,?)";
            Connection conexion = ServiceLocator.getInstance().tomarConexion();
            PreparedStatement prepStmt = conexion.prepareStatement(strSQL);
            prepStmt.setLong(1, sede.getIdsede());
            prepStmt.setString(2, sede.getNombre());
            prepStmt.setLong(3, sede.getTelefono());
            prepStmt.setString(4, sede.getDireccion());
            prepStmt.executeUpdate();
            prepStmt.close();
            ServiceLocator.getInstance().commit();
        } catch (SQLException e) {
            throw new CaException("SedeDAO", "No pudo crear la sede" + e.getMessage());
        } finally {
            ServiceLocator.getInstance().liberarConexion();
        }
    }

    public void modificarSede() {

    }

    public void eliminarSede() {

    }

    public void buscarSede() {

    }

    public void actualizarSede() {

    }

    /**
     *
     * @param sede
     */
    public void setsede(Sede sede) {
        this.sede = sede;
    }

    public Sede getsede() {
        return sede;
    }

    public void finalize() throws Throwable {

    }

}//end SedeDAO
