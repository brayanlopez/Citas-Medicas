package Modelo;

/**
 * @author camilo
 * @version 1.0
 * @created 19-jul.-2019 11:38:09 a. m.
 */
public class Medico extends Usuario {

	private Consultorio consultorio;
	private Especialidad Especialidad;
	private int Franja;
	private int RegistroMedico;

	public Medico(){

	}

	public void finalize() throws Throwable {
		super.finalize();
	}
}//end Medico