package com.dojo.safetravels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.dojo.safetravels.models.Expense;
import com.dojo.safetravels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	private final ExpenseRepository expenseRepository;
	
	public ExpenseService(ExpenseRepository expenseRepository) {
		this.expenseRepository = expenseRepository;
	}
	
	public List <Expense> allExpenses(){
		return expenseRepository.findAll();
	}
	
	public Expense createExpense(Expense expense) {
		return expenseRepository.save(expense);
	}
	
	public Expense findExpense(Long id) {
		Optional<Expense> optionalExpense = expenseRepository.findById(id);
		if (optionalExpense.isPresent()) {
			return optionalExpense.get();
		}
		else {
			return null;
		}
	}
	
	public Expense updateExpense(Expense expense) {
		return expenseRepository.save(expense);
	}
	
	public void deleteExpense(Expense expense) {
		expenseRepository.delete(expense);
	}
}
