package com.careeranalysis.db;


import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.careeranalysis.properties.Properties;


public class DBCon {

	static {
		try {
			Class.forName(Properties.driver);
		} catch (Exception except) {
			except.printStackTrace();
		}
	}

	public static int executeMyQuery(CallableStatement cs) {
		// Incomplete
		int count = 0;
		Connection con = null;
		try {
			con = DBCon.getConnection();

			count = cs.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				cs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return count;
	}

	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(Properties.dbURL, Properties.dbuser, Properties.dbpass);
	}

	private static void closeResultSet(ResultSet rs) {
		if (rs != null)
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}

	private static void closeCallableStatement(CallableStatement cs) {
		if (cs != null)
			try {
				cs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
	public static void closePreparedStatement(PreparedStatement ps) {
		if (ps != null)
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}

	public static void closeConnection(Connection con) {
		if (con != null)
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}

	public static void close(Connection con, CallableStatement cs) {
		closeConnection(con);
		closeCallableStatement(cs);
	}

	public static void close(Connection con, CallableStatement cs, ResultSet rs) {
		closeConnection(con);
		closeCallableStatement(cs);
		closeResultSet(rs);
	}
}
