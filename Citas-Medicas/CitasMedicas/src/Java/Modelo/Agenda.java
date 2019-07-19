package Modelo;

/**
 * @author camilo
 * @version 1.0
 * @created 19-jul.-2019 11:38:09 a. m.
 */
public class Agenda {

	private Cita Cita;
	private String Estado;
	private String Fecha;
	private int HoraFinal;
	private int HoraInicial;
	private int IdAgenda;
	private Medico Medico;
	private TipoCita TipoCita;
	public TipoCita m_TipoCita;
	public Medico m_Medico;
	public Cita m_Cita;

	public Agenda(){

	}

	public void finalize() throws Throwable {

	}
}//end Agenda