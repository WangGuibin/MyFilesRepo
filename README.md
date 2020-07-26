# MyFilesRepo
存一些图片或者文件资源,充当图床的作用

## 读取图片规则:

**https://github.com/<UserName>/<RepoName>/blob/<BranchName>/images/<FileName>?raw=true**
例如: 
`https://github.com/WangGuibin/MyFilesRepo/blob/master/images/staticlib1.png?raw=true`

```md
![](https://github.com/WangGuibin/MyFilesRepo/blob/master/images/staticlib1.png?raw=true)

```
或

```html
<img src="https://github.com/WangGuibin/MyFilesRepo/blob/master/images/staticlib1.png?raw=true" alt="" loading="lazy">

```