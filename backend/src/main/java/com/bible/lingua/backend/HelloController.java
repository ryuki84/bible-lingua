package com.bible.lingua.backend;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/api/health")
    public String health() {
        return "OK";
    }

    @GetMapping("/api/verse/today")
    public TodayVerseResponse todayVerse() {
        return new TodayVerseResponse(
                "예레미야 29:11",
                "여호와의 말씀이니라 너희를 향한 나의 생각을 내가 아나니 평안이요 재앙이 아니니라 너희에게 미래와 희망을 주는 것이니라",
                "For I know the plans I have for you,\" declares the LORD, \"plans to prosper you and not to harm you, plans to give you hope and a future.\""
        );
    }

    public record TodayVerseResponse(
            String reference,
            String korean,
            String english
    ) {}
}
