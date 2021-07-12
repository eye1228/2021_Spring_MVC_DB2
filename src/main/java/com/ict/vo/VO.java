package com.ict.vo;

import org.springframework.web.multipart.MultipartFile;

public class VO {
	
	private String idx, name, subject, email, pwd, content, file_name ,regdate;//file_name =>DB에 저장
	private MultipartFile f_name;//f_name => 파라미터

	
	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public void setF_name(MultipartFile f_name) {
		this.f_name = f_name;
	}
	
	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pw) {
		this.pwd = pw;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public MultipartFile getF_name() {
		return f_name;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String reg) {
		this.regdate = reg;
	}

}
