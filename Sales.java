package com.cathaybk.practice.nt50333.b;

public class Sales extends Employee {
	private int bouns;
	private int payment;

	public Sales(String name, String department, int salary, int bouns) {
		super(name, department, salary);
		this.bouns = bouns;
	}

	public void IPrintInfo() {
		System.out.println("姓名: " + super.getName() + " 工作部門: " + super.getDepartment());
		System.out.println("月薪: " + super.getSalary());
		System.out.println("業績獎金: " + this.getBouns());
		System.out.println("總計: " + this.getPayment());
	}

	public int getBouns() {
		return (int) (bouns * 0.05);
	}

	public void setBouns(int bouns) {
		this.bouns = bouns;
	}

	public int getPayment() {
		return payment = getBouns() + getSalary();
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}

}
