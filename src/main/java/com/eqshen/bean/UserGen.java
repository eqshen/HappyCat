package com.eqshen.bean;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.eqshen.model.Role;
import com.eqshen.model.User;

public class UserGen extends User implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    
    /*diff*/
    private List<Role> rolesList;
  

	public List<Role> getRolesList() {
		return rolesList;
	}

	public void setRolesList(List<Role> rolesList) {
		this.rolesList = rolesList;
	}
	
    
}
