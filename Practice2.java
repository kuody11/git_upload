package com.cathaybk.practice.nt50333.b;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class Practice2 {

	public static void main(String[] args) {
		List<Integer> result = new ArrayList<Integer>();
		Random rand = new Random();
		while (result.size() < 6) {
			result.add(rand.nextInt(49) + 1);
		}
		String ans = result.toString().replace("[", "").replace("]", "");
		System.out.println("排序前：" + ans);
		Collections.sort(result);
		String ans1 = result.toString().replace("[", "").replace("]", "");
		System.out.println("排序後：" + ans1);
	}
}
