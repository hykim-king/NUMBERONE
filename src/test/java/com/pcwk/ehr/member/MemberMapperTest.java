package com.pcwk.ehr.member;

import static org.junit.Assert.*;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import java.sql.SQLException;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.After;
import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Ignore;
import org.junit.runners.MethodSorters;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.cmn.Search;
import com.pcwk.ehr.member.domain.Member;
import com.pcwk.ehr.mapper.MemberMapper;

@RunWith(SpringRunner.class)
@ContextConfiguration(locations = {
    "file:src/main/webapp/WEB-INF/spring/root-context.xml",
    "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})

@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class MemberMapperTest implements PLog {

    @Autowired
     ApplicationContext context;

    @Autowired
     MemberMapper memberMapper;

     Member member1;

     Member login01;
     Search search;

    @Before
    public void setUp() throws Exception {
        System.out.println("┌─────────────────────────────────────────┐");
        System.out.println("│ setUp()                                 │");
        System.out.println("└─────────────────────────────────────────┘");

        // 데이터 삭제
        //memberMapper.deleteAll();

        member1 = new Member("tt", 1, "tt", "tt", "tt", 'N',"tt@example.com");
        
        login01 =new Member("f", "252f10c83610ebca1a059c0bae8255eba2f95be4d1d7bcfa89d7248a82d9f111");
        
        search = new Search();
    }
    
    
    @Test
    public void isCorrectIdAndEmailTest() throws SQLException{
    	Member member = new Member();
    	member.setEmail("dltjddus88@naver.com");
    	member.setMemberId("lukelee");
    	int flag =memberMapper.isCorrectIdAndEmail(member);
    	log.debug(flag);
    }
    
    @Ignore
    @Test
     public void idDuplicateCheck() throws SQLException {
		System.out.println("[̲̅i][̲̅d][̲̅D][̲̅u][̲̅p][̲̅l][̲̅i][̲̅c][̲̅a][̲̅t][̲̅e][̲̅C][̲̅h][̲̅e][̲̅c][̲̅k]");

        
        //데이터 확인
        int count = memberMapper.getCount();
        assertEquals(0, count);

        //등록
        int flag = memberMapper.doSave(member1);
        assertEquals(1, flag);
        assertEquals(1, memberMapper.getCount());

        //단건 조회 및 비교
        Member outVO = memberMapper.doSelectOne(member1);
        assertNotNull(outVO);
        assertMembersEqual(member1, outVO);

        //중복 체크
        flag = memberMapper.idDuplicateCheck(member1.getMemberId()); 
        assertEquals(1, flag);

        //존재하지 않는 ID 체크
        flag = memberMapper.idDuplicateCheck("qt"); // 존재하지 않는 ID를 체크
        assertEquals(0, flag);
        
        
        
    }

    @Test
    @Ignore
    public void nicknameDuplicateCheck() throws SQLException {
		System.out.println("[̲̅n][̲̅i][̲̅c][̲̅k][̲̅n][̲̅a][̲̅m][̲̅e][̲̅D][̲̅u][̲̅p][̲̅l][̲̅i][̲̅c][̲̅a][̲̅t][̲̅e][̲̅C][̲̅h][̲̅e][̲̅c][̲̅k]");

        // 데이터 확인
        int count = memberMapper.getCount();
        assertEquals(0, count);

        // 등록
        int flag = memberMapper.doSave(member1);
        assertEquals(1, flag);
        assertEquals(1, memberMapper.getCount());

        // 단건 조회 및 비교
        Member outVO = memberMapper.doSelectOne(member1);
        assertNotNull(outVO);
        assertMembersEqual(member1, outVO);

        // 닉네임 중복 체크
        flag = memberMapper.nicknameDuplicateCheck(member1.getNickname());
        assertEquals(1, flag);

        // 존재하지 않는 닉네임 체크
        flag = memberMapper.nicknameDuplicateCheck("nonExistentNickname"); // 존재하지 않는 닉네임을 체크
        assertEquals(0, flag);
    }

    
    @Ignore
	@Test
	public void doSave() throws SQLException {
		System.out.println("[̲̅d][̲̅o][̲̅s][̲̅a][̲̅v][̲̅e]");
        Member member1 = new Member("user2", 1, "password2", "UserTwo", "nickname2", 'N',"email@example.com");

        
        // 아이디 중복 체크
        if (memberMapper.idDuplicateCheck(member1.getMemberId()) > 0) {
            throw new SQLException("ID가 중복되었습니다.");
        }

        // 닉네임 중복 체크
        if (memberMapper.nicknameDuplicateCheck(member1.getNickname()) > 0) {
            throw new SQLException("닉네임이 중복되었습니다.");
        }

        // 중복이 없으면 저장
        int result = memberMapper.doSave(member1);
        assertEquals(1, result);
        
        // 데이터베이스에서 데이터 조회 및 검증
        //Member savedMember = memberMapper.doSelectOne(savedMember);
        //assertNotNull(savedMember);
        //assertMembersEqual(member1, savedMember);
    }
	

    @Ignore
	@Test
	public void locCodeUpdate() throws SQLException {
	    System.out.println("[̲̅l][̲̅o][̲̅c][̲̅C][̲̅o][̲̅d][̲̅e][̲̅U][̲̅p][̲̅d][̲̅a][̲̅t][̲̅e]");

	    // 데이터 등록
		/*
		 * Member member = new Member("Update1", 1, "Update", "Update", "Update",
		 * 'N',"Update@example.com"); int result = memberMapper.doSave(member);
		 * assertEquals(1, result);
		 */

	    // locCode 업데이트
	    long newLocCode = 1036549498;
	    Member updatedMember = new Member("Update1", newLocCode, "Update", "Update", "Update", 'N',"Update@example.com");
	    memberMapper.locCodeUpdate(updatedMember);

	    // 데이터 조회 및 검증
	    Member retrievedMember = memberMapper.doSelectOne(new Member("Update1", newLocCode, "Update", "Update", "Update", 'N',"Update@example.com"));
	    assertNotNull(retrievedMember);
	    assertEquals(newLocCode, retrievedMember.getLocCode());
	}
	
	
	
    
	@Test
	@Ignore
	public void login() throws Exception {

	    System.out.println("[̲̅l][̲̅o][̲̅g][̲̅i][̲̅n]");


	  
	    Member loginVO = memberMapper.login(login01);
	    log.debug(loginVO);
	    assertMembersEqual(loginVO, login01);
	}
	
	@Ignore
	@Test
	public void doSelectOne() throws SQLException {
	    System.out.println("[̲̅t][̲̅e][̲̅s][̲̅t][̲̅D][̲̅o][̲̅S][̲̅e][̲̅l][̲̅e][̲̅c][̲̅t][̲̅O][̲̅n]");
	    
	    // 1. 데이터 준비
	    Member testMember = new Member("aa", 1212121, "passwordTest", "User Test", "nicknameTest", 'N', "test@example.com");
	   
	    // 3. 데이터 조회
	    Member retrievedMember = memberMapper.doSelectOne(testMember.getMemberId());
	    assertNotNull(retrievedMember);
	    
	    log.debug(retrievedMember);
	    
	    // (비밀번호를 제외한 나머지 필드 검증)
	    // assertEquals(testMember.getPassword(), retrievedMember.getPassword()); // 비밀번호는 보통 null로 설정되므로, 필요에 따라 조정
	}
	
	
	

	
    private void assertMembersEqual(Member expected, Member actual) {
        if (expected == null) {
            assertNull(actual);
        } else {
            assertNotNull(actual);
            assertEquals(expected.getMemberId(), actual.getMemberId());
           
            assertEquals(expected.getPassword(), actual.getPassword());
          
        }
    }

    
    
    @After
    public void tearDown() throws Exception {
    	System.out.println("[̲̅t][̲̅e][̲̅a][̲̅r][̲̅D][̲̅o][̲̅w][̲̅n]");
    }

    @Test
    public void beans() {
    	System.out.println("[̲̅B][̲̅e][̲̅a][̲̅n][̲̅s]");
        System.out.println("context: " + context);
        System.out.println("memberMapper: " + memberMapper);

        assertNotNull(context);
        assertNotNull(memberMapper);
    }
}