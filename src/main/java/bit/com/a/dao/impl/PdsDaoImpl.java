package bit.com.a.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bit.com.a.dao.PdsDao;
import bit.com.a.dto.PdsDto;


@Repository
public class PdsDaoImpl implements PdsDao {
	
	@Autowired
	SqlSession session;
	
	String ns="Pds.";

	@Override
	public List<PdsDto> getPdsList() {
		return session.selectList(ns+ "getPdsList");
	}
	
}
