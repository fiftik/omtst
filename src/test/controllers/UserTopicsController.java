package test.controllers;

import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import test.HibernateUtil.HibernateUtil;
import test.domain.UserTopics;
import test.domain.Users;

@Controller
public class UserTopicsController {

	@RequestMapping(value = "/sendProblem", method = RequestMethod.POST)
	public String SendProblem(@ModelAttribute UserTopics usersTopics, Model model,
			HttpSession httpSession) {
		Session session = HibernateUtil.currentSession();
		Transaction transaction = session.beginTransaction();
		session.saveOrUpdate(usersTopics);
		transaction.commit();
		return "problemForm";
	}
	
}
