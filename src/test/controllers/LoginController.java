package test.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import test.HibernateUtil.HibernateUtil;
import test.domain.Operators;
import test.domain.Users;



@Controller
public class LoginController {
	
	@RequestMapping(value="/choice", method=RequestMethod.GET)
	public String showChoicePage(){
		return "choice";
	}
	
	@RequestMapping(value="/loginOp", method=RequestMethod.GET)
	public String LoginOp(Model model){
		Operators operators = new Operators();
    	model.addAttribute("operators", operators);
		return "loginOp";
	}
	
    @RequestMapping(value="/loginUs", method=RequestMethod.GET)
	public String LoginUs(Model model) throws IOException {
    	Users users = new Users();
    	model.addAttribute("users", users);
		return "loginUs";
	}
	
	@RequestMapping(value = "/loginUs/check", method = RequestMethod.POST)
	public String LoginCheckUs(@ModelAttribute Users users, Errors error,
			Model model, HttpSession httpSession) {
		int x = 0;
		Session session = HibernateUtil.currentSession();
		Query q = session.createSQLQuery("select login from users");
		List<String> loginlist = q.list();
		q = session.createSQLQuery("select password from users");
		List<String> passlist = q.list();
		while (x < loginlist.size()) {
			if (users.getLogin().equals(loginlist.get(x))
					& users.getPassword().equals(passlist.get(x))) {
				Query qr = session
						.createQuery("from Users where login = :login ");
				qr.setParameter("login", users.getLogin());
				Users actU = (Users) qr.uniqueResult();
				httpSession.setAttribute("users", actU);
				model.addAttribute("users", actU);
				return "problemForm";
			}
			x++;
		}
		error.rejectValue("login", "login", "Неверный логин или пароль");
		x = 0;
		return "loginUs";
	}
	
	@RequestMapping(value = "/loginOp/check", method = RequestMethod.POST)
	public String LoginCheckOp(@ModelAttribute Operators operators, Errors error,
			Model model, HttpSession httpSession) {
		int x = 0;
		Session session = HibernateUtil.currentSession();
		Query q = session.createSQLQuery("select login from operators");
		List<String> loginlist = q.list();
		q = session.createSQLQuery("select password from operators");
		List<String> passlist = q.list();
		while (x < loginlist.size()) {
			if (operators.getLogin().equals(loginlist.get(x))
					& operators.getPassword().equals(passlist.get(x))) {
				Query qr = session
						.createQuery("from Operators where login = :login ");
				qr.setParameter("login", operators.getLogin());
				Operators actO = (Operators) qr.uniqueResult();
				httpSession.setAttribute("operators", actO);
				model.addAttribute("operators", actO);
				return "navigate";
			}
			x++;
		}
		error.rejectValue("login", "login", "Неверный логин или пароль");
		x = 0;
		return "loginOp";
	}
	
	@RequestMapping(value="/exit", method=RequestMethod.GET)
	public String Exit() {
		return "choice";
	}
	
}
