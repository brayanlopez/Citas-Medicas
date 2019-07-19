package Modelo;

/**
 * @author camilo
 * @version 1.0
 * @created 19-jul.-2019 12:04:55 p. m.
 */
public class Agenda {

	private Cita cita;
	private String estado;
	private String fecha;
	private int horafinal;
	private int horainicial;
	private int idagenda;
	private Medico medico;
	private TipoCita tipocita;
	public TipoCita m_TipoCita;
	public Medico m_Medico;
	public Cita m_Cita;

	public Agenda(){

	}

	public void finalize() throws Throwable {

	}
}//end Agenda