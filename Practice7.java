package com.cathaybk.practice.nt50333.b;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

public class Practice7 {
	public static final String UPDATE_CARS_SQL = "update STUDENT.CARS set MIN_PRICE = ? , PRICE=? where MANUFACTURER = ? and  TYPE= ?";

	public static final String INSERT_CARS_SQL = "insert into STUDENT.CARS (MANUFACTURER, TYPE, MIN_PRICE, PRICE) values (?, ?, ?, ?)";

	public static final String DELETE_CARS_SQL = "delete from STUDENT.CARS where MANUFACTURER = ? and TYPE= ?";

	public static final String SELECT_CARS_SQL = "select * from STUDENT.CARS where MANUFACTURER = ? and TYPE = ?";

	public static final String CONN_URL = "jdbc:oracle:thin:@//localhost:1521/XE";

	public static final String CONN_COUNT = "student";

	public static final String CONN_PASSWORD = "student123456";

	private static final String TYPE = "TYPE";

	private static final String MANUFACTURER = "MANUFACTURER";

	private static final String MIN_PRICE = "MIN_PRICE";

	private static final String PRICE = "PRICE";

	public static void main(String[] args) throws Exception {
		Scanner scanner = new Scanner(System.in);
		System.out.print("請選擇以下指令輸入: select、insert、update、delete\n");

		String enter = scanner.next();

		if ("select".equals(enter)) {

			System.out.println("請輸入製造商: ");
			String manufacturer = scanner.next();
			System.out.println("請輸入類型: ");
			String type = scanner.next();
			doQuery(manufacturer, type);
		} else if ("insert".equals(enter)) {

			System.out.println("請輸入新增製造商名稱: ");
			String addmanufacturer = scanner.next();
			System.out.println("請輸入新增類型: ");
			String addtype = scanner.next();
			System.out.println("請輸入新增底價的價格: ");
			BigDecimal addmin_price = scanner.nextBigDecimal();
			System.out.println("請輸入新增售價的價格: ");
			BigDecimal addprice = scanner.nextBigDecimal();
			doInsert(addmanufacturer, addtype, addmin_price, addprice);

		} else if ("update".equals(enter)) {
			System.out.println("請輸入更新資訊的製造商:");
			String updatemanufacturer = scanner.next();
			System.out.println("請輸入更新資訊的類型:");
			String updatetype = scanner.next();
			System.out.println("請輸入更新資訊的新底價:$");
			BigDecimal updatemin_price = scanner.nextBigDecimal();
			System.out.println("請輸入更新資訊的新售價:$");
			BigDecimal updateprice = scanner.nextBigDecimal();
			doUpdate(updatemin_price, updateprice, updatemanufacturer, updatetype);

		} else if ("delete".equals(enter)) {
			System.out.println("請輸入需要刪除資訊的製造商:");
			String delemanufacturer = scanner.next();
			System.out.println("請輸入需要刪除資訊的類型:");
			String deletype = scanner.next();
			doDelete(delemanufacturer, deletype);

		} else {
			System.out.println("請輸入正確資訊");
		}

		scanner.close();

	}

	public static void doQuery(String manufacturer, String type) {
		try (Connection conn = DriverManager.getConnection(CONN_URL, CONN_COUNT, CONN_PASSWORD);) {

			PreparedStatement pstmt = conn.prepareStatement(SELECT_CARS_SQL);
			pstmt.setString(1, manufacturer);
			pstmt.setString(2, type);

			ResultSet rs = pstmt.executeQuery();

			List<Map<String, String>> list = new ArrayList<>();

			while (rs.next()) {
				Map<String, String> carmap = new HashMap<>();
				carmap.put(MANUFACTURER, rs.getString(MANUFACTURER));
				carmap.put(TYPE, rs.getString(TYPE));
				carmap.put(MIN_PRICE, rs.getString(MIN_PRICE));
				carmap.put(PRICE, rs.getString(PRICE));

				list.add(carmap);
				StringBuilder sb = new StringBuilder();

				sb.append("製造商: ").append(carmap.get(MANUFACTURER)).append("\n").append("型號: ").append(carmap.get(TYPE))
						.append("\n").append("售價:$ ").append(carmap.get(PRICE)).append("\n").append("底價:$ ")
						.append(carmap.get(MIN_PRICE));
				System.out.println(sb.toString());
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

	public static void doInsert(String addmanufacturer, String addtype, BigDecimal addmin_price, BigDecimal addprice) {
		try (Connection conn = DriverManager.getConnection(CONN_URL, CONN_COUNT, CONN_PASSWORD);) {
			try {

				conn.setAutoCommit(false);
				PreparedStatement pstmt = conn.prepareStatement(INSERT_CARS_SQL);

				pstmt.setString(1, addmanufacturer);
				pstmt.setString(2, addtype);
				pstmt.setBigDecimal(3, addmin_price);
				pstmt.setBigDecimal(4, addprice);

				int insertdate = pstmt.executeUpdate();
				if (insertdate == 0) {
					System.out.println("資料新增失敗");
				} else {

					conn.commit();
					System.out.println("資料已新增成功");
				}
			} catch (Exception e) {
				System.out.println("新增失敗，原因：" + e.getMessage());
				try {
					conn.rollback();
				} catch (Exception sqle) {
					System.out.println("rollback 失敗，原因：" + sqle.getMessage());

				}

			}
		} catch (Exception e) {
			System.out.println("連線失敗，原因: " + e.getMessage());

		}

	}

	public static void doUpdate(BigDecimal udmin_price, BigDecimal udprice, String udmanufacturer, String udtype)
			throws Exception {
		try (Connection conn = DriverManager.getConnection(CONN_URL, CONN_COUNT, CONN_PASSWORD);) {
			try {
				conn.setAutoCommit(false);
				PreparedStatement pstmt = conn.prepareStatement(UPDATE_CARS_SQL);

				pstmt.setBigDecimal(1, udmin_price);
				pstmt.setBigDecimal(2, udprice);
				pstmt.setString(3, udmanufacturer);
				pstmt.setString(4, udtype);

				int updatedata = pstmt.executeUpdate();
				if (updatedata == 0) {
					System.out.println("資料更新失敗");
				} else {

					conn.commit();
					System.out.println("資訊已更新成功");
				}

			} catch (Exception e) {
				System.out.println("資料更新失敗，原因:" + e.getMessage());
				try {
					conn.rollback();
				} catch (Exception sqle) {
					System.out.println("rollback失敗，原因: " + sqle.getMessage());

				}

			}

		}
		throw new Exception();

	}

	public static void doDelete(String delemanufacturer, String deletype) {
		try (Connection conn = DriverManager.getConnection(CONN_URL, CONN_COUNT, CONN_PASSWORD);) {
			try {
				conn.setAutoCommit(false);
				PreparedStatement pstmt = conn.prepareStatement(DELETE_CARS_SQL);

				pstmt.setString(1, delemanufacturer);
				pstmt.setString(2, deletype);
				int updatedata = pstmt.executeUpdate();
				if (updatedata == 0) {
					System.out.println("資料刪除失敗");
				} else {

					conn.commit();
					System.out.println("資訊已刪除成功");
				}

			} catch (Exception e) {
				System.out.println("資料刪除失敗，失敗原因: " + e.getMessage());

				try {
					conn.rollback();
				} catch (Exception e2) {
					System.out.println("rollback失敗，失敗原因: " + e2.getMessage());

				}

			}
		} catch (Exception e) {
			System.out.println("連線失敗，原因: " + e.getMessage());

		}
	}
}