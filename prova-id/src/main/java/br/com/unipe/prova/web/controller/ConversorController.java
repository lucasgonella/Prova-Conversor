package br.com.unipe.prova.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.unipe.prova.model.Conversor;
import br.com.unipe.prova.dao.ConversorDAO;


@Controller
public class ConversorController {
	
	@Autowired
	private ConversorDAO dao;
	
	@RequestMapping(value= "/forms", method = RequestMethod.GET)
	private ModelAndView euro(Model model) {
		model.addAttribute("conversor", new Conversor());
		
		return new ModelAndView("forms");
	}
	
	
	@PostMapping(value = "/forms")
	public ModelAndView saveConversor(@ModelAttribute Conversor conversor) {
		
		dao = new ConversorDAO();
		dao.save(conversor);
		
		ModelAndView view = new ModelAndView("forms");
		view.addObject("mensagemEuro", Double.parseDouble(conversor.getEuro())*131.50);
		
		
		return view;
	}		
}
