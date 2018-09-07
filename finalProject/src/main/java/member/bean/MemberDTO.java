package member.bean;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class MemberDTO {
	private String name;
	private String id;
	private String pwd;
	private String tel1;
	private String tel2;
	private String tel3;
	private String email;
	private String zipcode;
	private String addr1;
	private String addr2;
	private int code; //0:일반회원 1:비회원 9:관리자
	private int lev; //회원등급
	private int point; //마일리지
	private Date logtime;
}
