package com.model;
import java.io.Serializable;

public class MemberBean implements Serializable
{
    private String id;            // 아이디
    private String password;     // 비밀번호
    private String password2;
    private String name;        // 이름
    private String mail1;        // 이메일 - @ 앞부분
    private String mail2;        // 이메일 - @ 뒷부분
    private String phone;        // 폰번호 첫번째
    private String phone2;       // 폰번호 두번째 
    private String phone3;       // 폰번호 세번째
    
    public MemberBean() {
		super();
	}
    public String getName() {return name;}
    public void setName(String name) {this.name = name;}
    
	public String getId() {return id;}
    public void setId(String id) {this.id = id;}
    
    public String getPassword() {return password;}
    public void setPassword(String password) {this.password = password;}
    
    public String getPassword2() {return password2;}
	public void setPassword2(String password2) {this.password2 = password2;}
        
    public String getMail1() {return mail1;}
    public void setMail1(String mail1) {this.mail1 = mail1;}
    
    public String getMail2() {return mail2;}
    public void setMail2(String mail2) {this.mail2 = mail2;}
    
    public String getPhone() {return phone;}
    public void setPhone(String phone) {this.phone = phone;}
    
	public String getPhone2() {return phone2;}
	public void setPhone2(String phone2) {this.phone2 = phone2;}
	
	public String getPhone3() {return phone3;}
	public void setPhone3(String phone3) {this.phone3 = phone3;}
}

