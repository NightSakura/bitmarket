package com.market.dao;

import org.apache.ibatis.annotations.Param;

import com.market.entity.Appointment;

public interface AppointmentDao {

	/**
	 * 鎻掑叆棰勭害鍥句功璁板綍
	 * 
	 * @param bookId
	 * @param studentId
	 * @return 鎻掑叆鐨勮鏁�
	 */
	int insertAppointment(@Param("bookId") long bookId, @Param("studentId") long studentId);

	/**
	 * 閫氳繃涓婚敭鏌ヨ棰勭害鍥句功璁板綍锛屽苟涓旀惡甯﹀浘涔﹀疄浣�
	 * 
	 * @param bookId
	 * @param studentId
	 * @return
	 */
	Appointment queryByKeyWithBook(@Param("bookId") long bookId, @Param("studentId") long studentId);

}
