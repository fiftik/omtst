package test.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "usertopics")
public class UserTopics extends AbstractEntity {
	
	@Column(name = "username")
	private String username = null;
	
	@Column(name = "toggle")
	private String toggle = null;
	
	@Column(name = "description")
	private String description = null;
	
	@Column(name = "adress")
	private String adress = null;

	public UserTopics() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserTopics(String username, String toggle, String description,
			String adress) {
		super();
		this.username = username;
		this.toggle = toggle;
		this.description = description;
		this.adress = adress;
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
