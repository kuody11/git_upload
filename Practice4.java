package com.cathaybk.practice.nt50333.b;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
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
			employee.IPrintInfo();
		}

		String filename = "output5.csv";

		try (BufferedWriter writter = new BufferedWriter(new FileWriter(filename))) {
			OutputStreamWriter out = new OutputStreamWriter(new FileOutputStream(filename), "UTF-8");
			Sales a = null;
			Supervisor b = null;
			for (Employee value : employeeList) {
				if (value instanceof Sales) {
					a = (Sales) value;
					writter.write(a.getName() + "," + a.getPayment());
				} else {
					b = (Supervisor) value;
					writter.write(b.getName() + "," + b.getPayment());
				}
				writter.newLine();
			}
		} catch (IOException e) {
			e.printStackTrace();

		}
	}
}
