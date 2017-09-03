package com.market.dto;

import com.market.entity.Appointment;
import com.market.enums.AppointStateEnum;

/**
 * 灏佽棰勭害鎵ц鍚庣粨鏋�
 */
public class AppointExecution {

	// 鍥句功ID
	private long bookId;

	// 绉掓潃棰勭害缁撴灉鐘舵��
	private int state;

	// 鐘舵�佹爣璇�
	private String stateInfo;

	// 棰勭害鎴愬姛瀵硅薄
	private Appointment appointment;

	public AppointExecution() {
	}

	// 棰勭害澶辫触鐨勬瀯閫犲櫒
	public AppointExecution(long bookId, AppointStateEnum stateEnum) {
		this.bookId = bookId;
		this.state = stateEnum.getState();
		this.stateInfo = stateEnum.getStateInfo();
	}

	// 棰勭害鎴愬姛鐨勬瀯閫犲櫒
	public AppointExecution(long bookId, AppointStateEnum stateEnum, Appointment appointment) {
		this.bookId = bookId;
		this.state = stateEnum.getState();
		this.stateInfo = stateEnum.getStateInfo();
		this.appointment = appointment;
	}

	public long getBookId() {
		return bookId;
	}

	public void setBookId(long bookId) {
		this.bookId = bookId;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getStateInfo() {
		return stateInfo;
	}

	public void setStateInfo(String stateInfo) {
		this.stateInfo = stateInfo;
	}

	public Appointment getAppointment() {
		return appointment;
	}

	public void setAppointment(Appointment appointment) {
		this.appointment = appointment;
	}

	@Override
	public String toString() {
		return "AppointExecution [bookId=" + bookId + ", state=" + state + ", stateInfo=" + stateInfo + ", appointment="
				+ appointment + "]";
	}

}
