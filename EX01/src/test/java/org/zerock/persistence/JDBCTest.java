package org.zerock.persistence;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import jdk.internal.org.jline.utils.Log;
import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTest {
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	@Test
	public void tsetConnection() {
			try(Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","oracle")){
			System.out.println("sussandkase");
			Log.info(con);
		}catch(Exception e) {
			fail(e.getMessage());
		}
	}
}