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

public class ExamDAO implements AutoCloseable {
	private static final Logger LOG = LoggerFactory.getLogger(ExamDAO.class);
	private Connection conn;

	public ExamDAO(DataSource ds) {
		LOG.trace("called");
		try {
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

	public List<Exam> getExams(Hospital hospital) {
		LOG.trace("called");
		try (Statement stmt = conn.createStatement(); //
				ResultSet rs = stmt.executeQuery("select distinct e.exam_id, e.exam_name, e.exam_department"
						+ " from exams e join exam_hospitals eh on (e.exam_id) join hospitals h on (h.hospital_id)"
						+ " where hospital_name = '" + hospital.getName() + "'")) {
			List<Exam> examsList = new ArrayList<Exam>();
			while (rs.next()) {
				Exam exam = new Exam();
				exam.setId(rs.getInt("exam_id"));
				exam.setName("exam_name");
				exam.setDepartment("exam_department");
				examsList.add(exam);
			}
			return examsList;
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

	public List<Exam> getExams(int hospitalID) {
		LOG.trace("called");
		try (Statement stmt = conn.createStatement(); //
				ResultSet rs = stmt.executeQuery("select distinct e.exam_id, e.exam_name, e.exam_department"
						+ " from exams e join exam_hospitals eh on (e.exam_id) join hospitals h on (h.hospital_id)"
						+ " where hospital_id = '" + hospitalID + "'")) {
			List<Exam> examsList = new ArrayList<Exam>();
			while (rs.next()) {
				Exam exam = new Exam();
				exam.setId(rs.getInt("exam_id"));
				exam.setName("exam_name");
				exam.setDepartment("exam_department");
				examsList.add(exam);
			}
			return examsList;
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

	@Override
	public void close() throws Exception {
		// TODO Auto-generated method stub

	}

}
