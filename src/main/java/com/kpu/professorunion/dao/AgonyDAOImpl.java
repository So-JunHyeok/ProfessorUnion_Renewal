package com.kpu.professorunion.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kpu.professorunion.model.Agony;
import com.kpu.professorunion.model.AgonyComment;
import com.kpu.professorunion.model.Criteria;

@Repository
public class AgonyDAOImpl {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void insetAgony(Agony agony) throws Exception {
		sqlSession.insert("insertagony", agony);
	}
	
	public int selectCount() throws Exception {
		return sqlSession.selectOne("selectcount");
	}
	public Integer selectagonytotalCount(Map map) throws Exception {
		return sqlSession.selectOne("selectagonytotalcount", map);
	}
	public Integer selectagonyUserlisttotalCount(Criteria criteria) throws Exception {
		return sqlSession.selectOne("selectagonyuserlisttotalcount", criteria);
	}
	public List<Agony> selectagonyCriteria(Map map) throws Exception {
		return sqlSession.selectList("selectagonycriteria", map);
	}
	public List<Agony> selectagonyUserList(Criteria criteria) {
		return sqlSession.selectList("selectagonyuserlist", criteria);
	}
	public Agony selectAgonydetail(int a)throws Exception {
		return sqlSession.selectOne("selectagonydetail", a);
	}
	
	public void deleteAgony(int num)throws Exception {
		sqlSession.delete("deleteagony", num);
	}
	
	public void updateAgony(Agony agony)throws Exception {
		sqlSession.update("updateagony", agony);
	}
	public void updateRead(int anum)throws Exception {
		sqlSession.update("updateread", anum);
	}
	
	
	public void insertComment(AgonyComment comment)throws Exception {
		sqlSession.insert("insertcomment", comment);
	}
	public List<AgonyComment> selectcommentList(int a)throws Exception {
		return sqlSession.selectList("selectcommentlist", a);
	}
	public void deleteComment(Map map) throws Exception {
		sqlSession.delete("deletecomment", map);
	}
	
	// 소준혁 코드 추가 함

	public List<Agony> newagonylist(int count) throws Exception{
		return sqlSession.selectList("newagonylist", count);
	}
}
