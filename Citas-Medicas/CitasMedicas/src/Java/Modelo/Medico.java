package Modelo;

/**
 * @author camilo
 * @version 1.0
 * @created 19-jul.-2019 12:04:55 p. m.
 */
public class Medico extends Usuario {

	private Consultorio consultorio;
	private Especialidad especialidad;
	private int franja;
	private int registromedico;
	public Especialidad m_Especialidad;
	public Consultorio m_Consultorio;

	public Medico(){

	}

	public void finalize() throws Throwable {
		super.finalize();
	}
}//end Medico