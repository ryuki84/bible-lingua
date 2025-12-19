# Codex CLI Prompt Templates

## 공통 규칙(모든 프롬프트에 포함)
- 변경 범위를 명시한다(수정 파일/추가 파일/금지 영역)
- 완료 조건을 명시한다(빌드/실행/테스트)
- 커밋 단위로 결과를 내도록 요구한다

---

## Template 1) Flutter 화면 1개 추가
목표: Home 화면에 “오늘의 학습 / 오늘의 암송” 카드 2개를 배치한다.

요청:
- Flutter 프로젝트는 `frontend/`
- 새 화면 `HomeScreen` 생성
- 카드 2개(학습/암송) + 진행도 점 표시(●○○○○)
- 라우팅만 연결(실제 데이터는 더미)
- `flutter run`이 성공해야 함
- 변경 파일 목록을 요약해줘

완료 조건:
- 앱 실행 시 HomeScreen이 뜬다
- 버튼 탭 시 임시 화면으로 이동한다(Placeholder OK)

---

## Template 2) Flutter 암송 Stage 1 구현
목표: Memory Stage 1(전체 문장 노출 + 다음 버튼)을 구현한다.

요청:
- `MemoryScreen` 추가
- Verse 더미 데이터 1개(한글)
- “다음” 누르면 Stage 2는 아직 미구현이라 안내 텍스트만 표시

완료 조건:
- 화면 전환 가능
- UI 규칙(밝은 배경, 중앙 카드, 하단 버튼)

---

## Template 3) Spring Boot 최소 API 뼈대
목표: backend에 health API를 만든다.

요청:
- Spring Boot 3 + Java 17 + Gradle
- `/api/health` → 200 OK + `{ "status": "ok" }`
- 실행 방법을 README 또는 docs에 추가

완료 조건:
- 로컬 실행 후 curl로 응답 확인 가능

---

## Template 4) 리팩토링(구조 정리)
목표: UI 컴포넌트 분리 및 네이밍 정리

요청:
- 공통 버튼/카드 컴포넌트 분리
- 파일 구조 정리
- 실행 확인 필수

완료 조건:
- 기능 변화 없이 코드 가독성 개선
- flutter run 성공
