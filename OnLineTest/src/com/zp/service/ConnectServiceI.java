package com.zp.service;

import java.util.List;

import com.zp.model.Connect;

/**
 * 联系方式业务层抽象
 * @author blindeagle
 * @version 1.0
 */
public interface ConnectServiceI {

	/**
	 * 查询服务端联系方式
	 * @author blindeagle
	 * @return	联系方式的集合
	 */
	public List<Connect> queryConnect();
	
}
