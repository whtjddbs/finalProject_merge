package member.dao;

import java.util.Map;

import member.bean.MemberDTO;

public interface MemberDAO {

	public MemberDTO getMember(String id);
	public MemberDTO login(Map<String, String> map);
	public void write(MemberDTO memberDTO);
	public MemberDTO memberList(String id);
	public void modify(MemberDTO memberDTO);

}
