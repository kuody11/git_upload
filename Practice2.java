package com.cathaybk.practice.nt50333.b;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

public class Practice2 {
	public static void main(String[] args) {
		Set<Integer> lottoNumbers = new HashSet<>();

		Random random = new Random();

		while (lottoNumbers.size() < 6) {
			lottoNumbers.add(random.nextInt(6) + 1);
		}
		List<Integer> lottolist = new ArrayList<>(lottoNumbers);
		System.out.println("排序前：" + formatList(lottolist));
		Collections.sort(lottolist);
		System.out.println("排序前：" + formatList(lottolist));

	}

	private static String formatList(List<Integer> list) {
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < list.size(); i++) {
			sb.append(list.get(i));
			if (i < list.size() - 1) {
				sb.append(" ");
			}
		}
		return sb.toString();
	}
}
