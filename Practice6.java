package com.cathaybk.practice.nt50333.b;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringJoiner;

public class Practice6 {
	public static void main(String[] args) {
		String inputFileName = "C:\\\\Users\\\\Admin\\\\Desktop\\\\Java評量_第6題cars.csv";
		String outputFileName = "C:\\\\Users\\\\Admin\\\\Desktop\\\\cars4.csv";

		List<Map<String, String>> dataList = new ArrayList<>();

		try (BufferedReader br = new BufferedReader(new FileReader(inputFileName))) {
			String headerLine = br.readLine();
			String[] headers = headerLine.split(",");

			String line;
			while ((line = br.readLine()) != null) {
				String[] values = line.split(",");
				Map<String, String> dataMap = new HashMap<>();
				for (int i = 0; i < headers.length; i++) {
					dataMap.put(headers[i], values[i]);
				}
				dataList.add(dataMap);

				Collections.sort(dataList, new Comparator<Map<String, String>>() {
					@Override
					public int compare(Map<String, String> car1, Map<String, String> car2) {
						{
							double price1 = Double.parseDouble(car1.get("Price"));
							double price2 = Double.parseDouble(car2.get("Price"));
							return Double.compare(price2, price1);
						}

					}

				});

			}

			try (BufferedWriter bw = new BufferedWriter(new FileWriter(outputFileName))) {
				bw.write(headerLine);
				bw.newLine();
				for (Map<String, String> dataMap : dataList) {
					StringJoiner joiner = new StringJoiner(",");
					for (String header : headers) {
						joiner.add(dataMap.get(header));
					}
					bw.write(joiner.toString());
					bw.newLine();
				}
			} catch (IOException e) {
				e.printStackTrace();

			} catch (Exception e) {
				e.printStackTrace();
			}
		} catch (FileNotFoundException e1) {

			e1.printStackTrace();
		} catch (IOException e1) {

			e1.printStackTrace();
		}

	}
}
