package com.market.dto;

/**
 * 灏佽json瀵硅薄锛屾墍鏈夎繑鍥炵粨鏋滈兘浣跨敤瀹�
 */
public class Result<T> {

	private boolean success;// 鏄惁鎴愬姛鏍囧織

	private T data;// 鎴愬姛鏃惰繑鍥炵殑鏁版嵁

	private String error;// 閿欒淇℃伅

	public Result() {
	}

	// 鎴愬姛鏃剁殑鏋勯�犲櫒
	public Result(boolean success, T data) {
		this.success = success;
		this.data = data;
	}

	// 閿欒鏃剁殑鏋勯�犲櫒
	public Result(boolean success, String error) {
		this.success = success;
		this.error = error;
	}

	public boolean isSuccess() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	@Override
	public String toString() {
		return "JsonResult [success=" + success + ", data=" + data + ", error=" + error + "]";
	}

}
