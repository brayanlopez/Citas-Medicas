package Modelo;

/**
 * @version 1.0
 * @created 19-jul.-2019 12:04:54 p. m.
 */
public class Afiliado extends Usuario {

	private Categoria categoria;
	private String estado;
	private String estadomulta;
	private String tipoafiliacion;
	public Categoria m_Categoria;

	public Afiliado(){

	}

	public void finalize() throws Throwable {
		super.finalize();
	}
}//end Afiliado