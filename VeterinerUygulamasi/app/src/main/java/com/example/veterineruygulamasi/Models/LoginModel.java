package com.example.veterineruygulamasi.Models;

public class LoginModel{
	private boolean tf;
	private String mailadres;
	private String pass;
	private String id;
	private String text;
	private String userName;

	public void setTf(boolean tf){
		this.tf = tf;
	}

	public boolean isTf(){
		return tf;
	}

	public void setMailadres(String mailadres){
		this.mailadres = mailadres;
	}

	public String getMailadres(){
		return mailadres;
	}

	public void setPass(String pass){
		this.pass = pass;
	}

	public String getPass(){
		return pass;
	}

	public void setId(String id){
		this.id = id;
	}

	public String getId(){
		return id;
	}

	public void setText(String text){
		this.text = text;
	}

	public String getText(){
		return text;
	}

	public void setUserName(String userName){
		this.userName = userName;
	}

	public String getUserName(){
		return userName;
	}

	@Override
 	public String toString(){
		return 
			"LoginModel{" + 
			"tf = '" + tf + '\'' + 
			",mailadres = '" + mailadres + '\'' + 
			",pass = '" + pass + '\'' + 
			",id = '" + id + '\'' + 
			",text = '" + text + '\'' + 
			",userName = '" + userName + '\'' + 
			"}";
		}
}
