package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Account {

	
	private Connection conn;

	public Account(Connection conn) {
		this.conn = conn;
	}

	public boolean login(String email, String password) throws SQLException {

		String sql = "select count(*) as count from users where email=? and password=?";
		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.setString(1, email);
		stmt.setString(2, password);

		ResultSet rs = stmt.executeQuery();
		int count = 0;
		if (rs.next()) {
			count = rs.getInt("count");
		}
		rs.close();
		if (count == 0) {
			return false;
		} else {
			return true;
		}

	}
	public void postData(String sender,String data) throws SQLException{
		String sql="insert into message (Sender,Data) values (?, ?)";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, sender);
		stmt.setString(2, data);
		stmt.executeUpdate();
		stmt.close();
	
		
	}public void commentHTML(String from, String comment) throws SQLException {
		String sql = "insert into commenth (Sender, Comment) VALUES('"+from+"','"+comment+"')";

		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.execute(sql);
		
		stmt.close();
	}
	public void commentforum(String from, String comment) throws SQLException {
		String sql = "insert into forum (Sender, Comment) VALUES('"+from+"','"+comment+"')";

		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.execute(sql);
		
		stmt.close();
	}
	public void commentjsp(String from, String comment) throws SQLException {
		String sql = "insert into commentjsp (Sender, Comment) VALUES('"+from+"','"+comment+"')";

		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.execute(sql);
		
		stmt.close();
	}
	public void commentjs(String from, String comment) throws SQLException {
		String sql = "insert into commentjs (Sender, Comment) VALUES('"+from+"','"+comment+"')";

		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.execute(sql);
		
		stmt.close();
	}
	public void commentjq(String from, String comment) throws SQLException {
		String sql = "insert into commentjq (Sender, Comment) VALUES('"+from+"','"+comment+"')";

		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.execute(sql);
		
		stmt.close();
	}
	public void commentAND(String from, String comment) throws SQLException {
		String sql = "insert into commenta (Sender, Comment) VALUES('"+from+"','"+comment+"')";

		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.execute(sql);
		
		stmt.close();
	}
	public void commentj(String from, String comment) throws SQLException {
		String sql = "insert into commentj (Sender, Comment) VALUES('"+from+"','"+comment+"')";

		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.execute(sql);
		
		stmt.close();
	}
	
	
	
	public String postedData(String data) throws SQLException{
		String sql="select Data from message";
		PreparedStatement stmt = conn.prepareStatement(sql);

		ResultSet rs = stmt.executeQuery();
		while(rs.next()){
			data = rs.getString("Data");
	
		}
		
		return data;
	}
	public void create(String email, String password) throws SQLException {
		String sql = "insert into users (email, password) values (?, ?)";

		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.setString(1, email);
		stmt.setString(2, password);
		
		stmt.executeUpdate();
		
		stmt.close();
	}
	public boolean exists(String email) throws SQLException {

		String sql = "select count(*) as count from users where email=?";

		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.setString(1, email);

		ResultSet rs = stmt.executeQuery();

		int count = 0;

		if (rs.next()) {
			count = rs.getInt("count");
		}
		
		rs.close();

		if (count == 0) {
			return false;
		} else {
			return true;
		}
	}
}
