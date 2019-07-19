package Modelo;

/**
 * @author camilo
 * @version 1.0
 * @created 19-jul.-2019 11:38:09 a. m.
 */
public class Cita {

	private int Costo;
	private String Diagnostico;
	private String Estado;
	private String Fecha;
	private int IdCita;
	private Multa Multa;
	private String Prescripcion;
	public Afiliado m_Afiliado;
	public Multa m_Multa;

	public Cita(){

	}

	public void finalize() throws Throwable {

	}
}//end Cita