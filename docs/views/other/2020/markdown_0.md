---
title: 中文也要优雅的编写markdown文档
categories:
 - frontend
tags:
 - 小技巧
 - 规范
 - 学习备忘录
date: 2020-09-08
isComment: true
sidebar: true
publish: true
---

::: tip
很简单, 赶紧把中文标点替换成英文标点吧, (搜狗输入法快捷键 ctrl + .)
:::

## 前言

其实本篇看到上一行,已经可以结束了,后面的内容更多是起到学习备忘的作用, 对于已经熟知markdown语法的人来说毫无意义

## markdown 基本语法

[官方中文文档][1]

### 特性

* 纯文本, 易读易写
* 规则简单, 常见标点符号和兼容HTML的语法, 但没有网页般复杂格式控制
* 核心理念, 符号的表示尽可能和它看起来一致(简单)
  

### 语法
* 块级元素
  
  * 段落与换行  
    
    连续多行是属于同一个段落
    
    段落间有空行,才会将段落隔开(相当于有空格才会在识别为一段,加入`<p></p>`)

  * 1-6级标题
    
    最常用atx样式,用#标记,数量对应级别 
    setext的样式不用记

  * 块引用
    
    行首加>, 强制换行,形成块. (它是来源与邮件的写法, 例如引用其他邮件那样的效果)
    
  * 列表
  
    `1. `

    1. 

    `*`

    * 

    "*", "+", "-" 都可以表示无序列表, 

    列表可以不断嵌套
    
    如果不想触发,需要加转义符`\`

  * 代码块

    四个空格或者制表符`\t`会产生缩进, 形成代码块,直到未使用缩进的行
    在代码块中特殊字符不会被当做html

  * 水平线
  
    连续三个连字符, `***` or `___`相当于`<hr>`

* 内联元素
  
  * 链接
    
    链接 `[文本](url)`, 链接既可以是网址也可以是本地资源路径

    引用链接`[文本][id]`, 新一行`[id]: url "标题属性"`, 和前者达到相似的效果,好处在于,不会因为链接改变文章的排版.

    例如

        this is [an example](http://example.com/ )

        This is [an example][id]

        [id]: http://example.com/  "title"
    实际效果

    this is [an example](http://example.com/ ).

    This is [an example][id] .

    [id]: http://example.com/  "title"

    还可以匿名id

  * 强调
    
    使用`*`, `_`,做强调标记

    例如

        *文字* // 斜体
        **文字** //加粗

    *文字*
    
    **文字** 

* 代码片段
    
    使用\`\` 来表示

* 插入图片

    类似链接, `![文字](url)`
    也有引用图片的用法
    如果需要指定尺寸,需要通过html标签指定

* 其他
    自动链接`<邮件地址>`
    转义字符 `\`
* 扩展语法
    * 删除线
    
        ```~~删除~~```

        ~~删除~~
    * 带有语法高亮的代码块
    
        \`\`\` js
        window.addEventListener('load', function() {
                console.log('window loaded');
        }); \`\`\`

        ```js
        window.addEventListener('load', function() {
        console.log('window loaded');
        }); 
        ```
    * 表格

        行间每个单元格用`|`, 表头的行用横线`---`间隔, 可以通过这个间隔指定对齐方式

            :--- 代表左对齐
            :--: 代表居中对齐
            ---: 代表右对齐
        例子

        ```
        name | age
        ---: | ---:
        LearnShare | 12
        Mike |  32
        ```

        name | age
        ---: | ---:
        LearnShare | 12
        Mike |  32

        表格内部的单元格也可以有其他标记

    * 事件列表
      ```
      - [ ] Eat
      - [x] Code
        - [x] HTML
        - [x] CSS
        - [x] JavaScript
      - [ ] Sleep
       ```
    - [ ] Eat
    - [x] Code
      - [x] HTML
      - [x] CSS
      - [x] JavaScript
    - [ ] Sleep


* 变种
        
    在不同编辑器会有一定的变种和自定义的语法, 一些特殊的笔记文档插件,还可以做到它们之间的转换


## markdown GFM 规范
在遵循前面介绍的规范时,会发现, 仍然会有一些不太一样的标准, GFM就是Github推出的标准

主要是规定一些细节, 
  * 空行, 不要多余空行, 文件末空行,标题前后空行
  * 空格, 中文与英文,数字,单文等组合都需要加空格 
  * 标点问题, 专有名词等
    
    不再一一介绍,慢慢注意吧

**这里建议可以讲中文标点切换成英文标点, 书写会变得非常流畅**

## vue_press 博客 [Markdown 扩展语法][4]

因为用 `vue_press` 做博客, 需要进一步了解vue_press mark

* 标题自动应用置顶的锚点链接

    好像默认一级的标题会应用,导致md文件只能用二级了

* 内部链接
  
    内部文件 `README` 会被当做路由,之间也可以互相链接

* 链接重定向
  
    似乎一个兼容的行为, 但是可能会导致奇怪的问题

* 外部链接
    可以定义属性

* Front Matter

    一个 `yaml` 格式,可以做为md文件的正文或者作为定义的组件
    例如在 vuepress_reco, 定义了主题和文档的属性等信息

* github 风格表格

    好吧, 我身在其中没发现不同

* [emoji 表情][5]

    :tada: 

    :100:

    :smile:

    说实话, 不太能记住, 自己词汇量有点小, 如果能有一种更加开放的形式生成表情就好了


* 自动生成目录

    `[[toc]]`
    [[toc]]

* 自定义容器

  
  ```
    ::: tip
    这是一个提示
    :::

    ::: warning
    这是一个警告
    :::

    ::: danger
    这是一个危险警告
    :::

    ::: details
    这是一个详情块, 在 IE / Edge 中不生效
    :::
    
    ::: danger STOP
    危险区域, 禁止通行
    :::
    ```

后面的STOP相当于自定义标题

::: tip
这是一个提示
:::

::: warning
这是一个警告
:::

::: danger
这是一个危险警告
:::

::: details
这是一个详情块, 在 IE / Edge 中不生效
:::

::: danger STOP
危险区域, 禁止通行
:::


## 总结

#### 好记性不如烂笔头
   
虽然很基础的语法, 但是一段时间不写md文件, 总是忘掉

#### 套娃 
   
自己写该文档时, 总觉得自己在套娃

#### vuepress 博客体验
  
它的扩展语法还是很友好的, 但是可能容器有点作用吧, 其他意义不大, 如果能够有个后台直接界面编写, 可能好用一点
    
另外提一句vuepress的博客搭建体验还不太友好, 半自动化, 还老是遇到一些配置问题

[1]: https://markdown-zh.readthedocs.io/en/latest/ "markdown的中文文档"

[2]: http://xianbai.me/learn-md/index.html "Markdown 入门参考"

[3]: https://zhuanlan.zhihu.com/p/144446995 "基于 Markdown 的中文文档排版规范"

[4]: https://v1.vuepress.vuejs.org/zh/guide/markdown.html#%E7%9B%AE%E5%BD%95 "Markdown 拓展语法"

[5]: https://github.com/markdown-it/markdown-it-emoji/blob/master/lib/data/full.json "表情列表"

