package hostal.controller;

import hostal.manager.UserManager;
import hostal.model.UserModel;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.inject.Inject;
import javax.inject.Named;

@Named
public class UserController {

	@Inject
	public UserManager userManager;

	private UserModel model = new UserModel();

	public void setUserManager(UserManager userManager) {
		this.userManager = userManager;
	}

	public UserModel getModel() {
		return model;
	}

	public void setModel(UserModel model) {
		this.model = model;
	}

	/**
	 * @return a String
	 */
	public String register() {
		try {
			if (!model.getPwd().equals(model.getPwdConfirm())) {
				throw new Exception("Passwords do not match!!");
			}
			userManager.addUser(model);
		} catch (Exception e) {
			FacesContext.getCurrentInstance().addMessage(
					null,
					new FacesMessage(FacesMessage.SEVERITY_ERROR,
							"Registration Failure, " + e.getMessage(), ""));
			return null;
		}
		FacesContext.getCurrentInstance().addMessage(
				null,
				new FacesMessage(FacesMessage.SEVERITY_INFO,
						"Registration Success!", ""));
		model.reset();
		return "login";
	}

}
