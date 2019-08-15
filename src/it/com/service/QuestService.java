package it.com.service;

import java.util.List;

import it.com.dao.QuestDao;

public class QuestService {
	QuestDao qd ;

	public QuestDao getQd() {
		return qd;
	}

	public void setQd(QuestDao qd) {
		this.qd = qd;
	}
	public List selectWt(){
		return qd.selectWt();
	}
	public List selectWtfl(){
		return qd.selectWtfl();
	}
	/*public int insertWtlr(){
	
	}*/
}
