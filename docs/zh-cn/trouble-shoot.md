# 常见问题

#### 1. 脚本可以设置开机自启吗？ 
 
可以。分两种情况。

1. 自带【管理员权限】的软件，只能【计划任务和程序】。因为一般管理员权限的软件都不能开机自启，都会面临的 PAC 问题。
  - 如果不给管理员权限，遇到有些系统软件，脚本就失效了。
  - 它需要管理员权限来控制 `sehll` ，降权打开软件（比如 VSCode）。

2. 不带【管理员权限】的软件， 将脚本的快捷方式，剪切放到开机自启的目录（ <kbd>win</kbd> + <kbd>R</kbd> 运行`shell:startup`）中即可。
 

#### 2. 脚本支持旧版的 AutoHotkey V1 吗？（脚本支持 Windows 7）吗？ 

`Magic` 早期也是从 V1 迭代过来，历史版本保存在 `/tools/release/AutoHotkey_V1` 目录下，可从
[AutoHotkey 官网地址](https://www.autohotkey.com/) 下载当前版本的配套软件（AutoHotkey_1.1.33.10+）直接运行。

- `magic_v1` 单机服务，简单的光标编辑等，想到什么功能就扔进去。
- `magic_v2` 拆分多个微服务，为不同的软件编写脚本，做了拆分，可见现在的雏形。

这两个版本，本人不再更新维护了，因为后面遇到了面向对象风格的版本，维护和拓展更方便。如果你在用 Windows7 ，可以参考修改，直接拿去用吧。

&nbsp;
>
> All my effort is the parody of Ruohang Feng (@Vonng) &amp; Salted Fish Akang (@xianyukang).
>
> 我所有的努力都是对冯若航和咸鱼阿康的拙劣模仿。
