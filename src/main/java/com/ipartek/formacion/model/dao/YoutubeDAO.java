package com.ipartek.formacion.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ipartek.formacion.model.ConnectionManager;
import com.ipartek.formacion.model.pojo.Youtube;
import com.mysql.jdbc.MysqlDataTruncation;
import com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException;

public class YoutubeDAO {

	private static YoutubeDAO INSTANCE = null;
	
	private YoutubeDAO() {
		super();
		
	}
	
	public static YoutubeDAO getInstance() {
		if (INSTANCE == null) {
			INSTANCE = new YoutubeDAO();
		}
		return INSTANCE;
	}

	public ArrayList<Youtube> getAll() {
		
		ArrayList<Youtube> lista = new ArrayList<Youtube>();
		String sql = "SELECT `id`, `nombre`, `codigo` FROM `video` ORDER BY `id` ASC LIMIT 500";

		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pst = con.prepareStatement(sql);
				ResultSet rs = pst.executeQuery()) {

			while (rs.next()) {
				/*Youtube v = new Youtube();
				v.setId( rs.getInt("id") );
				v.setNombre( rs.getString("nombre"));
				v.setCodigo( rs.getString("codigo"));*/
				lista.add(mapper(rs));
			}
		} catch (Exception e) {

			e.printStackTrace();
		}
		return lista;
	}
	

	public Youtube getById(int id) {
		Youtube video = new Youtube();
		String sql = "SELECT `id`, `nombre`, `codigo` FROM `video` WHERE `id` = ?;";
		try (Connection con = ConnectionManager.getConnection(); PreparedStatement pst = con.prepareStatement(sql)) {
			pst.setInt(1, id);
			try (ResultSet rs = pst.executeQuery()) {
				if (rs.next()) {
					video = mapper(rs);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return video;
	}
	



/*
	public ArrayList<Rol> getByName(String search) {
		ArrayList<Rol> lista = new ArrayList<Rol>();
		String sql = "SELECT id, nombre FROM rol WHERE nombre LIKE ? ORDER BY id DESC LIMIT 500;";
		try (Connection con = ConnectionManager.getConnection(); PreparedStatement pst = con.prepareStatement(sql)) {
			pst.setString(1, "%" + search + "%");
			try (ResultSet rs = pst.executeQuery()) {
				while (rs.next()) {
					lista.add(mapper(rs));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista;
	}
	
*/
	public boolean save(Youtube video) throws SQLException {
		boolean resultado = false;
		if (video != null) {
			// Sanitize nombre
			video.setNombre(video.getNombre());
			if (video.getId() == -1) {
				resultado = crear(video);
			} else {
				resultado = modificar(video);
			}
		}
		return resultado;
	}
	
	private boolean modificar(Youtube video) throws MysqlDataTruncation, MySQLIntegrityConstraintViolationException {
		boolean resultado = false;
		String sql = "UPDATE `v2019`.`video` SET `nombre`= ?, `codigo`=?  WHERE  `id`= ?;";
		try (Connection con = ConnectionManager.getConnection(); PreparedStatement pst = con.prepareStatement(sql)) {
			pst.setString(1, video.getNombre());
			pst.setString(2, video.getCodigo());
			pst.setInt(3, video.getId());
			resultado = doSave(pst, video);
		} catch (MySQLIntegrityConstraintViolationException e) {
			System.out.println("Video duplicado");
			throw e;
		} catch (MysqlDataTruncation e) {
			System.out.println("Nombre muy largo");
			throw e;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultado;
	}
	

	private boolean crear(Youtube video) throws MySQLIntegrityConstraintViolationException, MysqlDataTruncation {
		boolean resultado = false;
		String sql = "INSERT INTO `v2019`.`video` (`nombre`, `codigo`) VALUES (?,?);";
		try (Connection con = ConnectionManager.getConnection(); PreparedStatement pst = con.prepareStatement(sql)) {
			pst.setString(1, video.getNombre());
			pst.setString(2, video.getCodigo());
			resultado = doSave(pst, video);
	
		} catch (MySQLIntegrityConstraintViolationException e) {
			System.out.println("Video duplicado");
			throw e;
		} catch (MysqlDataTruncation e) {
			System.out.println("Nombre muy largo");
			throw e;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultado;
	}
	
	

	private boolean doSave(PreparedStatement pst,Youtube video)
			throws MySQLIntegrityConstraintViolationException, MysqlDataTruncation {
		boolean resultado = false;
		try {
			int affectedRows = pst.executeUpdate();
			if (affectedRows == 1) {
				try (ResultSet generatedKeys = pst.getGeneratedKeys()) {
					if (generatedKeys.next()) {
						video.setId(generatedKeys.getInt(1));
					}
				}
				resultado = true;
			}
		} catch (MySQLIntegrityConstraintViolationException e) {
			System.out.println("Video duplicado");
			throw e;
		} catch (MysqlDataTruncation e) {
			System.out.println("Nombre muy largo");
			throw e;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultado;
	}
	

	public boolean delete(int id) {
		boolean resultado = false;
		String sql = "DELETE FROM  `v2019`.`video` WHERE  `id`= ?;";
		try (Connection con = ConnectionManager.getConnection(); PreparedStatement pst = con.prepareStatement(sql);) {
			pst.setInt(1, id);
			int affetedRows = pst.executeUpdate();
			if (affetedRows == 1) {
				resultado = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultado;
	}
	


	public Youtube mapper(ResultSet rs) throws SQLException {
		Youtube video = new Youtube();
		video.setId( rs.getInt("id") );
		video.setNombre( rs.getString("nombre"));
		video.setCodigo( rs.getString("codigo"));
		return video;
	}

}
