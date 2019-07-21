package Datos;


import Modelo.Agenda;

/**
 * @author camilo
 * @version 1.0
 * @created 19-jul.-2019 2:28:04 p. m.
 */
public class AgendaDAO {

	private Agenda agenda;
	public CitaDAO m_CitaDAO;
	public MedicoDAO m_MedicoDAO;
	public TipoCitaDAO m_TipoCitaDAO;

	public AgendaDAO(){

	}

	public void finalize() throws Throwable {

	}
	public void actualizarAgenda(){

	}

	public void buscarAgenda(){

	}

	public void eliminarAgenda(){

	}

	public Agenda getagenda(){
		return agenda;
	}

	public void insertarAgenda(){

	}

	public void modificarAgenda(){

	}

	/**
	 * 
	 * @param newVal
	 */
	public void setagenda(Agenda newVal){
		agenda = newVal;
	}
}//end AgendaDAO