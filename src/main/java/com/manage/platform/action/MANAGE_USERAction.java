package com.manage.platform.action;

import java.awt.event.ActionEvent;
import java.beans.PropertyChangeListener;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.Action;

import org.json.JSONArray;

public class MANAGE_USERAction /* extends ActionBase */ implements Action {

	@Override
	public void actionPerformed(ActionEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addPropertyChangeListener(PropertyChangeListener arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Object getValue(String arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void putValue(String arg0, Object arg1) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removePropertyChangeListener(PropertyChangeListener arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setEnabled(boolean arg0) {
		// TODO Auto-generated method stub
		
	}

//	public IMANAGE_USERService getImanage_userservice() {
//		return imanage_userservice;
//	}
//	public void setImanage_userservice(IMANAGE_USERService imanage_userservice) {
//		this.imanage_userservice = imanage_userservice;
//	}
//	public IMANAGE_AREAService getImanage_areaservice() {
//		return imanage_areaservice;
//	}
//	public void setImanage_areaservice(IMANAGE_AREAService imanage_areaservice) {
//		this.imanage_areaservice = imanage_areaservice;
//	}
//	private IMANAGE_USERService imanage_userservice;
//	private IMANAGE_AREAService imanage_areaservice;
//	
//	// 登录
//	public String login() {
//		// 传送的参数
//		if(null != condition && condition.length()>0) {
//			try {
//				condition = java.net.URLDecoder.decode(condition, "UTF-8");
//			}catch(UnsupportedEncodingException e) {
//				e.printStackTrace();
//			}
//		}
//		
//		// 查询数据库
//		logger.info(condition);
//		List<Map<String, Objetc>> userList=imanage_userservice.findByCondition(condition, 0, 1);
//		JSONArray jsonuserlist = JsonUtil.fromObject(userlist);
//		dataMap.put("rows", jsonuserlist);
//		dataMap.put("total", jsonuserlist.size());
//		logger.info(dataMap.toString());
//		
//		// 写入session
//		if(jsonuserlist.size()>0) {
//			String userdatajsonstr = jsonuserlist.get(0).toString();
//			MANAGE_USEREntity userdata = 
//					(MANAGE_USEREntity) JsonUtil.toBean(userdatajsonstr, MANAGE_USEREntity.class);
//			HttpServletRequest request = ServletActionContext.getRequest();
//			HttpSession session = (request).getSession(true);
//			session.setAttribute("user", userdata);
//			
//			// 查找地域信息并写入session
//			condition = "{'ICODE':'"+userdata.getAREAICODE()+"'}";
//			List<Map<String, Objetc>> arealist = imanage_areaservice.findByCondition(condition, 0, 1);
//			JSONArray jsonarealist = JsonUtil.fromObject(arealist);
//			if(jsonarealist.size()>0) {
//				String areadatajsonstr = jsonarealist.get(0).toString();
//				MANAGE_AREAEntity areadata = (MANAGE_AREAEntity) JsonUtil.toBean(areadatajsonstr, MANAGE_AREAEntity.class);
//				session.setAttribute("area", areadata);
//			}
//		}
//	}
}
