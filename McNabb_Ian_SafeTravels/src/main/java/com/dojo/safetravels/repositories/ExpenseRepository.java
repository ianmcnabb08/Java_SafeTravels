package com.dojo.safetravels.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.dojo.safetravels.models.Expense;



public interface ExpenseRepository extends CrudRepository<Expense, Long> {
	List<Expense> findAll();
}
