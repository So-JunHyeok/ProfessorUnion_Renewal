package com.kpu.professorunion.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kpu.professorunion.model.Agony;
import com.kpu.professorunion.model.AgonyComment;
import com.kpu.professorunion.model.BoardLevel;
import com.kpu.professorunion.model.Criteria;

@Service
public class AgonyServiceImpl implements AgonyService{
	
	@Autowired
	private AgonyDAOImpl agonydao;

	@Override
	public void insertAgony(Agony agony) throws Exception {
		agonydao.insetAgony(agony);
	}

	@Override
	public int selectCount() throws Exception {
		return agonydao.selectCount();
	}
	
	@Override
	public Integer selectagonytotalCount(Map map) throws Exception {
		return agonydao.selectagonytotalCount(map);
	}
	
	@Override
	public int selectagonyUserlisttotalCount(Criteria criteria) throws Exception {
		return agonydao.selectagonyUserlisttotalCount(criteria);
	}
	
	@Override
	public List<Agony> selectagonyCriteria(Map map) throws Exception {
		return agonydao.selectagonyCriteria(map);
	}
	@Override
	public List<Agony> selectagonyUserList(Criteria criteria) throws Exception {
		return agonydao.selectagonyUserList(criteria);
	}
	@Override
	public Agony selectAgonydetail(int a) throws Exception {
		return agonydao.selectAgonydetail(a);
	}
	
	@Override
	public void deleteAgony(int num) throws Exception {
		agonydao.deleteAgony(num);
	}
	
	@Override
	public void updateAgony(Agony agony) throws Exception {
		agonydao.updateAgony(agony);
	}
	@Override
	public void updateRead(int anum) throws Exception {
		agonydao.updateRead(anum);
	}
	
	@Override
	public void insertComment(AgonyComment comment) throws Exception {
		agonydao.insertComment(comment);
	}
	
	@Override
	public List<AgonyComment> selectcommentList(int a)throws Exception {
		return agonydao.selectcommentList(a);
	}
	
	@Override
	public void deleteComment(Map map) throws Exception {
		agonydao.deleteComment(map);
	}
	@Override
	public List<Agony> newagonylist(int count) throws Exception{
		return agonydao.newagonylist(count);
	}
}
