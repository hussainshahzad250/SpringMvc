package com.live.social;

import java.sql.Date;
import java.text.SimpleDateFormat;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PersonController {

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.setDisallowedFields(new String[] { "mobileNo" });
		// for not binding the form element
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		// these lines are for for date format
		binder.registerCustomEditor(Date.class, "personDOB", new CustomDateEditor(dateFormat, false));
	}

	@RequestMapping(value = "/AddmitionForm", method = RequestMethod.GET)
	public String displayForm() {
		return "AddmitionForm";
	}

	@ModelAttribute
	public void addModel(Model mv) {
		mv.addAttribute("msg", "Are You Feeling Happy in Learning Spring MVC ?");
	}

	@RequestMapping(value = "/SuccessForm", method = RequestMethod.POST)
	public String successForm(@ModelAttribute("person") Person person, BindingResult result) {
		if (result.hasErrors()) {
			return "AddmitionForm";
		}
		return "SuccessForm";
	}
}
