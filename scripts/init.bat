@echo off
echo ========================================
echo Windows Docker 虚拟环境初始化
echo ========================================

echo 检查Git安装...
git --version

echo 检查Python安装...
python --version

echo 检查Node.js安装...
node --version

echo 创建项目目录...
if not exist "C:\app" mkdir C:\app

echo ========================================
echo 初始化完成!
echo ========================================

systeminfo | findstr /B /C:"Computer Name" /C:"OS Name" /C:"OS Version"

pause