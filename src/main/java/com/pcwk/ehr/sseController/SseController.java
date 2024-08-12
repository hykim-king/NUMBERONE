package com.pcwk.ehr.sseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;

import com.pcwk.ehr.disasterMsg.service.DisasterMsgService;

import java.io.IOException;
import java.sql.SQLException;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

@RestController
public class SseController {

    private final ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(1);
    private SseEmitter emitter;

    @Autowired
    private DisasterMsgService disasterService; // MyBatis 매퍼 주입

    // SSE 연결을 위한 메서드
    @GetMapping("/sse")
    public SseEmitter handleSse() {
        emitter = new SseEmitter();
        startEventCheck();
        return emitter;
    }

    private void startEventCheck() {
        scheduler.scheduleAtFixedRate(() -> {
            try {
                String result = "N";
				try {
					result = disasterService.isNewMessageExist();
				} catch (SQLException e) {
					e.printStackTrace();
				} // SQL 쿼리 실행

                if ("Y".equals(result)) {
                    emitter.send("New event occurred!");
                }

            } catch (IOException e) {
                emitter.completeWithError(e);
            }
        }, 0, 5, TimeUnit.SECONDS);
    }
}
