# 1. 首先在本地创建ssh key
```
$ ssh-keygen -t rsa -C "your@mail.com"
```
**your@mail.com是在github上注册的邮箱，之后会要求确认路径和输入密码，可以使用默认的一路回车。成功的话会在~/下生成.ssh文件夹，进去，打开id_rsa.pub，复制里面的key。**

![](https://upload-images.jianshu.io/upload_images/19067926-0bd170793cb0a10f?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
**回到github账户上，进入 Account Settings（账户配置），左边选择SSH ,title随便填，粘贴在你电脑上生成的key**
![](https://upload-images.jianshu.io/upload_images/19067926-7dec7bca57791c74?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![](https://upload-images.jianshu.io/upload_images/19067926-674be3775a8ad0cb?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

# 2. 基本信息设置
### 1. 设置用户名
```
$ git config --global user.name "Your Name"
```
### 2. 设置用户名邮箱
```
$ git config --global user.email "email@163.com"
```
### 3、查看信息
```
$  git config --list
```
![](https://upload-images.jianshu.io/upload_images/19067926-30c218bd6fe48d14?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
**注：git 解决fatal: Not a git repository**
```
$ git init
```

**注：该设置在github仓库主页显示谁提交了该文件**
# 3. Git克隆操作
### 将想要修改的远程仓库（github对应的项目）复制到本地
```
git clone 仓库地址
```

![](https://upload-images.jianshu.io/upload_images/19067926-163a8b61d1ca120e?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
#### 注：克隆后要cd到克隆的仓库中（```$ cd 仓库名 ```），否则 git push时会报错
![](https://upload-images.jianshu.io/upload_images/19067926-09e6081b95a6e7c0.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
# 4. 直接在克隆的本地仓库中修改文件
# 5. 修改文件提交 
```
$ git add 文件名
```

![](https://upload-images.jianshu.io/upload_images/19067926-89a72ea38b3bbceb?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
```
$ git commit -m ‘对修改文件描述’
```

![](https://upload-images.jianshu.io/upload_images/19067926-fdd2db4c42f57257?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
**最后从本地上传到github**
```
$ git push
```

![](https://upload-images.jianshu.io/upload_images/19067926-3d71f8a177cf729a?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


## 注：Git push 有时会报如下错误
```
The requested URL returned error:403 Forbidden while accessing
```
### 解决方法：
**在/.git文件夹中找到config文件，记事本打开，进行如下修改:**
#### 将
```
[remote "origin"]
	url = https://github.com/用户名/仓库名.git
```
#### 修改为：
```
[remote "origin"]
	url = https://用户名:密码@github.com/用户名/仓库名.git
```


## [Git bash终端中文输出显示乱码问题](https://jingyan.baidu.com/article/c35dbcb0b12d848917fcbc5b.html)

## 注：Git push 报错：
```
! [rejected]        master -> master (fetch first)
error: failed to push some refs to 'https://github.com/xxxx/xxxx.git'
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
```
### 原因：
 **远程仓库与本地仓库文件不一致造成的**
### 解决方法:
**先将远程仓库中的文件同步到本地仓库，然后再 git push。具体如下：**

#### 1 远程与本地文件同步，自动合并
```
$ git pull origin master
```
**或者**
```
$ git pull --rebase origin master
```
**--rebase的作用是取消掉本地库中刚刚的commit，并把他们接到更新后的版本库之中。**
#### 2 再上传
```
$ git push -u origin master
```
**或者**
```
$ git push
```