package com.cathaybk.practice.nt50333.b;

import java.util.Calendar;
import java.util.Scanner;

public class Calender {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("輸入介於1-12間的整數m: ");
		int month = scanner.nextInt();

		printCalendar(month);

		scanner.close();
	}

	public static void printCalendar(int month) {
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.MONTH, month - 1);// 因為是一月設定為0
		calendar.set(Calendar.DAY_OF_MONTH, 1);

		System.out.println("\t\t" + calendar.get(Calendar.YEAR) + "年" + (month) + "月");
		System.out.println("----------------------------------------------------");
		String week = "日\t一\t二\t三\t四\t五\t六";
		System.out.printf(" %s\n", week);
		System.out.println("====================================================");

		int startDayOfWeek = calendar.get(Calendar.DAY_OF_WEEK) -1; // 星期天為0
		int daysInMonth = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);

		for (int i = 0; i < startDayOfWeek; i++) {
			System.out.print("\t");
		} 

		for (int day = 1; day <= daysInMonth; day++) {
			System.out.printf("%d\t ", day);

			if ((day + startDayOfWeek) % 7 == 0 ) {
				System.out.println();
			}
		}

	}
}
