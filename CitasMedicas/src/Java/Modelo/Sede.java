package Modelo;

/**
 * @author camilo
 * @version 1.0
 * @created 19-jul.-2019 12:04:55 p. m.
 */
public class Sede {

    private String direccion;
    private int idsede;
    private String nombre;
    private int telefono;

    public Sede() {

    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getIdsede() {
        return idsede;
    }

    public void setIdsede(int idsede) {
        this.idsede = idsede;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public void finalize() throws Throwable {

    }
}//end Sede
