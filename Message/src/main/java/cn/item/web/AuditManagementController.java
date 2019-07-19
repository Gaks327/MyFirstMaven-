package cn.item.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.item.bean.User;
import cn.item.dao.SampleInfoMapper;
import cn.item.service.AuditManagementService;

@Controller
public class AuditManagementController {

	@Autowired
	private AuditManagementService AuditManagementService;
	
	/**
	 * 查所有分页
	 * @return
	 */
	@RequestMapping("all")
	@ResponseBody
	public Map<String, Object> seletAll(Integer pageNum) {
		if (pageNum == null || pageNum == 0) {
			pageNum = 1;
		}
		int pageSize = 7;
		PageHelper.startPage(pageNum, pageSize);
		List<User> list = AuditManagementService.selectAll();
		PageInfo<User> page = new PageInfo<User>(list);
		Map<String, Object> m = new HashMap<>();
		m.put("list", list);
		m.put("pageNum", page.getPageNum());
		m.put("pageSize", page.getPageSize());
		return m;
	}
	
	
	/**
	 * 	审核
	 * @return
	 */
	@RequestMapping("selectById")
	public String selectByPrimaryKey(Integer id , ModelMap map) {
		User user = AuditManagementService.selectByPrimaryKey(id);
		map.put("user", user);
		return "customerExamine";
	}
	@RequestMapping("audit")
	public String updateAudit(Integer checkStatus,Integer id) {
		AuditManagementService.updateAudit(checkStatus,id);
		return "customerList";
	}
	
	
	/**
	 * 	修改
	 * @return
	 */
	@RequestMapping("selectById2")
	public String selectByPrimaryKey2(Integer id , ModelMap map) {
		User user = AuditManagementService.selectByPrimaryKey(id);
		map.put("user", user);
		return "customerModify";
	}
	@RequestMapping("updateById")
	public String updateByPrimaryKeySelective(User user,Integer id) {
		user.setId(id);
		AuditManagementService.updateByPrimaryKeySelective(user);
		return "customerList";
	}
	
	
	/**
	 * 	删除
	 * @return
	 */
	@RequestMapping("deleteById")
	public String deleteByPrimaryKey(Integer id) {
		AuditManagementService.deleteByPrimaryKey(id);
		return "customerList";
	}

	/**
	 * 模糊查
	 * @return
	 */
	 @RequestMapping("fuzzyselect")
	 @ResponseBody
	public Map<String, Object> fuzzyselect(Integer pageNum, String username, String company, Integer checkStatus) {
		if (pageNum == null || pageNum == 0) {
			pageNum = 1;
		}
		int pageSize = 5;
		PageHelper.startPage(pageNum, pageSize);
		List<User> list = AuditManagementService.fuzzyselect(username, company, checkStatus);
		PageInfo<User> page = new PageInfo<User>(list);
		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("pageNum", page.getPageNum());
		map.put("pageSize", page.getPageSize());
		return map;
	}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
