# MVP Spec — Bible Lingua (Learning + Memory)

## 1. 제품 정의
**“배우고(이해), 외우고(반복), 매일 돌아오게 만드는 말씀 루틴 앱”**

- Learning(말씀 읽기/이해): **영어 + 한글(토글)**
- Memory(암송): **한글만**, 단계형(게임처럼)

## 2. MVP 범위(절대 초과 금지)
### 포함
- 홈(Home): 오늘의 학습/암송 2카드 + 진행도
- 학습(Learning Lesson): 문제 2종
  - 단어 빈칸 + 선택지
  - 문장/단어 순서 맞추기
- 암송(Memory Challenge): 단계 1~3 (4는 보류 가능)
  - 1: 전체 노출(읽기)
  - 2: 단어 가리기 + 선택지
  - 3: 단어/구 순서 맞추기
- 결과(Result): 학습/암송 완료 피드백
- 기록(History): 스트릭/완료 수/최근 7일 표시

### 제외(나중에)
- 친구/랭킹/리그
- 음성 인식/발음
- 해설/주석/검색
- 로그인(초기엔 로컬 단일 사용자 가정)

## 3. 화면 정의(5개)
### Screen 1: Home
- 요소: 날짜, 스트릭, 오늘 진행도(●○○○○), 카드 2개
- 카드:
  - [오늘의 말씀 학습] → Learning Lesson
  - [오늘의 암송 도전] → Memory Challenge
- 상태:
  - learning_done, memory_done 표시(텍스트/아이콘)

### Screen 2: Learning Lesson
- 상단: 진행도(예: 2/5) + 점표시
- 중앙: 영어 본문 + 한글 토글
- 하단: 선택지 + [확인] / [다음]
- 문제 유형:
  - Type A: 빈칸 + 선택지
  - Type B: 순서 맞추기

### Screen 3: Memory Challenge (Korean only)
- Stage 1: 전체 문장 노출 + [다음]
- Stage 2: 단어 가리기 + 선택지
- Stage 3: 순서 맞추기(칩)
- 실패 패널티 없음(리듬 유지 우선)

### Screen 4: Result
- 완료 문구, XP(가짜 가능), 스트릭 갱신 메시지
- 버튼: [홈으로]

### Screen 5: History
- 스트릭, 총 완료 수(학습/암송), 최근 7일 체크

## 4. 연결 로직(MVP 단순화)
- 오늘 Verse는 Learning과 Memory에서 **같은 Verse** 사용(기본)
- 학습 완료 → 암송 추천 상태
- 암송 완료 → 복습 큐 등록(날짜 기반)
  - D+1, D+3, D+7 재노출

## 5. 데이터 모델(MVP)
### Verse
- id
- text_en
- text_ko

### DailyPlan
- date
- verse_id
- learning_done (bool)
- memory_done (bool)

### MemorizationProgress
- verse_id
- stage (1~4)
- next_review_at
- last_reviewed_at
- success_count / fail_count (optional)

## 6. UI 규칙(듀오링고 느낌 최소 구현)
- 배경: 밝은 단색
- 중앙: 카드 1장 중심
- 버튼: 하단 고정(Primary 1개)
- 진행도: 점(●○○○○) + 2/5
- 애니메이션: MVP에서는 0
