# start-claw.ps1  —— 一键启动 Claw Code（使用 DeepSeek）

$env:HOME = $env:USERPROFILE
$env:ANTHROPIC_BASE_URL = "https://api.deepseek.com/anthropic"
$env:ANTHROPIC_AUTH_TOKEN = "sk-10f59641808f46dd8d917b0ca20a768c"
$env:ANTHROPIC_API_KEY = "sk-10f59641808f46dd8d917b0ca20a768c"
$env:API_TIMEOUT_MS = "600000"

Write-Host "🚀 Claw Code 启动中... (DeepSeek + Windows Terminal)" -ForegroundColor Cyan
Write-Host "HOME: $env:HOME" -ForegroundColor Gray

.\target\debug\claw.exe
