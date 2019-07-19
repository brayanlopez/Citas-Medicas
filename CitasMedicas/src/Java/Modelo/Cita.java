package Modelo;

/**
 * @author camilo
 * @version 1.0
 * @created 19-jul.-2019 12:04:55 p. m.
 */
public class Cita {

	private int costo;
	private String diagnostico;
	private String estado;
	private String fecha;
	private int idcita;
	private Multa multa;
	private String prescripcion;
	public Afiliado m_Afiliado;
	public Multa m_Multa;

	public Cita(){

	}

	public void finalize() throws Throwable {

	}
}//end Cita