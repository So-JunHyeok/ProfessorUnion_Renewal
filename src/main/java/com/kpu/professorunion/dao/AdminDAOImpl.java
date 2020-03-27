package com.kpu.professorunion.dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kpu.professorunion.model.AdminConfig;
import com.kpu.professorunion.model.BoardLevel;
import com.kpu.professorunion.model.MainImgUplod;
import com.kpu.professorunion.model.Member;
import com.kpu.professorunion.model.VisitrecordBean;

@Repository
public class AdminDAOImpl {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void MainImgUpdate(MainImgUplod mu)throws Exception {
		sqlSession.update("bannerupload",mu);
	}
	
	public String getMainImgFile(String cf_path)throws Exception{
		return sqlSession.selectOne("mainViewImgapply",cf_path);
	}
	
	public void setConfigContent(AdminConfig model) throws Exception{
		sqlSession.update("configupdate", model);
	}
	
	public AdminConfig getConfigContemt() throws Exception{
		return sqlSession.selectOne("configapply");
	}
	
	public List<Member> getManagementMemberlist(Map map)throws Exception{
		return sqlSession.selectList("memberlist", map);
	}
	
	public int getMembercount()throws Exception{
		return sqlSession.selectOne("membercount");
	}
	
	public void setMemberManagementModify(Member member) throws Exception{
		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yyyyMMdd", Locale.KOREA );
		Date currentTime = new Date ();
		String Mb_intercept_date = member.getMb_intercept_date();
		if(Mb_intercept_date.equals('1')) {
		member.setMb_intercept_date(mSimpleDateFormat.format(currentTime));
		}
		sqlSession.update("adminmembermodify", member);
	}
	
	public void MemberManagementDel(Member member) throws Exception{
		sqlSession.delete("admindelete", member);
	}
	
	public void setVisitInfo(Map map) throws Exception{
		sqlSession.insert("visitrecord", map);
	}
	
	public List<VisitrecordBean> getVisitInfo(int StarRow, int PageSize) throws Exception{
		Map map = new HashMap();
		map.put("StarRow", StarRow);
		map.put("PageSize", PageSize);
		
		return sqlSession.selectList("visitselect", map);
	}
	
	public String getVisitInfoall(String vi_ip, String vi_date) throws Exception{
		try {
			Map map = new HashMap();
			map.put("vi_ip", vi_ip);
			map.put("vi_date", vi_date);
			return sqlSession.selectOne("visitall", map);
		
		}
		catch(Exception e){
			return "";
		}
	}
	
	public int visitcount() throws Exception{
		
		return sqlSession.selectOne("visitcount");
	}
	
	
	public void MemberManagementOneDel(String mb_id) throws Exception {
		
		sqlSession.delete("admindOneelete", mb_id);
				
	}
	
	public void UpeateBoardLevel(BoardLevel BoardLevel) throws Exception{
		sqlSession.update("setboardlevel", BoardLevel);
	}
	
	public BoardLevel getBoatdLevel(String bo_table)throws Exception{
		return sqlSession.selectOne("getboardlevel", bo_table);
	}
	
	public List<BoardLevel>getBoardLevelList(int StarRow, int PageSize )throws Exception{
		
		Map map = new HashMap();
		map.put("StarRow", StarRow);
		map.put("PageSize", PageSize);
		
		return sqlSession.selectList("getboardlevelList", map);
	}
	
}