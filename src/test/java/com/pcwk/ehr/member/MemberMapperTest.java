package com.pcwk.ehr.member;

import static org.junit.Assert.*;
import java.sql.SQLException;
import java.util.List;
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
     Member member2;
     Member member3;
     Search search;

    @Before
    public void setUp() throws Exception {
        System.out.println("┌─────────────────────────────────────────┐");
        System.out.println("│ setUp()                                 │");
        System.out.println("└─────────────────────────────────────────┘");

        // 데이터 삭제
        memberMapper.deleteAll();

        member1 = new Member("user1", 1, "password1", "User One", "nickname1", 'N');
        member2 = new Member("user2", 2, "password2", "User Two", "nickname2", 'Y');
        member3 = new Member("user3", 3, "password3", "User Three", "nickname3", 'N');

        search = new Search();
    }

    @Test
    @Ignore
    public void idDuplicateCheck() throws SQLException {
        // 데이터 입력 전 개수 확인
        assertEquals(0, memberMapper.getCount());

        // 데이터 등록
        assertEquals(1, memberMapper.doSave(member1));
        assertEquals(1, memberMapper.getCount());

        // 단건 조회 및 중복 체크
        Member outMember = memberMapper.doSelectOne(member1.getMemberId());
        assertNotNull(outMember);
        assertMembersEqual(member1, outMember);

        assertEquals(1, memberMapper.idDuplicateCheck(member1.getMemberId()));
        assertEquals(0, memberMapper.idDuplicateCheck(member2.getMemberId()));
    }

    @Test
    @Ignore
    public void doUpdate() throws SQLException {
        // 데이터 등록 및 확인
        assertEquals(1, memberMapper.doSave(member1));
        assertEquals(1, memberMapper.getCount());

        Member outMember = memberMapper.doSelectOne(member1.getMemberId());
        assertNotNull(outMember);
        assertMembersEqual(member1, outMember);

        // 데이터 수정 및 업데이트
        outMember.setName(outMember.getName() + "_updated");
        outMember.setPassword(outMember.getPassword() + "_updated");
        outMember.setNickname(outMember.getNickname() + "_updated");
        outMember.setIsAdmin('Y');

        assertEquals(1, memberMapper.doUpdate(outMember));

        Member updatedMember = memberMapper.doSelectOne(outMember.getMemberId());
        assertMembersEqual(updatedMember, outMember);
    }

    @Test
    public void doRetrieve() throws SQLException {
    	
        System.out.println("┌─────────────────────────────────────────┐");
        System.out.println("│ doRetrieve()                            │");
        System.out.println("└─────────────────────────────────────────┘");
    	memberMapper.deleteAll();		
    	// 데이터 등록
    	memberMapper.doSave(member1);
        int count = memberMapper.getCount();
        assertEquals(1,count);

        // 검색 설정 및 테스트
        search.setPageNo(1);
        search.setPageSize(10);
        search.setSearchDiv("10");
        search.setSearchWord("user1");

        List<Member> list = memberMapper.doRetrieve(search);
        assertEquals(0, list.size());
    }

    @Test
    @Ignore
    public void addAndGet() throws SQLException {
        // 데이터 등록 및 조회
        assertEquals(1, memberMapper.doSave(member1));
        assertEquals(1, memberMapper.getCount());

        Member outMember1 = memberMapper.doSelectOne(member1.getMemberId());
        assertNotNull(outMember1);
        assertMembersEqual(member1, outMember1);

        assertEquals(1, memberMapper.doSave(member2));
        assertEquals(2, memberMapper.getCount());

        Member outMember2 = memberMapper.doSelectOne(member2.getMemberId());
        assertNotNull(outMember2);
        assertMembersEqual(member2, outMember2);

        assertEquals(1, memberMapper.doSave(member3));
        assertEquals(3, memberMapper.getCount());

        Member outMember3 = memberMapper.doSelectOne(member3.getMemberId());
        assertNotNull(outMember3);
        assertMembersEqual(member3, outMember3);
    }

    private void assertMembersEqual(Member expected, Member actual) {
        assertEquals(expected.getMemberId(), actual.getMemberId());
        assertEquals(expected.getLocCode(), actual.getLocCode());
        assertEquals(expected.getPassword(), actual.getPassword());
        assertEquals(expected.getName(), actual.getName());
        assertEquals(expected.getNickname(), actual.getNickname());
        assertEquals(expected.getIsAdmin(), actual.getIsAdmin());
    }

    @After
    public void tearDown() throws Exception {
        System.out.println("┌─────────────────────────────────────────┐");
        System.out.println("│ tearDown()                              │");
        System.out.println("└─────────────────────────────────────────┘");
    }

    @Test
    public void beans() {
        System.out.println("┌─────────────────────────────────────────┐");
        System.out.println("│ testBeans()                             │");
        System.out.println("└─────────────────────────────────────────┘");
        System.out.println("context: " + context);
        System.out.println("memberMapper: " + memberMapper);

        assertNotNull(context);
        assertNotNull(memberMapper);
    }
}
