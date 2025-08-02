# 모바일 앱 디자인 라이브러리 가이드

## 🎨 Android 네이티브 디자인 라이브러리

### 1. Material Design 3 (Material You)
- **특징**: 구글 공식 최신 디자인 시스템
- **장점**: Jetpack Compose UI 컴포넌트, 다이나믹 컬러, 모션, 애니메이션 포함
- **설치**:
```kotlin
implementation("androidx.compose.material3:material3:1.2.0")
```

### 2. Accompanist
- **특징**: Jetpack Compose 보조 라이브러리
- **장점**: 시스템 UI 컨트롤러, 플로우 레이아웃 등 추가 기능
- **설치**:
```kotlin
implementation("com.google.accompanist:accompanist-systemuicontroller:0.32.0")
```

## 📱 크로스플랫폼 디자인 라이브러리

### React Native

#### 1. NativeBase
- **특징**: shadcn 스타일의 모바일 버전
- **장점**: 커스터마이징 쉬움, 다크모드 기본 지원
- **웹사이트**: https://nativebase.io

#### 2. Gluestack UI
- **특징**: 최신 디자인 트렌드 반영
- **장점**: 부드러운 애니메이션, TypeScript 지원
- **웹사이트**: https://gluestack.io

#### 3. Tamagui
- **특징**: 성능 최적화된 UI 라이브러리
- **장점**: 컴파일 타임 최적화, 매우 부드러운 애니메이션
- **웹사이트**: https://tamagui.dev

### Flutter

#### 1. Flutter Material 3
- **사용법**:
```dart
theme: ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
)
```

#### 2. GetWidget
- **특징**: 1000+ 프리빌트 위젯
- **장점**: 프로덕션 레디, 다양한 컴포넌트
- **웹사이트**: https://getwidget.dev

## 💡 디자인 향상 팁

### 1. 디자인 참고 사이트
- **Dribbble**: 모바일 UI 트렌드 확인
- **Behance**: 프로젝트 케이스 스터디
- **Figma Community**: 무료 모바일 UI 킷 다운로드

### 2. AI 코딩 시 디자인 개선 방법
- 구체적인 디자인 시스템 명시
- 예시: "Material Design 3 스타일로 modern하게 만들어줘"
- 참고할 앱 언급: "인스타그램 스타일 피드 화면"
- 구체적 요소 요청: "다이나믹 컬러와 모션 애니메이션 포함"

### 3. 프롬프트 예시
```
"Material You 디자인 시스템으로 인스타그램 스타일 피드 화면 만들어줘. 
다이나믹 컬러와 모션 애니메이션 포함해서"
```

## 🚀 추천 조합

### Android 전용 개발
**Jetpack Compose + Material 3**
- 네이티브 성능 + 최신 디자인
- 구글이 지속적으로 지원
- Claude Code가 Compose 코드 잘 이해함

### 크로스플랫폼 개발
**Flutter + Material 3** 또는 **React Native + Tamagui**
- 한 번 개발로 iOS/Android 모두 지원
- 뛰어난 디자인 퀄리티
- 활발한 커뮤니티

## 📚 추가 리소스

- [Material Design 공식 문서](https://m3.material.io/)
- [Jetpack Compose 샘플](https://github.com/android/compose-samples)
- [Flutter Widget Catalog](https://docs.flutter.dev/development/ui/widgets)
- [React Native Directory](https://reactnative.directory/)