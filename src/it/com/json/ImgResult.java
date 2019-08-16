package it.com.json;


import java.util.Map;

/**
 * ͼƬ�ϴ����鷵�ظ�ʽ ����Ȼ���Բ���ô����
 * { 
 * code": 0 , 
 * msg": "" , 
 * data": { "
 * src":"http://cdn.layui.com/123.jpg" } }
 * 
 * @author liuxuquan
 * @des ������Ҫ���ص����ݸ�ʽ������pojo
 *
 */
public class ImgResult {
	
	//0 ��ʾ�ɹ� 1��ʾʧ��
	private Integer code;
	//��Ϣ
	private String msg;
	//url
	private Map<String, String> data;
	
	private Integer totalCount=0;
	private Integer successCount=0;
	private Integer failCount=0;
	
	public ImgResult() {
	}

	public ImgResult(Integer code, String msg, Map<String, String> data) {
		this.code = code;
		this.msg = msg;
		this.data = data;
	}

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Map<String, String> getData() {
		return data;
	}

	public void setData(Map<String, String> data) {
		this.data = data;
	}

	public Integer getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}

	public Integer getSuccessCount() {
		return successCount;
	}

	public void setSuccessCount(Integer successCount) {
		this.successCount = successCount;
	}

	public Integer getFailCount() {
		return failCount;
	}

	public void setFailCount(Integer failCount) {
		this.failCount = failCount;
	}

}
