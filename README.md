# MyFilesRepo
存一些图片或者文件资源,充当图床的作用

## 读取图片规则:

直接读取repo地址
https://github.com/UserName/RepoName/blob/BranchName/images/FileName?raw=true

或者部署到`git-pages`
**http://wangguibin.github.io/post-images/1560696125636.png**

例如: 
`https://github.com/WangGuibin/MyFilesRepo/blob/master/images/staticlib1.png?raw=true`

```md
![](https://github.com/WangGuibin/MyFilesRepo/blob/master/images/staticlib1.png?raw=true)

```
或

```html
<img src="https://github.com/WangGuibin/MyFilesRepo/blob/master/images/staticlib1.png?raw=true" alt="" loading="lazy">

```

```html
<!-- 免费的CDN小技巧 https://cdn.jsdelivr.net/gh/<username>/<repoName>/xxx/xxx 真的香~  -->
![](https://cdn.jsdelivr.net/gh/WangGuibin/MyFilesRepo/images/avatar.png)
```

写了一个shell来实现这个转换`cnd_url.sh`如下:
```bash
# !/bin/sh

MATCH_Prefix='https://github.com/'
URL_Prefix='https://cdn.jsdelivr.net/gh/'
URL=$1
RES=${URL_Prefix}${URL: ${#MATCH_Prefix}}
FILE_URL=${RES%blob*}${RES#*blob/*/}
echo $FILE_URL
open -a "/Applications/Safari.app" $FILE_URL #直接使用打开safari
```
调用: 
```bash
sh cnd_url.sh https://github.com/WangGuibin/MyFilesRepo/blob/master/README.md
#output
https://cdn.jsdelivr.net/gh/WangGuibin/MyFilesRepo/README.md
```



## 一些Github的实用小技巧
### 下载某分支代码
https://github.com/UserName/RepoName/archive/BranchName.zip
### 只下载部分目录或者文件
**http://zhoudaxiaa.gitee.io/downgit/#/home**

### 个人简介的最近动态图表展示
```html
<!-- 自己配置用户名和颜色 -->
<img align="right" src="https://github-readme-stats.vercel.app/api?username=<UserName>&show_icons=true&icon_color=805AD5&text_color=2edfa3&bg_color=ffffff&hide_title=true&title_color=20a0ff" alt="CoderWGB's GitHub Stats">
```
### [生成代码图片](https://carbon.now.sh)
```
https://carbon.now.sh
```
### [自定义徽章图标](https://shields.io)
```
https://shields.io
```

### [生成star统计数据图表](https://stars.medv.io)
```
https://stars.medv.io
```
https://starchart.cc/caarlos0/starcharts

