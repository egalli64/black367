package srv;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class HospitalDAO implements AutoCloseable{

	private static final Logger LOG = LoggerFactory.getLogger(ExamDAO.class);
	private Connection conn;

	public HospitalDAO(DataSource ds) {
		LOG.trace("called");
		try {
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

	public List<Hospital> getHospitals(String exam) {
		LOG.trace("called");
		try (Statement stmt = conn.createStatement(); //
				ResultSet rs = stmt.executeQuery("select h.hospital_id, h.hospital_name," +
								"h.hospital_address, h.hospital_cap, h.hospital_city" +
						 "from hospitals h join exam_hospitals eh using(hospital_id) join exams" + 
						 "e using(exam_id)\r\n where e.exam_name='" + exam + "'")) {
			List<Hospital> hospitalList = new ArrayList<Hospital>();
			while (rs.next()) {
				Hospital hospital = new Hospital();
				hospital.setId(rs.getInt("hospital_id"));
				hospital.setName("hospital_name");
				hospital.setAddress("hospital_address");
				hospital.setCap("hospital_cap");
				hospital.setCity("hospital_city");
				hospitalList.add(hospital);
			}
			return hospitalList;
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

	@Override
	public void close() throws Exception {
		// TODO Auto-generated method stub

	}

	
}
