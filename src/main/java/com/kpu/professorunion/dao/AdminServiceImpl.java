package com.kpu.professorunion.dao;

import java.util.List;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kpu.professorunion.model.AdminConfig;
import com.kpu.professorunion.model.BoardLevel;
import com.kpu.professorunion.model.MainImgUplod;
import com.kpu.professorunion.model.Member;
import com.kpu.professorunion.model.VisitrecordBean;

@Service
public class AdminServiceImpl implements AdminService {

	
	@Autowired
	private AdminDAOImpl Adao;
	
	@Override
	public void MainImgUpdate(MainImgUplod mu) throws Exception {
		Adao.MainImgUpdate(mu);
			
		}
	
	public String getMainImgFile(String cf_path)throws Exception{
		return Adao.getMainImgFile(cf_path);
	}
	
	public void setConfigContent(AdminConfig model) throws Exception{
		Adao.setConfigContent(model);
		
	}
	
	public AdminConfig getConfigContemt() throws Exception{
		return Adao.getConfigContemt();
	}
	
	public List<Member> getManagementMemberlist(Map map)throws Exception{
		return Adao.getManagementMemberlist(map);
	}
	
	public int getMembercount()throws Exception{
		return Adao.getMembercount();
	}
	
	public void setMemberManagementModify(Member member) throws Exception{
		Adao.setMemberManagementModify(member);
	}
	
	public void MemberManagementDel(Member member) throws Exception{
		Adao.MemberManagementDel(member);
	}
	public void setVisitInfo(Map map) throws Exception{
		Adao.setVisitInfo(map);
	}
	public List<VisitrecordBean> getVisitInfo(int StarRow, int PageSize) throws Exception{
	   return Adao.getVisitInfo(StarRow, PageSize);
	}
	
	public String getVisitInfoall(String vi_ip, String vi_date) throws Exception{
		return Adao.getVisitInfoall(vi_ip, vi_date);
	}
	
	public int visitcount() throws Exception{
		return Adao.visitcount();
		
	}
	
	public void MemberManagementOneDel(String mb_id) throws Exception{
		Adao.MemberManagementOneDel(mb_id);
	}
	
	public void UpeateBoardLevel(BoardLevel BoardLevel) throws Exception{
		Adao.UpeateBoardLevel(BoardLevel);
	}
	
	public BoardLevel getBoatdLevel(String bo_table)throws Exception{
		return Adao.getBoatdLevel(bo_table);
	}
	
	public List<BoardLevel>getBoardLevelList(int StarRow, int PageSize)throws Exception{
		return Adao.getBoardLevelList(StarRow, PageSize);
	}
	
	}


