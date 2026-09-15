# CyberStrikeAI

这是 [AIPentest/CyberStrikeAI](https://github.com/AIPentest/CyberStrikeAI) 的个人源码备份，不是上游官方仓库。保存的是 2026-09-14 的上游快照，供已授权环境搭建、研究与二次开发；原始 Apache-2.0 [许可证](LICENSE)已保留。

本副本的 `upgrade.sh` 已改为保护脚本：执行时只显示提示并退出，不会从上游下载新版本或覆盖这里的源码。需要更新时请在另一个工作目录中审查、测试并手动合并。安全保存标签为 `protected-source-2026-09-15`。

## 从这份 GitHub 仓库部署

环境要求：Go 1.25+、Python 3.10+，首次安装 Go/Python 依赖需要联网。AI 模型服务和 API Key 需自行准备。

```bash
git clone -b CyberStrikeAI https://github.com/pbfochk/CyberStrikeAI.git
cd CyberStrikeAI
./run.sh
```

`run.sh` 会创建 Python 虚拟环境、安装依赖、构建 Go 服务端并启动。终端显示 `ONLINE` 后，打开它给出的 Web 地址；默认通常是 `https://127.0.0.1:8080/`，使用本地自签证书。仅在本地测试需要明文 HTTP 时可运行 `./run.sh --http`。

全新安装时，保存终端中 `ADMIN SETUP REQUIRED` 下仅显示一次的 `admin` 初始密码，登录后立即修改。随后在「系统设置 → 基本设置 → AI 通道配置」填写你自己的模型服务地址、模型和 API Key。

生产环境请使用正式 HTTPS 证书或可信反向代理，并先阅读[安全加固指南](docs/zh-CN/security-hardening.md)。`config.yaml`、`data/`、数据库、证书和密钥属于本机运行数据，不应提交到公开仓库。

## 源码与文档

- 完整中文说明：[README_CN.md](README_CN.md)
- 配置模板：[config.example.yaml](config.example.yaml)
- 中文文档：[docs/zh-CN](docs/zh-CN/README.md)
- 安全模型：[docs/zh-CN/security-model.md](docs/zh-CN/security-model.md)
- 许可证：[LICENSE](LICENSE)

仅对自有系统或已获得明确授权的目标使用本项目。Go 服务端源码已通过编译验证，但本备份没有覆盖所有可选插件和生产环境的端到端测试。
