# 使用Windows Server作为基础镜像
FROM mcr.microsoft.com/windows/servercore:ltsc2022

# 设置工作目录
WORKDIR /app

# 安装必要的工具
RUN powershell -Command \
    # 安装Chocolatey包管理器
    iex ((New-Object System.Net.ServicePointManager).SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072); \
    iex ((New-Object Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# 安装常用工具
RUN choco install -y git curl python nodejs

# 配置Git
RUN git config --global user.name "Docker User" && \
    git config --global user.email "docker@example.com"

# 暴露端口
EXPOSE 3389 5985 80 443

# 启动CMD
CMD ["cmd"]