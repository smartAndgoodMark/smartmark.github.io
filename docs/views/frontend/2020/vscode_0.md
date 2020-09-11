---
title: ubuntu 18.04 下 vscode 基本使用及常用快捷键
categories:
 - frontend
tags:
 - 前端
 - 编辑器
 - 快捷键
 - 学习备忘录
date: 2020-09-08
isComment: true
sidebar: true
isShowComments: true
---

::: tip
为什么选择`vscode`及`vscode` 新手使用介绍
:::

## 为什么要学习使用[vscode][1]？

个人认为至少有以下理由
1. `vscode` 免费,  开源, 支持多语言. 

   考虑到`pycharm` 专业版的收费,臃肿和一定的前端开发需求, 对我个人而言, `vscode`将会是更好的选择（含泪告别, `pycharm`.jpg) 
2. 全面和活跃插件（社区）支持, 可自定义各种插件.
    
    作为一款有潜力成为（或者已经成为）最受欢迎的编辑器, 它的使用者和推崇者极为活跃, 并构建了各种你所能想到的插件以及构建你想要的插件的能力. 
3. 学习成本低. 前端及众多使用者加持下, 网上学习资料变得非常多 

   如果你也有类似的理由,但还没有尝试`vscode`,快点加入吧(又安利一个, 看看你.jpg)

## 基本使用介绍

1. *ubuntu18.04* 下直接通过[snap][2]安装
   
    ``` bash
    sudo snap install vscode --classic
    ```

2. 使用区域介绍
   
   ![借用别人的图片][p1]
   文字描述下:

   界面分为五部分

   * 视图工具栏:
      * 文件资源管理器(ctrl+shift+e)
      * 搜索(ctrl+shift+f)
      * git分支(ctrl+shift+g)
      * debug(ctrl+shift+d)
      * 插件市场(ctrl+shift+x)
  
        部分插件可能会安装到工具栏里
    * 侧边栏:资源管理,工具栏点开后信息会在这里展示
    * 编辑栏: 注意右上角是一些功能,行列拆分,运行,差异等
    * 面板: 问题, 调试,输出, 终端. 终端这里非常有用,可以新建多个终端,同时终端还能拆分多个 
    * 状态栏: 工程和文件信息, 消息等
3. 配置语言环境
   
   例如`python`, 直接在插件市场搜索`python`,选择最常用的就行
4. 常用设置
    `vscode` 编辑器的设置,它们被以json的形式保存着,查找对应的名称

    常用设置(preference->setting )
    * 文件自动保存
    * 终端文本大小
    * 字体及字体大小
    
    待补充

5. 创建项目和文件
   1. 创建文件夹
   2. 用`vscode` 打开,会自动加入到工作空间(也可以先打开`vscode`, 将已有项目加入到工作空间)
   3. 新建文件 ctrl + n
   4. 运行


## 快捷键

>只介绍我认为比较常用的快捷键

| 功能              | 快捷键                       |
| ----------------- | ---------------------------- |
| 复制粘贴          | ctrl+c, ctrl+v               |
| 查找替换          | ctrl+f, ctrl+h               |
| 页面缩放          | ctrl + "-", ctl + "+"        |
| 注释              | ctrl+/, ctrl+shift+a         |
| 命令模式          | ctrl+shift+p                 |
| 列选择            | alt+shift+click              |
| 点链接            | ctrl+click                   |
| 跳转行,文件, 字符 | ctrl+g, ctrl+p, ctrl+shirt+o |
| 括号之间跳转      | ctrl + shift + \             |
| 代码跳转          | ctrl+ click, ctrl + alt + -  |
| 代码提示          | ctrl + 光标                  |
| 代码折叠          | ctrl+k+ctrl+o, ctrl+k+ctrl+j |
| 代码格式化        | ctrl +  k + ctrl + f         |
(部分快捷键可以与语言相关,需要其他配置才能生效)  

推荐[该文][3],整理的非常详细

另外![图片介绍][p2]

## 常见使用插件

插件非常多,这里介绍自己当前使用的
* *Code Spell Checker* 自动拼写检查
* *vscode-icons* 不同语言代码图标
* *Kite Autocomplete* 号称ai自动补全
* *Image preview* 图片预览
* *Rainbow Brackets* 括号对齐上色
    
    待补充

## 开发一款有用的插件

* 通常只有好高骛远的"绝世新手"才会这么想到这个问题, 显然我就是. (包租婆不在吧.jpg)
* 相当于给自己出了一道开放思考题, 放到下一步的学习计划中.

* 当前设想的插件:"给名词添加对应的公开链接", 进一步设想是当名词受到多个人认同, 且wiki中没有时, 自动提交到wiki上,  但是可能需要限制领域, 例如计算机领域

    待补充

[1]: https://code.visualstudio.com/
[2]: https://zh.wikipedia.org/wiki/Snappy_(%E5%8C%85%E7%AE%A1%E7%90%86%E5%99%A8)
[3]: https://www.huweihuang.com/linux-notes/keymap/vscode-keymap.html

[p1]:  ../../images/workspace.jpg
[p2]: ../../images/vscode_keys.jpg