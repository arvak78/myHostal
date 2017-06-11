package com.hostal.beans;

import com.hostal.service.SessionUtils;
import com.hostal.service.UserService;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.SessionScoped;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;
import java.io.Serializable;

@ManagedBean(name = "loginView")
@ViewScoped
@SessionScoped
public class LoginView implements Serializable {

	private static final long serialVersionUID = 1094801825228386363L;

    private String pwd;
	private String msg;
	private String user;

	@ManagedProperty("#{userService}")
	private UserService userService;

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	//validate login
	public String validateUsernamePassword() {
		boolean valid = userService.validar(user, pwd);
		if (valid) {
			HttpSession session = SessionUtils.getSession();
			session.setAttribute("username", user);
			return "blog";
		} else {
			FacesContext.getCurrentInstance().addMessage(
					null,
					new FacesMessage(FacesMessage.SEVERITY_ERROR,
							"Incorrect Username and Passowrd",
							"Please enter correct username and Password"));
			return "login";
		}
	}


	//logout event, invalidate session
	public String logout() {
		HttpSession session = SessionUtils.getSession();
		session.invalidate();
		return "login";
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}


}