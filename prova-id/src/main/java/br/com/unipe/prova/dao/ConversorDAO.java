package br.com.unipe.prova.dao;

import java.util.LinkedList;

import java.util.List;

import org.springframework.stereotype.Repository;


import br.com.unipe.prova.model.Conversor;

@Repository
public class ConversorDAO {

	private static List<Conversor> values;
	
	public ConversorDAO() {
		values = new LinkedList<Conversor>();
	}
	
	public void save(Conversor value) {
		values.add(value);
		System.out.println(value);
	}
	
	public List<Conversor> getAll(){
		return values;
	}
}
