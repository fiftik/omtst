package test.controllers;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import test.HibernateUtil.HibernateUtil;
import test.dal.CrudDao;
import test.dal.CrudDaoBean;
import test.domain.OperatorTopics;
import test.domain.Operators;
import test.domain.Topics;
import test.domain.UserTopics;
import test.domain.Users;

@Controller
public class OpNavigateController {
	@Autowired
	private CrudDao crudDao;

	@RequestMapping(value = "/getTopics", method = RequestMethod.GET)
	public String showAllTopics(Model model) {
		List<Topics> topics = crudDao.list(Topics.class);
		model.addAttribute("topics", topics);
		return "allTopics";
	}

	@RequestMapping(value = "/getAllClients", method = RequestMethod.GET)
	public String showAllClients(Model model) {
		List<Users> users = crudDao.list(Users.class);
		model.addAttribute("users", users);
		return "allClients";
	}
	
	@RequestMapping(value = "/getAllProcessedTopics", method = RequestMethod.GET)
	public String showAllProcessedTopics(Model model) {
		List<OperatorTopics> opTp = crudDao.list(OperatorTopics.class);
		model.addAttribute("opTp", opTp);
		return "allProcTopics";
	}
	
	@RequestMapping(value = "/newProcessedTopicForm", method = RequestMethod.POST)
	public String newProcessedTopicForm(@RequestParam("login") String Login,
			Model model, HttpSession httpSession) {
		Operators oprs = new Operators();
		oprs.setLogin(Login);
		model.addAttribute("oprs", oprs);
		List<Topics> topics = crudDao.list(Topics.class);
		model.addAttribute("topics", topics);
		return "newProcessedTopicForm";
	}

	@RequestMapping(value = "/client", method = RequestMethod.GET)
	public String Client(@RequestParam("login") String Login, Model model,
			HttpSession httpSession) throws IOException {
		Users users = new Users();
		users.setLogin(Login);
		Session session = HibernateUtil.currentSession();
		Query qr = session
				.createQuery("from UserTopics where username = :login ");
		qr.setParameter("login", Login);
		List<UserTopics> usTp = qr.list();
		model.addAttribute("usTp", usTp);
		model.addAttribute("users", users);
		return "client";
	}

	@RequestMapping(value = "/userTopic", method = RequestMethod.GET)
	public String UserTopic(@RequestParam("id") Long Id, Model model,
			HttpSession httpSession) throws IOException {
		UserTopics userTopics = crudDao.find(UserTopics.class, Id);
		model.addAttribute("userTopics", userTopics);
		return "userTopic";
	}
	
	@RequestMapping(value = "/operatorTp", method = RequestMethod.POST)
	public String OperatorTopic(@RequestParam("id") Long Id, Model model,
			HttpSession httpSession) throws IOException {
		OperatorTopics opTopic = crudDao.find(OperatorTopics.class, Id);
		System.out.println(opTopic.getId());
		model.addAttribute("opTopic", opTopic);
		List<Topics> topics = crudDao.list(Topics.class);
		model.addAttribute("topics", topics);
		return "operatorTopic";
	}
	
	@RequestMapping(value = "/deleteTopic", method = RequestMethod.DELETE)
	public String DelUserTopic(@RequestParam("id") Long Id, Model model,
			HttpSession httpSession) throws IOException {
		crudDao.delete(UserTopics.class, Id);
		List<Users> users = crudDao.list(Users.class);
		model.addAttribute("users", users);
		return "allClients";
	}
	
	@RequestMapping(value = "/addNewTopic", method = RequestMethod.POST)
	public String addNewTopic(@ModelAttribute OperatorTopics operatorTopics, Model model,
			HttpSession httpSession) {
		Session session = HibernateUtil.currentSession();
		Transaction transaction = session.beginTransaction();
		operatorTopics.setDate(new Date());
		session.saveOrUpdate(operatorTopics);
		transaction.commit();
		return "navigate";
	}
	
	@RequestMapping(value = "/deletePdTp", method = RequestMethod.DELETE)
	public String DelOperatorTopic(@RequestParam("id") Long Id, Model model,
			HttpSession httpSession) throws IOException {
		crudDao.delete(OperatorTopics.class, Id);
		List<OperatorTopics> opTp = crudDao.list(OperatorTopics.class);
		model.addAttribute("opTp", opTp);
		return "allProcTopics";
	}
	
	@RequestMapping(value = "/editTopic", method = RequestMethod.PUT)
	public String EditTopic(@ModelAttribute OperatorTopics operatorTopics, Model model,
			HttpSession httpSession) {
		Session session = HibernateUtil.currentSession();
		Transaction transaction = session.beginTransaction();
		operatorTopics.setDate(new Date());
		session.saveOrUpdate(operatorTopics);
		transaction.commit();
		List<OperatorTopics> opTp = crudDao.list(OperatorTopics.class);
		model.addAttribute("opTp", opTp);
		return "allProcTopics";
	}

}
