package com.intelligentler.shuitu.bean;

public class TblResult {

	private int status;
	private int code;			
	private String msg;
	private Object object;
	//返回表格对象
	private Object rows;
	private Integer total;
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Object getObject() {
		return object;
	}
	public void setObject(Object object) {
		this.object = object;
	}
	public Object getRows() {
		return rows;
	}
	public void setRows(Object rows) {
		this.rows = rows;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public TblResult(int code, String msg, Object object) {
		this.code = code;
		this.msg = msg;
		this.object = object;
	}

	public TblResult() {
	}
	public TblResult(int code, int status, String msg, Object object) {
		this.status = status;
		this.code = code;
		this.msg = msg;
		this.object = object;
	}
}
