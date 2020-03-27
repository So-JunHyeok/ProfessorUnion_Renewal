package com.kpu.professorunion.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.kpu.professorunion.model.BranchBoard;

@Repository
public class BranchBoardDAOImpl {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void insertBranchBoard(BranchBoard bb) throws Exception{
		sqlSession.insert("BRANCHBOARD.insertBoard", bb);
	}
	
	public List<BranchBoard> selectBranchBoard(int branchKind, int page, int countList) throws Exception{
		Map map = new HashMap();
		int paging = (page-1) * 10;
		map.put("branchKind", branchKind);
		map.put("paging", paging);
		map.put("countList", countList);
		return sqlSession.selectList("BRANCHBOARD.selectBoard",map);
	}	
	
	public int getcountlist(int branchKind) {
		Map map = new HashMap();
		map.put("branchKind", branchKind);
		return sqlSession.selectOne("BRANCHBOARD.getcountlist", map);
	}
	public int deleteBranchBoard(int branchNum) throws Exception{
		return sqlSession.delete("BRANCHBOARD.deleteBoard", branchNum);
	}
	
	public void updateBranchBoard(BranchBoard bb) throws Exception{
		sqlSession.update("BRANCHBOARD.updateBoard", bb);
	}
	
	public BranchBoard selectBranchBoard(int b) throws Exception{
		return sqlSession.selectOne("BRANCHBOARD.selectbranchboard", b);
	}
}
