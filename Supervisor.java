package com.cathaybk.practice.nt50333.b;

public class Supervisor extends Employee {

	private int payment;

	public Supervisor(String name, String department, int salary) {
		super(name, department, salary);
		this.payment = super.getSalary();
	}

	@Override
	public void printInfo() {
		StringBuilder sb = new StringBuilder();
		sb.append("薪資單").append("\n");
		sb.append("姓名: ").append(super.getName()).append(" ").append("工作部門: ").append(super.getDepartment())
				.append("\n").append("月薪: ").append(super.getSalary()).append("\n").append("總計: ")
				.append(this.getPayment());
		System.out.println(sb.toString());

	}

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}

}
