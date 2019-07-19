package Modelo;

/**
 * @version 1.0
 * @created 19-jul.-2019 11:38:09 a. m.
 */
public class Afiliado extends Usuario {

	private Categoria Categoria;
	private String Estado;
	private String EstadoMulta;
	private String TipoAfiliacion;
	public Categoria m_Categoria;

	public Afiliado(){

	}

	public void finalize() throws Throwable {
		super.finalize();
	}
}//end Afiliado