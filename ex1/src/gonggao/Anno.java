package gonggao;

import java.sql.Date;
import java.sql.Timestamp;

public class Anno {
	int ann_id;
	String ann_title;
	String message;
	Date ann_date;
	int teacher_users_id;
	
	public Anno(int ann_id,String ann_title, String message,Date ann_date,int teacher_users_id) {
		super();
		this.ann_id = ann_id;
		this.ann_title = ann_title;
		this.message = message;
		this.ann_date =ann_date;
		this.teacher_users_id = teacher_users_id;
	}
	public Anno(String ann_title, String message) {
		super();
		this.ann_title = ann_title;
		this.message = message;
	}
	public int getAnn_id() {
		return ann_id;
	}
	public void setAnn_id(int ann_id) {
		this.ann_id = ann_id;
	}
	public String getAnn_title() {
		return ann_title;
	}
	public void setAnn_title(String ann_title) {
		this.ann_title = ann_title;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getAnn_time() {
		return ann_date;
	}
	public void setAnn_time(Date ann_time) {
		this.ann_date = ann_time;
	}
	public int getTeacher_users_id() {
		return teacher_users_id;
	}
	public void setTeacher_users_id(int teacher_users_id) {
		this.teacher_users_id = teacher_users_id;
	}
}
