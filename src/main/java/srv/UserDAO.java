package srv;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class UserDAO implements AutoCloseable {
	private static final Logger LOG = LoggerFactory.getLogger(UserDAO.class);
	private Connection conn;
//	private static final String USER_VERIFICATION = "SELECT user_name, user_password FROM users WHERE user_name = ? AND user_password = ? ";

	public UserDAO(DataSource ds) {
		LOG.trace("called");
		try {
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

	public boolean userExists(String username) {
		LOG.trace("called");
		try (Statement stmt = conn.createStatement(); //
				ResultSet rs = stmt.executeQuery("SELECT user_name FROM users WHERE user_name = '" + username + "'")) {
			if (rs.next()) {
				return true;
			} 
			else {
				return false;
			}
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}
	
	public User verify(String username, String password) {
		LOG.trace("called");
		try (Statement stmt = conn.createStatement(); //
				ResultSet rs = stmt.executeQuery("SELECT user_id, user_name, user_password FROM users WHERE user_name = '"
						+ username + "' AND user_password = '" + password + "'")) {
			if (rs.next()) {
				return new User(rs.getInt("user_id"), rs.getString("user_name"), rs.getString("user_password"));
//				return rs.getString("user_name");
			} 
			else {
				return null;
			}
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}
	
//	public boolean insertUser() {
//		
//	}

	@Override
	public void close() throws Exception {
		// TODO Auto-generated method stub

	}

}
