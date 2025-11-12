# Lean 4 Hello World 示例

## 首次设置 PATH（重要！）

如果命令提示 `lean: command not found`，运行：
```bash
export PATH="$HOME/.elan/bin:$PATH"
```

或者重新打开终端（PATH 已永久添加到 ~/.bashrc）

## 如何运行

### 方法1：直接运行（最简单）✅ 已验证成功
```bash
cd /mnt/d/CS/AI4MATH/Lean4
lean --run HelloWorld.lean
```

**输出示例：**
```
"你好, Lean!"
Hello, World!
欢迎使用 Lean 4！
```

### 方法2：使用 Lake (Lean 的构建工具)
如果你创建了 Lake 项目，可以：
```bash
lake build
lake exe hello
```

### 方法3：在 VS Code 中查看
1. 打开 `HelloWorld.lean` 文件
2. 确保安装了 Lean 4 扩展
3. 查看 `#eval` 语句的结果（会在行内显示）
4. 将光标移到定理上查看证明状态

## 验证 Lean 4 安装

检查版本：
```bash
lean --version
lake --version
elan --version
```

## 文件说明

- `HelloWorld.lean` - 包含三种不同的 Hello World 示例
- `setup.lean` - 你的现有文件

## 下一步

尝试修改代码：
- 改变输出的消息
- 添加更多的 `#eval` 语句
- 尝试简单的数学证明
