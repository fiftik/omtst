package test.domain;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name = "OpTopics")
public class OperatorTopics extends AbstractEntity {

	@Column(name = "opName")
	private String opName = null;
	
	@Column(name = "username")
	private String username = null;
	
	@Column(name = "toggle")
	private String toggle = null;
	
	@Column(name = "problem")
	private String problem = null;
	
	@Column(name = "description")
	private String description = null;
	
	@Column(name = "adress")
	private String adress = null;
	
	@Column(name = "date")
	private Date date;

	public OperatorTopics() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OperatorTopics(String opName, String username, String toggle,
			String problem, String description, String adress, Date date) {
		super();
		this.opName = opName;
		this.username = username;
		this.toggle = toggle;
		this.problem = problem;
		this.description = description;
		this.adress = adress;
		this.date = date;
	}

	public String getOpName() {
		return opName;
	}

	public void setOpName(String opName) {
		this.opName = opName;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getToggle() {
		return toggle;
	}

	public void setToggle(String toggle) {
		this.toggle = toggle;
	}

	public String getProblem() {
		return problem;
	}

	public void setProblem(String problem) {
		this.problem = problem;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAdress() {
		return adress;
	}

	public void setAdress(String adress) {
		this.adress = adress;
	}
	
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public boolean entityEquals(Object o) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int entityHashCode() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
}
