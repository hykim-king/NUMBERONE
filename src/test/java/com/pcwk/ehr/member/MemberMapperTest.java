package com.pcwk.ehr.member;

import static org.junit.Assert.*;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.sql.SQLException;
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
import com.pcwk.ehr.login.domain.Login;
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
     Member member2;
     Member member3;
     Login login01;
     Search search;

    @Before
    public void setUp() throws Exception {
        System.out.println("┌─────────────────────────────────────────┐");
        System.out.println("│ setUp()                                 │");
        System.out.println("└─────────────────────────────────────────┘");

        // 데이터 삭제
        memberMapper.deleteAll();

        member1 = new Member("user1", 1, "password1", "User One", "nickname1", 'N');
        //member2 = new Member("user2", 2, "password2", "User Two", "nickname2", 'Y');
        //member3 = new Member("user3", 3, "password3", "User Three", "nickname3", 'N');
        login01 = new Login("user1", "password1");
        
        search = new Search();
    }

    @Test
     public void idDuplicateCheck() throws SQLException {
		System.out.println("[̲̅i][̲̅d][̲̅D][̲̅u][̲̅p][̲̅l][̲̅i][̲̅c][̲̅a][̲̅t][̲̅e][̲̅C][̲̅h][̲̅e][̲̅c][̲̅k]");

        
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
        flag = memberMapper.idDuplicateCheck("nonExistentID"); // 존재하지 않는 ID를 체크
        assertEquals(0, flag);
    }

    @Test
    public void nicknameDuplicateCheck() throws SQLException {
		System.out.println("[̲̅n][̲̅i][̲̅c][̲̅k][̲̅n][̲̅a][̲̅m][̲̅e][̲̅D][̲̅u][̲̅p][̲̅l][̲̅i][̲̅c][̲̅a][̲̅t][̲̅e][̲̅C][̲̅h][̲̅e][̲̅c][̲̅k]");

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

    
    
	@Test
	public void doSave() throws SQLException {
		System.out.println("[̲̅d][̲̅o][̲̅s][̲̅a][̲̅v][̲̅e]");
        Member member1 = new Member("user1", 1, "password1", "User One", "nickname1", 'N');
        
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
        Member savedMember = memberMapper.doSelectOne(member1.getMemberId());
        assertNotNull(savedMember);
        assertMembersEqual(member1, savedMember);
    }
	
	
    

	
	
    private void assertMembersEqual(Member expected, Member actual) {
        if (expected == null) {
            assertNull(actual);
        } else {
            assertNotNull(actual);
            assertEquals(expected.getMemberId(), actual.getMemberId());
            assertEquals(expected.getLocCode(), actual.getLocCode());
            assertEquals(expected.getPassword(), actual.getPassword());
            assertEquals(expected.getName(), actual.getName());
            assertEquals(expected.getNickname(), actual.getNickname());
            assertEquals(expected.getIsAdmin(), actual.getIsAdmin());
        }
    }

    @After
    public void tearDown() throws Exception {
    	System.out.println("[̲̅t][̲̅e][̲̅a][̲̅r][̲̅D][̲̅o][̲̅w][̲̅n]");
    }

    @Test
    public void beans() {
    	System.out.println("[̲̅B][̲̅e][̲̅a][̲̅n][̲̅s]");
        System.out.println("context: " + context);
        System.out.println("memberMapper: " + memberMapper);

        assertNotNull(context);
        assertNotNull(memberMapper);
    }
}
