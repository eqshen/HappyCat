package com.eqshen.bean;

import java.io.Serializable;

import com.eqshen.model.Joke;

public class UserJoke extends Joke implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String username;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
}
