package kr.co.drcrown.dto;

import java.util.Date;

public class NoticeVO {
	
	private int notice_no;          			// 공지번호
	private String notice_title = "";    		// 제목
	private String notice_content = "";			// 내용
	private Date notice_regdate = new Date();   // 작성일자
	private int notice_count=0;	   				// 조회수
	private String notice_category="";	   		// 카테고리
	private Date notice_update = new Date();  	// 수정날짜
	private String notice_writer;	   			// 작성자
	private String emp_id;						// 사원번호
	
	
	public int getNotice_no() {
		return notice_no;
	}
	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public Date getNotice_regdate() {
		return notice_regdate;
	}
	public void setNotice_regdate(Date notice_regdate) {
		this.notice_regdate = notice_regdate;
	}
	public int getNotice_count() {
		return notice_count;
	}
	public void setNotice_count(int notice_count) {
		this.notice_count = notice_count;
	}
	public String getNotice_category() {
		return notice_category;
	}
	public void setNotice_category(String notice_category) {
		this.notice_category = notice_category;
	}
	public Date getNotice_update() {
		return notice_update;
	}
	public void setNotice_update(Date notice_update) {
		this.notice_update = notice_update;
	}
	public String getNotice_writer() {
		return notice_writer;
	}
	public void setNotice_writer(String notice_writer) {
		this.notice_writer = notice_writer;
	}
	public String getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}	   					
}
	