package it.com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class QuestDao {
	SqlSessionFactory sqlsessionfactory;


	public SqlSessionFactory getSqlsessionfactory() {
		return sqlsessionfactory;
	}


	public void setSqlsessionfactory(SqlSessionFactory sqlsessionfactory) {
		this.sqlsessionfactory = sqlsessionfactory;
	}


	public List selectWt(){
		SqlSession session = sqlsessionfactory.openSession();
		List list = session.selectList("selectWt");
		session.clearCache();
		session.close();
		return list;
	}
	
	public List selectWtfl(){
		SqlSession session = sqlsessionfactory.openSession();
		List list = session.selectList("selectWtfl");
		session.clearCache();
		session.close();
		return list;
	}
	
	
}
