package com.kpu.professorunion.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kpu.professorunion.model.Corruption;
import com.kpu.professorunion.model.CorruptionComment;
import com.kpu.professorunion.model.Criteria;

@Repository
public class CorruptionDAOImpl {
	
	@Autowired
	SqlSessionTemplate sqlsession;
	
	public void insertCorruption(Corruption corruption) {
		sqlsession.insert("insertcorruption", corruption);
	}
	
	public List<Corruption> selectcorruptionUserList(Criteria criteria) {
		return sqlsession.selectList("selectcorruptionuserlist", criteria);
	}
	
	public int selectcorruptionUserlisttotalCount(Criteria criteria) {
		return sqlsession.selectOne("selectcorruptionuserlisttotalcount", criteria);
	}
	public int selectcorruptiontotalCount(Map map) {
		return sqlsession.selectOne("selectcorruptiontotalcount", map);
	}
	public List<Corruption> selectcorruptionCriteria(Map map) {
		return sqlsession.selectList("selectcorruptioncriteria", map);
	}
	
	public void updateRead(int anum) {
		sqlsession.update("updatecorruptionread", anum);
	}
	public Corruption selectcorruptiondetail(int anum) {
		return sqlsession.selectOne("selectcorruptiondetail", anum);
	}
	public int selectCount() {
		return sqlsession.selectOne("selectcorruptioncount");
	}
	public void deleteCorruption(int num) {
		sqlsession.delete("deletecorruption", num);
	}
	public void updateCorruption(Corruption corruption) {
		sqlsession.update("updatecorruption", corruption);
	}
	
	
	public void insertCorruptionComment(CorruptionComment comment) {
		sqlsession.insert("insertcorruptioncomment", comment);
	}
	public List<CorruptionComment> selectcorruptioncommentList(int anum) {
		return sqlsession.selectList("selectcorruptioncommentlist", anum);
	}
	public void deleteCorruptionComment(Map map) {
		sqlsession.delete("deletecorruptioncomment", map);
	}
	
	public List<Corruption> newcorruptionlist(int count) throws Exception{
		return sqlsession.selectList("newcorruptionlist", count);
	}

}
