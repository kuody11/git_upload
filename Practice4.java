package com.cathaybk.practice.nt50333.b;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

public class Practice4 {

	public static void main(String[] args) {
		List<Employee> employeeList = new ArrayList<Employee>();
		employeeList.add(new Sales("張志成", "信用卡部", 35000, 6000));
		employeeList.add(new Sales("林大鈞", "保代部", 38000, 4000));
		employeeList.add(new Supervisor("李中白", "資訊部", 65000));
		employeeList.add(new Supervisor("林小中", "理財部", 80000));
		for (Employee employee : employeeList) {
			employee.printInfo();
		}
		String userHome = System.getProperty("user.home");
		String outputFileName = Paths.get(userHome, "Desktop", "output7.csv").toString();
		try (BufferedWriter out = new BufferedWriter(
				new OutputStreamWriter(new FileOutputStream(outputFileName), StandardCharsets.UTF_8));) {

			out.write(new String(new byte[] { (byte) 0xEF, (byte) 0xBB, (byte) 0xBF }));

			for (Employee value : employeeList) {
				StringBuilder sb = new StringBuilder();

				if (value instanceof Sales) {
					Sales a = (Sales) value;
					out.write(String.valueOf(sb.append(a.getName()).append(",").append(a.getPayment())));
				} else {
					Supervisor b = (Supervisor) value;
					out.write(String.valueOf(sb.append(b.getName()).append(",").append(b.getPayment())));
				}
				out.newLine();
			}
		} catch (IOException e) {
			e.printStackTrace();

		}
	}
}
