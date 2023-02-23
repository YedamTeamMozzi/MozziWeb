package com.yedam.member.sevice;

import org.apache.ibatis.session.SqlSession;

import com.yedam.common.DataSource;
import com.yedam.member.mapper.MemberMapper;
import com.yedam.member.vo.MemberVO;

public class MemberServiceImpl implements MemberService {

	SqlSession session = DataSource.getInstance().openSession(true); // true : 자동커밋
	
	// session.getMapper(인터페이스타입.class); 를 통해 메소드를 호출할수있다
	MemberMapper mapper = session.getMapper(MemberMapper.class); 
	
	
	@Override
	public int addMember(MemberVO member) {
		return mapper.insertMember(member);
	}

	
	
}
