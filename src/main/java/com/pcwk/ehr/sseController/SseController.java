package com.pcwk.ehr.sseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

import com.google.gson.Gson;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.disasterMsg.service.DisasterMsgService;
import com.pcwk.ehr.mapper.DisasterMsgMapper;
import com.pcwk.ehr.member.domain.Member;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@RestController
public class SseController implements PLog {
    
    @Autowired
    public DisasterMsgMapper disasterMsgMapper;

    private final ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(1);
    private final List<SseEmitter> emitters = new CopyOnWriteArrayList<>();
    
    @Autowired
    private DisasterMsgService disasterService;

    // SSE 연결을 위한 메서드
    @GetMapping(value = "/sse", produces = MediaType.TEXT_EVENT_STREAM_VALUE)
    public SseEmitter handleSse(HttpServletResponse response, HttpSession session) {
        response.setContentType("text/event-stream; charset=UTF-8");

        SseEmitter emitter = new SseEmitter(60*1000*10l);
        emitters.add(emitter); // emitters 리스트에 추가

        emitter.onCompletion(() -> emitters.remove(emitter)); // 완료 시 리스트에서 제거
        emitter.onTimeout(() -> emitters.remove(emitter)); // 타임아웃 시 리스트에서 제거

        startEventCheck(session);

        return emitter;
    }

    private void startEventCheck(HttpSession session) {
        scheduler.scheduleAtFixedRate(() -> {
            try {
                String result = disasterService.isNewMessageExist();
                String message = "New Message Arrived!";
                Gson gson = new Gson();
                for (SseEmitter emitter : emitters) {
                emitter.send(gson.toJson(message));}
//                if ("Y".equals(result)) { // 새로운 메시지가 DB에 등록되면
//                	log.debug(result);
//                    if (session != null) {
//                        log.debug(session);
//                        Member user = (Member) session.getAttribute("member");
//                        log.debug(user);
//                        if (user != null && disasterMsgMapper.isNewMessageExistForUser(user) > 0) {
//                            // 모든 클라이언트에게 메시지 전송
//                            for (SseEmitter emitter : emitters) {
//                                try {
//                                    emitter.send(gson.toJson(message));
//                                } catch (IOException e) {
//                                    // 오류 발생 시 해당 emitter를 리스트에서 제거
//                                    emitters.remove(emitter);
//                                }
//                            }
//                            
//                        }
//                    }else {
//                    	log.debug("session null");
//                    }
//                    disasterMsgMapper.updateSequence();
//                    
//                }
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }, 0, 10, TimeUnit.SECONDS);
    }
}

