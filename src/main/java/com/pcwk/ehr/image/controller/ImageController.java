package com.pcwk.ehr.image.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/resources/img")
public class ImageController {

    @GetMapping("/{imageName}")
    public String getImage(@PathVariable String imageName) {
        // 정적 파일이 위치한 디렉토리 경로를 설정합니다.
        return "/NUMBERONE/src/main/webapp/resources/img/" + imageName;
    }
}	