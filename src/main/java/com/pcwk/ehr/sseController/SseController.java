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

import java.io.IOException;
import java.sql.SQLException;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@RestController
public class SseController implements PLog{
	
	@Autowired
	public DisasterMsgMapper disasterMsgMapper;

    private final ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(1);
    private SseEmitter emitter;

    @Autowired
    private DisasterMsgService disasterService; // MyBatis 매퍼 주입

    // SSE 연결을 위한 메서드
    @GetMapping(value ="/sse", produces = MediaType.TEXT_EVENT_STREAM_VALUE)
    public SseEmitter handleSse(HttpServletResponse response,HttpSession session) {
    	response.setContentType("text/event-stream; charset=UTF-8");

        emitter = new SseEmitter();
        startEventCheck(session);
        return emitter;
    }

    private void startEventCheck(HttpSession session) {
        scheduler.scheduleAtFixedRate(() -> {
            try {
                String result = "N";
                String message = "New Message Arrived!";
                Gson gson = new Gson();
                
				try {
					result = disasterService.isNewMessageExist(1100000000);
				} catch (SQLException e) {
					e.printStackTrace();
				} // SQL 쿼리 실행
                
				//수정해야함!
				
                if ("Y".equals(result)) {
					emitter.send(gson.toJson(message));
                    log.debug(message);
                    try {
						disasterMsgMapper.updateSequence();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
                
                }
            } catch (IOException e) {
                emitter.completeWithError(e);
            }
        }, 0, 10, TimeUnit.SECONDS);
    }
}
