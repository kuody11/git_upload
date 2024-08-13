package com.cathaybk.practice.nt50333.b;

public class Sales extends Employee {
	
	private int payment;
	private int performance;
	private int bonus;
	public Sales(String name, String department, int salary, int performance) {
		super(name, department, salary);
		this.bonus =(int) (performance*0.05);
		this.payment=super.getSalary()+this.getBonus();
		
	}

	@Override
	public void printInfo() {
		StringBuilder sb = new StringBuilder();
		sb.append("薪資單").append("\n");
		sb.append("姓名: ").append(super.getName()).append(" ").append("工作部門: ").append(super.getDepartment())
				.append("\n").append("月薪: ").append(super.getSalary()).append("\n").append("業績獎金: ")
				.append(this.getBonus()).append("\n").append("總計: ").append(this.getPayment());
		System.out.println(sb.toString());
	}

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}

	public int getPerformance() {
		return performance;
	}

	public void setPerformance(int performance) {
		this.performance = performance;
	}

	public int getBonus() {
		return bonus;
	}

	public void setBonus(int bonus) {
		this.bonus = bonus;
	}


	

}
