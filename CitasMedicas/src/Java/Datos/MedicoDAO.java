package Datos;

/**
 * @author camilo
 * @version 1.0
 * @created 19-jul.-2019 2:28:05 p. m.
 */
public class MedicoDAO extends UsuarioDAO {

	private Medico medico;
	public ConsultorioDAO m_ConsultorioDAO;
	public EspecialidadDAO m_EspecialidadDAO;

	public MedicoDAO(){

	}

	public void finalize() throws Throwable {
		super.finalize();
	}
	public void actualizarMedico(){

	}

	public void buscarMedico(){

	}

	public void eliminarMedico(){

	}

	public Medico getmedico(){
		return medico;
	}

	public void insertarMedico(){

	}

	public void modificarMedico(){

	}

	/**
	 * 
	 * @param newVal
	 */
	public void setmedico(Medico newVal){
		medico = newVal;
	}
}//end MedicoDAO