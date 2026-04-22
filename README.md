# cobo-design

Cobo Portal 设计规范 Skill，安装后在 Claude Code 中直接用自然语言生成符合 Cobo Portal 规范的 HTML 原型。

## 安装

```bash
curl -fsSL https://raw.githubusercontent.com/yinwang-gif/cobo-design/main/install.sh | bash
```

安装完成后重启 Claude Code 即生效。

**系统要求**：macOS / Linux，已安装 [Claude Code](https://claude.ai/code) 和 `unzip`

## 使用

启动 Claude Code 后直接描述需求，无需额外指令：

**Dialog：**
```
帮我出一个「添加地址」的 Dialog，字段有 Address Name、Address、Memo，
底部 Cancel + Confirm，Confirm 有 Loading 态
```

**列表页：**
```
生成一个 Refunds 列表页，包含搜索框、日期筛选、表格（Source / Amount / Status / Action）、分页
```

**结果页：**
```
做一个交易提交结果 Dialog，成功和失败两个版本
```

## 规范覆盖范围

- 色彩 Token 体系（Brand / Background / Text / State）
- 双字族：Poppins（UI 文字）+ Oxanium（金融金额）
- 按钮 5 种类型 × 4 种尺寸 × 5 种状态
- 输入框、Dialog、表格、Tabs 组件规范
- 4px 间距网格 / 三档圆角（4 / 6 / 10px）
- 三层页面布局（64px 图标轨道 + 296px 二级导航 + 主内容区）

## 卸载

```bash
rm -rf ~/.claude/skills/cobo-design
```

---

*对应 Cobo Portal Design System v1.0 · 最后更新 2026-04-22*
