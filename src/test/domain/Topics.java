package test.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name= "Topics")
public class Topics extends AbstractEntity{
	
	@Column(name = "topic")
	private String topic;

	public Topics() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Topics(String topic) {
		super();
		this.topic = topic;
	}

	public String getTopic() {
		return topic;
	}


	public void setTopic(String topic) {
		this.topic = topic;
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
