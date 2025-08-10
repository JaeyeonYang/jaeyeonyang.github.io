# 📝 포스트 작성 가이드

## 🚀 새 포스트 만들기 (간단!)

### 1. 파일 생성
```bash
# _posts 폴더에 새 파일 만들기 (파일명에 날짜만 포함)
touch _posts/2024-12-19-제목.md
```

### 2. 내용 작성
```markdown
---
title: "포스트 제목"
categories:
  - Blog
tags:
  - research
  - energy
  - molecular-simulations
---

포스트 내용을 작성하세요.

## 섹션 1
내용...

## 섹션 2
내용...
```

### 3. 자동 시간 설정 ✅
- `date` 필드를 작성하지 마세요!
- 플러그인이 자동으로 현재 시간을 추가합니다
- 파일명의 날짜는 그대로 유지됩니다

## 📁 파일명 규칙
- **형식**: `YYYY-MM-DD-제목.md`
- **예시**: `2024-12-19-energy-research.md`
- **주의**: 파일명에 공백 대신 하이픈(-) 사용

## 🎯 카테고리와 태그
- **카테고리**: Blog, Research, Energy Engineering 등
- **태그**: research, energy-engineering, molecular-simulations 등

## ✨ 자동화 기능
- 포스트 생성 시 자동으로 현재 시간 설정
- `date` 필드 누락 시 자동 추가
- 파일명 날짜와 일치하는 시간 설정

---
**💡 팁**: 파일명만 만들고 내용은 나중에 작성해도 됩니다! 