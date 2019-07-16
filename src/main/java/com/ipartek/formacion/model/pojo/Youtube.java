package com.ipartek.formacion.model.pojo;

public class Youtube {

	private int id;
	private String titulo;
	private String codigo;
	private int reproducciones;

	public Youtube() {
		super();
	}

	public Youtube(int id, String titulo, String codigo, int reproducciones) {
		super();
		setId(id);
		setTitulo(titulo);
		setCodigo(codigo);
		setReproducciones(reproducciones);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public int getReproducciones() {
		return reproducciones;
	}

	public void setReproducciones(int reproducciones) {
		this.reproducciones = reproducciones;
	}

	@Override
	public String toString() {
		return "Youtube [id=" + id + ", titulo=" + titulo + ", codigo=" + codigo + ", reproducciones=" + reproducciones
				+ "]";
	}

}
