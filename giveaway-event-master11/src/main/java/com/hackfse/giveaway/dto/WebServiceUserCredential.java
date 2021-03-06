package com.hackfse.giveaway.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity(name = "webServiceUserCredentials")
@Table(name = "WS_USER_CREDS")
public class WebServiceUserCredential {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ID")
	private Long id;
	@Column(name = "WS_USER_NAME")
	private String userName;
	@Column(name = "WS_USER_PASSWORD")
	private String userPassword;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public WebServiceUserCredential() {
		
	}

	public WebServiceUserCredential(final String userName, final String userPassword) {
		this.userName = userName;
		this.userPassword = userPassword;
	}

		
	
}
