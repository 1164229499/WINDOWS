# Windows Docker 虚拟环境

这是一个基于Docker的Windows虚拟环境配置，用于在容器中运行Windows Server。

## 📋 前置要求

- Docker Desktop (需要启用Windows容器支持)
- 至少 20GB 磁盘空间
- 8GB+ RAM

## 🚀 快速开始

### 1. 构建镜像
```bash
docker build -t windows-virtual-env .
```

### 2. 使用 Docker Compose 启动
```bash
docker-compose up -d
```

### 3. 进入容器
```bash
docker exec -it windows-virtual-env cmd
```

### 4. 查看容器日志
```bash
docker-compose logs -f
```

## 🔧 常用命令

### 停止容器
```bash
docker-compose down
```

### 重启容器
```bash
docker-compose restart
```

### 查看容器信息
```bash
docker ps
docker inspect windows-virtual-env
```

### 执行PowerShell命令
```bash
docker exec -it windows-virtual-env powershell
```

## 📝 文件结构
```
.
├── Dockerfile              # Windows容器配置
├── docker-compose.yml      # Docker编排文件
├── .dockerignore          # Docker忽略文件
├── data/                  # 数据目录（挂载点）
├── scripts/               # 脚本目录（挂载点）
└── README.md              # 本文件
```

## 🌐 网络配置

| 服务 | 端口 | 说明 |
|------|------|------|
| RDP | 3389 | 远程桌面协议 |
| WinRM | 5985 | Windows远程管理 |
| HTTP | 80 | Web服务 |
| HTTPS | 443 | 安全Web服务 |

## 🔐 安全建议

1. 定期更新镜像基础版本
2. 使用强密码
3. 限制对外暴露的端口
4. 使用环境变量管理敏感信息

## ⚠️ 注意事项

- Windows容器体积较大，首次拉取可能需要较长时间
- 需要足够的磁盘空间
- 部分功能可能因容器限制而不可用

## 🤝 贡献

欢迎提交Issue和PR来改进此配置！

## 📄 许可证

MIT License