package com.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "complaint")
public class ComplaintVO {
	
	@Id
	@Column(name = "complaintId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int complaintId;
	
	@Column(name = "complaintTitle")
	private String complaintTitle;
	
	@Column(name = "complaintDescription")
	private String complaintDescription;
	
	@Column(name = "complaintStatus")
	private String complaintStatus;
	
	@Column(name = "status")
	private String status;
	
	@Column(name = "complaintDate")
	private String complaintDate;
	
	@Column(name = "complaintTime")
	private String complaintTime;
	
	@Column(name = "replyDescription")
	private String replyDescription;
	
	@Column(name = "replyDate")
	private String replyDate;
	
	@ManyToOne
	private LoginVO fromId;
	
	@ManyToOne
	private LoginVO toId;
	
	public String getComplaintTitle() {
		return complaintTitle;
	}

	public void setComplaintTitle(String complaintTitle) {
		this.complaintTitle = complaintTitle;
	}

	public String getComplaintDescription() {
		return complaintDescription;
	}

	public void setComplaintDescription(String complaintDescription) {
		this.complaintDescription = complaintDescription;
	}

	public String getComplaintStatus() {
		return complaintStatus;
	}

	public void setComplaintStatus(String complaintStatus) {
		this.complaintStatus = complaintStatus;
	}

	public String getComplaintDate() {
		return complaintDate;
	}

	public void setComplaintDate(String complaintDate) {
		this.complaintDate = complaintDate;
	}

	public String getComplaintTime() {
		return complaintTime;
	}

	public void setComplaintTime(String compalintTime) {
		this.complaintTime = compalintTime;
	}

	public String getReplyDescription() {
		return replyDescription;
	}

	public void setReplyDescription(String replyDescription) {
		this.replyDescription = replyDescription;
	}

	public String getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(String replyDate) {
		this.replyDate = replyDate;
	}

	public LoginVO getFromId() {
		return fromId;
	}

	public void setFromId(LoginVO fromId) {
		this.fromId = fromId;
	}

	public LoginVO getToId() {
		return toId;
	}

	public void setToId(LoginVO toId) {
		this.toId = toId;
	}

	public int getComplaintId() {
		return complaintId;
	}
	
	public void setComplaintId(int complaintId) {
		this.complaintId = complaintId;
	}
	
	public String getComplaint() {
		return complaintDescription;
	}
	
	public void setComplaint(String complaintDescription) {
		this.complaintDescription = complaintDescription;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

}
