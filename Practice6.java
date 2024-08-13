package com.cathaybk.practice.nt50333.b;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringJoiner;

public class Practice6 {
	public static void main(String[] args) {

		String userHome = System.getProperty("user.home");
		String inputFileName = Paths.get(userHome, "Desktop", "Java評量_第6題cars.csv").toString();
		String outputFileName = Paths.get(userHome, "Desktop", "cars6.csv").toString();

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

			}
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
			Map<String, List<Map<String, String>>> groupedData = new HashMap<>();

			System.out.printf("%-15s %s %15s %10s\n", "Manufacturer", "TYPE", "Min.PRICE", "Price");

			for (Map<String, String> data : dataList) {
				String manufacturer = data.get("Manufacturer");
				groupedData.computeIfAbsent(manufacturer, k -> new ArrayList<>()).add(data);

			}

			BigDecimal grandTotalMinPrice = BigDecimal.ZERO;
			BigDecimal grandTotalPrice = BigDecimal.ZERO;

			for (String manufacturer : groupedData.keySet()) {
				List<Map<String, String>> group = groupedData.get(manufacturer);

				BigDecimal minPriceSum = BigDecimal.ZERO;
				BigDecimal priceSum = BigDecimal.ZERO;

				for (Map<String, String> valuedata : group) {
					BigDecimal minPrice = new BigDecimal(valuedata.get("Min.Price"));
					BigDecimal price = new BigDecimal(valuedata.get("Price"));

					minPriceSum = minPriceSum.add(minPrice);
					priceSum = priceSum.add(price);

					System.out.printf("%-15s %-10s %9.1f %10.1f\n", valuedata.get("Manufacturer"),
							valuedata.get("Type"), minPrice, price);
				}
				System.out.printf("小計:\t\t\t%12.1f\t%7.1f\n", minPriceSum, priceSum);

				grandTotalMinPrice = grandTotalMinPrice.add(minPriceSum);
				grandTotalPrice = grandTotalPrice.add(priceSum);

			}
			System.out.printf("合計:\t\t\t%12.1f\t%7.1f", grandTotalMinPrice, grandTotalPrice);

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
