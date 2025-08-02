#!/bin/bash

echo "Building Mobile Tap Game..."

# Export templates 다운로드 안내
echo "==================================="
echo "Export templates가 필요합니다."
echo ""
echo "Godot 에디터에서:"
echo "1. Editor > Manage Export Templates 메뉴 클릭"
echo "2. 'Download and Install' 버튼 클릭"
echo "3. 다운로드 완료 후 이 스크립트를 다시 실행하세요"
echo "==================================="
echo ""
echo "Export templates가 이미 설치되어 있다면 Enter를 누르세요..."
read -n 1

# macOS 빌드
echo "Building for macOS..."
godot --headless --export-release "macOS" builds/mac/MobileTapGame.app

# Windows 빌드 (맥에서 크로스 컴파일)
echo "Building for Windows..."
godot --headless --export-release "Windows Desktop" builds/windows/MobileTapGame.exe

echo "Build complete!"
echo ""
echo "실행 파일 위치:"
echo "- macOS: builds/mac/MobileTapGame.app"
echo "- Windows: builds/windows/MobileTapGame.exe"