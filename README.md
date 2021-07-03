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
无意中看到[这位网友的仓库里这样说到](https://github.com/CNAD666/MyData)
> 关于CSD加速超50兆限制问题：https://ysnsn.cn/GitHub-jsdelivr.html
坑点：https://zhaouncle.com/jsdelivr%E5%B0%8F%E5%9D%91%E7%B3%BB%E5%88%97/
坑：这里必须你是还没满 50M 的时候先创建的 master，否则等满了之后再创建就无效了
所以我这里也是踩到坑了，重新创建了一个新的 repo 创建了 master 的 release


写了一个shell来实现这个转换`cnd_url.sh`如下:
```bash
# !/bin/sh

MATCH_Prefix='https://github.com/'
URL_Prefix='https://cdn.jsdelivr.net/gh/'
URL=$1
RES=${URL_Prefix}${URL: ${#MATCH_Prefix}}
FILE_URL=${RES%blob*}${RES#*blob/*/}
echo $FILE_URL
open -a "/Applications/Safari.app" $FILE_URL
curl -o ~/Desktop/${FILE_URL##*/} $FILE_URL
echo "🚀🚀已成功下载至桌面"
```
调用: 
```bash
sh cnd_url.sh https://github.com/WangGuibin/MyFilesRepo/blob/master/README.md
#output
https://cdn.jsdelivr.net/gh/WangGuibin/MyFilesRepo/README.md
```

Mac上shell配合`自动操作`如下图
![](https://cdn.jsdelivr.net/gh/WangGuibin/MyFilesRepo/images/readme_icon00001.png)
![](https://cdn.jsdelivr.net/gh/WangGuibin/MyFilesRepo/images/readme_icon00002.png)
![](https://cdn.jsdelivr.net/gh/WangGuibin/MyFilesRepo/images/readme_icon00003.png)
![](https://cdn.jsdelivr.net/gh/WangGuibin/MyFilesRepo/images/readme_icon00004.png)
![](https://cdn.jsdelivr.net/gh/WangGuibin/MyFilesRepo/images/readme_icon00005.png)


手机上使用快捷指令[下载地址](https://www.icloud.com/shortcuts/c0a21ee9ab6c41b7aa91bb2be16130a7) 使用效果更佳~


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

