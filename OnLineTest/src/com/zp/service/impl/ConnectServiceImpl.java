package com.zp.service.impl;

import java.util.List;

import com.zp.dao.ConnectDaoI;
import com.zp.dao.impl.ConnectDaoImpl;
import com.zp.model.Connect;
import com.zp.service.ConnectServiceI;

/**
 * 联系方式业务层实现类 
 * @author blindeagle
 * @version 1.0
 */
public class ConnectServiceImpl implements ConnectServiceI {
	ConnectDaoI connectDaoI = null;

	public List<Connect> queryConnect() {
		connectDaoI = new ConnectDaoImpl();
		List<Connect> connects = connectDaoI.queryConnect();
		return connects;
	}

}
