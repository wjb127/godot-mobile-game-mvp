# 게임 배포 가이드

## 🎮 Mobile Tap Game 설치 및 실행 방법

### 📦 빌드된 실행 파일 다운로드

1. [GitHub Releases](https://github.com/wjb127/godot-mobile-game-mvp/releases)에서 최신 버전 다운로드
2. 운영체제에 맞는 파일 선택:
   - **Windows**: `MobileTapGame-windows.zip`
   - **macOS**: `MobileTapGame-mac.zip`

### 🖥️ Windows 설치 방법

1. `MobileTapGame-windows.zip` 다운로드
2. 압축 해제
3. `MobileTapGame.exe` 더블클릭하여 실행
4. Windows Defender 경고가 나타나면:
   - "추가 정보" 클릭
   - "실행" 버튼 클릭

### 🍎 macOS 설치 방법

1. `MobileTapGame-mac.zip` 다운로드
2. 압축 해제 (더블클릭)
3. `MobileTapGame.app`을 Applications 폴더로 드래그
4. 처음 실행 시:
   - 우클릭 > "열기" 선택
   - 보안 경고창에서 "열기" 클릭
5. 이후부터는 더블클릭으로 실행 가능

### ⚠️ macOS 보안 설정 (필요 시)

Gatekeeper 오류가 발생하면:
```bash
# 터미널에서 실행
xattr -cr /Applications/MobileTapGame.app
```

### 🎯 게임 조작법

- **키보드**: ↑↓←→ 방향키로 이동
- **마우스**: 클릭한 위치로 이동
- **목표**: 사방에서 나타나는 적(빨간색)을 피하면서 오래 살아남기

## 🛠️ 개발자를 위한 빌드 방법

### 사전 준비

1. [Godot 4.3+](https://godotengine.org) 설치
2. Export Templates 설치:
   - Godot 에디터 실행
   - Editor > Manage Export Templates
   - "Download and Install" 클릭

### 빌드 스크립트 사용

```bash
# 프로젝트 폴더에서
./build_game.sh
```

### 수동 빌드

1. Godot에서 프로젝트 열기
2. Project > Export 메뉴
3. 플랫폼 선택 후 "Export Project" 클릭

## 📱 모바일 버전 (추후 지원 예정)

- Android APK
- iOS (App Store 배포 예정)

## 🐛 문제 해결

### Windows에서 실행이 안 될 때
- Visual C++ Redistributable 설치 필요할 수 있음
- Windows 10 이상 권장

### macOS에서 실행이 안 될 때
- macOS 10.12 이상 필요
- Apple Silicon(M1/M2) 네이티브 지원

## 📞 지원

문제가 있으면 [GitHub Issues](https://github.com/wjb127/godot-mobile-game-mvp/issues)에 제보해주세요!