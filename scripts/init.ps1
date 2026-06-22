# Windows Docker 初始化脚本

Write-Host "========================================" -ForegroundColor Green
Write-Host "Windows Docker 虚拟环境初始化" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green

# 检查Git
Write-Host "检查Git安装..." -ForegroundColor Yellow
git --version

# 检查Python
Write-Host "检查Python安装..." -ForegroundColor Yellow
python --version

# 检查Node.js
Write-Host "检查Node.js安装..." -ForegroundColor Yellow
node --version

# 创建项目目录
Write-Host "创建项目目录..." -ForegroundColor Yellow
$appDir = "C:\app"
if (-not (Test-Path $appDir)) {
    New-Item -ItemType Directory -Path $appDir | Out-Null
    Write-Host "✓ 创建目录: $appDir" -ForegroundColor Green
}

# 初始化完成
Write-Host "========================================" -ForegroundColor Green
Write-Host "✓ 初始化完成!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green

# 显示系统信息
Write-Host "`n系统信息:" -ForegroundColor Cyan
systeminfo | findstr /B /C:"Computer Name" /C:"OS Name" /C:"OS Version"