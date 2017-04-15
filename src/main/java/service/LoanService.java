package service;

import java.util.ArrayList;
import java.util.List;

import domain.LoanApplication;

public class LoanService {
	private List<LoanApplication> loans = new ArrayList<LoanApplication>();
	
	public void add(LoanApplication app) {
		if (loans.contains(app))
			return;
		loans.add(app);
	}
	public List<LoanApplication> getAll() {
		return loans;
	}
}
