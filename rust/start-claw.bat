@echo off
:: ================================================
:: 1. 检测是否已经在 Windows Terminal 中运行
:: ================================================
if not defined WT_SESSION (
    :: 如果不在 WT 中，则启动 Windows Terminal，并让它重新运行这个脚本
    start wt.exe -d . cmd.exe /c "%~f0"
    exit /b
)

:: ================================================
:: 2. 以下代码只会在 Windows Terminal 内部执行
:: ================================================
chcp 65001 >nul
echo ================================================
echo          Claw Code 启动脚本 (DeepSeek)
echo ================================================

set HOME=%USERPROFILE%
set ANTHROPIC_BASE_URL=https://api.deepseek.com/anthropic
set ANTHROPIC_AUTH_TOKEN=sk-10f59641808f46dd8d917b0ca20a768c
set ANTHROPIC_API_KEY=sk-10f59641808f46dd8d917b0ca20a768c
set API_TIMEOUT_MS=600000

echo ✅ HOME 已设置: %HOME%
echo 🚀 正在启动 Claw Code...

.\target\debug\claw.exe

pause
