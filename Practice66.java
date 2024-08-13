package com.cathaybk.practice.nt50333.b;

import java.awt.RenderingHints.Key;
import java.awt.event.ItemEvent;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collector;
import java.util.stream.Collectors;

public class Practice66 {

	public static void main(String[] args) {
		String inputFileName = "C:\\Users\\Admin\\Desktop\\Java評量_第6題cars.csv";
		List<Map<String, String>> dataList = new ArrayList<>();
		try (BufferedReader br = new BufferedReader(new FileReader(inputFileName))) {
			String headerLine = br.readLine(); // 讀取標題行
			String[] headers = headerLine.split(",");
			String line;
			while ((line = br.readLine()) != null) {
				String[] values = line.split(",");
				Map<String, String> dataMap = new HashMap<>();
				for (int i = 0; i < headers.length; i++) {
					dataMap.put(headers[i].replaceAll("\uFEFF", ""), values[i]);
				}
				dataList.add(dataMap);

				Map<String, List<Map<String, String>>> groupedData = new HashMap<>();

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

					System.out.println("Manufacturer\tTYPE\tMin.PRICE\tPrice");
					for (Map<String, String> valuedata : group) {
						BigDecimal minPrice = new BigDecimal(valuedata.get("Min.Price"));
						BigDecimal price = new BigDecimal(valuedata.get("Price"));

						minPriceSum = minPriceSum.add(minPrice);
						priceSum = priceSum.add(price);

						System.out.printf("%-15s %-10s %-10.1f %-10.1f%n", valuedata.get("Manufacturer"),
								valuedata.get("Type"), minPrice, price);
					}

					System.out.printf("小計:\t\t\t%.1f\t\t%.1f%n", minPriceSum, priceSum);

					grandTotalMinPrice = grandTotalMinPrice.add(minPriceSum);
					grandTotalPrice = grandTotalPrice.add(priceSum);

					System.out.println();
				}
				System.out.printf("合計:\t\t\t%.1f\t\t%.1f%n", grandTotalMinPrice, grandTotalPrice);

			}

		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}