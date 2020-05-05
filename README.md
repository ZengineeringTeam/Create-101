# Zengineering

### 开发环境安装方法

1. 克隆仓库，作为 MultiMC 的实例导入
2. 安装 node.js 环境
3. 在 MultiMC 实例的 .minecraft 目录中运行命令行：

```
npm install -g modpack
modpack update
```

 - 安装 modpack 失败可以试试淘宝镜像

```
npm config set registry https://registry.npm.taobao.org
```

 切换回默认源

```
npm config set registry https://registry.npmjs.org/
```

 - 运行完成后，模组自动下载完毕

### 注意事项

 - Create 1.15 仍未移植完毕，一些渲染错误会导致崩溃，如放置机械制造台，查看JEI风扇洗涤页面等等。
 - 模组下载失败是正常现象，按 Ctrl-C 退出进程后重新运行 modpack update 直到所有模组下载完成。
 - 模组下载总是失败可以试试设置最大下载线程数。
