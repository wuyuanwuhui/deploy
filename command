

vt-x/amd-v 硬件加速在您的系统中不可用 你的 64 位虚拟机将无法检测到64-位处理器

# 环境搭建参考 https://blog.csdn.net/hel12he/article/details/51107236 



tar zxvf nginx-1.5.0.tar.gz
cd nginx-0.8.46/
./configure --user=www --group=www --prefix=/usr/local/nginx --with-http_stub_status_module --with-http_ssl_module
make && make install
cd ../


rpm -ivh https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm   

rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm

# 防火墙

$ systemctl stop firewalld.service 
$ systemctl disable firewalld.service #防止开机启动

yum install iptables-services
systemctl start iptables.service
systemctl enable iptables.service

vim /etc/sysconfig/iptables 

systemctl restart iptables.service
systemctl stop iptables.service

sudo firewall-cmd --state

-A INPUT -p tcp -m tcp --dport 22 -j ACCEPT

yum list --enablerepo=remi --enablerepo=remi-php72 | grep php72

yum install --enablerepo=remi --enablerepo=remi-php72 php php-opcache php-pecl-apcu php-devel php-mbstring php-mcrypt php-mysqlnd php-pecl-xdebug php-pdo php-pear php-fpm php-cli php-xml php-bcmath php-process php-gd php-common php-json php-imap php-pecl-redis php-pecl-memcached php-pecl-mongodb


--------------------- 
作者：我是大愚 
来源：CSDN 
原文：https://blog.csdn.net/hel12he/article/details/51107236 
版权声明：本文为博主原创文章，转载请附上博文链接！

systemctl start php-fpm
systemctl enable php-fpm 

-------------------------------------------------------------------------------------------

php 安装新的扩展 

wget http://pecl.php.net/get/zip-1.18.0.tgz

tar -xzvf zip-1.18.0.tgz
cd zip-1.18.0
/usr/bin/phpize
./configure --with-php-config=/usr/bin/php-config

wget https://libzip.org/download/libzip-1.6.1.tar.gz
tar -xzvf libzip-1.6.1.tar.gz

# 安装cmake
https://cmake.org/files/v3.6/cmake-3.6.0-Linux-x86_64.tar.gz

wget https://cmake.org/files/v3.10/cmake-3.10.0-Linux-x86_64.tar.gz


-------------------------------------------------------------------------------------------
mysql root vagrant2018

# git 安装使用
yum install git

ssh-keygen -t rsa -C "2263xxxxxx@qq.com"

ll /root/.ssh

github add ssh key # 添加ssh key

git config --global user.name "Wuyuanwuhui"
git config --global user.email 2263xxxxxx@qq.com


github add ssh key

测试ssh key是否成功，使用命令“ssh -T git@github.com”，如果出现You’ve successfully authenticated, but GitHub does not provide shell access 。这就表示已成功连上github。

git clone git@github.com:wuyuanwuhui/yii2-advanced.git

git init # 如果不是从仓库clone出来的文件夹，则使用初始化一个git 本地文件夹

git remote add origin git@github.com:wuyuanwuhui/golang.git  # 在本地文件夹关联远程仓库

-------------------------------------------------------------------------------------------

git init --bare #远程建立裸仓

使用 git init --bare <repo> 可以创建一个裸仓库，并且这个仓库是可以被正常 clone 和 push 更新的， 裸仓库不包含工作区，所以并不会存在在裸仓库上直接提交变更的情况。


git remote add origin git@github.com:wuyuanwuhui/golang.git
git checkout master
git pull
git fetch --all

git add -A
git commit -m "add new files"
git push -u origin master
git push -u origin dev:dev
git pull origin master

git config -l #查看配置

使用大写的D 强制删除  git branch -D XXX   

git branch -a
git branch -r
git log --oneline --graph #显示主分支和自分支git日志 （前面会多个星号）
git remote -v #查看关联情况
git remote remove origin
git remote add origin git@github.com:wuyuanwuhui/yii2.git

git push到GitHub的时候遇到! [rejected] master -> master (non-fast-forward)的问题

可以使用强行拉去代码同步消除差异，然后再提交即可

git 强制拉取远程代码覆盖本地 

git fetch --all 
git reset --hard origin/develop
git pull

smartgit

-------------------------------------------------------------------------------------------

yum install php-zip

yum install libzip

pecl install zip

pecl channel-update pecl.php.net

composer config -g repo.packagist composer https://packagist.phpcomposer.com

#解除镜象
composer config -g --unset repos.packagist
composer config -l

composer create-project --prefer-dist yiisoft/yii2-app-advanced app

composer require yiisoft/yii2-elasticsearch


composer require --prefer-dist yiisoft/yii2-elasticsearch:"~2.0.0"

-------------------------------------------------------------------------------------------

很久没部署东西了， 今天摸了一下 yii2, nginx配置好后一直访问不了，原来忘了用的是虚拟机 访问地址要加端口呀 8080

-------------------------------------------------------------------------------------------
yii migrate 创建表

php yii migrate/create test_table

php yii migrate

yii migrate/create create_post --fields="title:string,body:text"

./yii migrate --migration-path=@yii/rbac/migrations

-------------------------------------------------------------------------------------------

composer create-project --prefer-dist yiisoft/yii2-app-advanced app 2.0

php yii help gii/model

php yii gii/model --tableName=user --generateLabelsFromComments=1 --modelClass=TestUser --ns=common\\models  (what the fuck ? 必须加\\才行)

php yii gii/controller --controllerClass='frontend\controllers\FormController' (linux下必须用引号)

yii gii/controller --controllerClass='frontend\controllers\CacheController' --viewPath='frontend\views\cache'  // 这个最好指定，否则生成不了

php yii gii/form --modelClass='frontend\models\TestForm' --viewName='form/test' --viewPath='frontend/views'

php yii gii/module --moduleClass='frontend\modules\user\Module' --moduleID=user

-------------------------------------------------------------------------------------------

模块ID / 控制器ID / 操作ID

composer require --prefer-dist yiisoft/yii2-redis	安装redis 扩展

composer require --prefer-dist yiisoft/yii2-redis:"~2.0.0"

http://local.yii2.api:8080/users/2

{
  "username": "lovehy for ever",
}

{
  "success": true,
  "code": 200,
  "message": "OK",
  "data": {
    "id": 2,
    "username": "bulajiwoaini",
    "auth_key": "jgfhf1111111",
    "password_hash": "0000000gvfd",
    "password_reset_token": "oud333999",
    "email": "bulaji@163.com",

    "status": 10,
    "created_at": 1111111,
    "updated_at": 1111111,
    "verification_token": ""
  }
}

alter table user add column access_token varchar(255) default '';
alter table user add column `allowance_updated_at` int(11) NOT NULL DEFAULT '0';

 `allowance` int(11) NOT NULL DEFAULT '0',
  `allowance_updated_at` int(11) NOT NULL DEFAULT '0',

非对称加密 RSA加密

token 是加密的 需要再次解密 再传

重放攻击

授权服务器会在第一次授权请求时一起返回 access token 和refresh token，在后面刷新 access token 时只需要 refresh token。 access token 和 refresh token 的设计意图是不一样的，access token 被设计用来客户端和资源服务器之间交互，而 refresh token 是被设计用来客户端和授权服务器之间交互。

refresh token 如果过期则要求用户重新登录，并且加验证码

architecture 

增加接口恶意被调用恶意刷

access_token 和 refresh_token 泄漏

使用HTTPS防止抓包

PHP 抽象类和接口区别? https://www.jb51.net/article/158230.htm

抽象类注重的是类，而接口注重的是方法定义。

-------------------------------------------------------------------------------------------

http://local.yii2.api:8080/users?fields=id,email


composer create-project --prefer-dist laravel/laravel laravel7

-------------------------------------------------------------------------------------------

cat /etc/redhat-release 查看系统信息

timedatectl list-timezones 

timedatectl set-timezone Asia/Shanghai #设置时区为上海时区


-------------------------------------------------------------------------------------------

在vagrant上安装docker

评估时间 计划等


interface  接口

class  接口的实现

-------------------------------------------------------------------------------------------

laravel 契约 contracts 就是相当于依赖注入

middleware 中间件  相当于 过滤器 filters AccessControl

Route::resource('photos', 'PhotoController');  # 这个资源控制器 相当于yii restful

Route::apiResources([
    'photos' => 'PhotoController',
    'posts' => 'PostController'
]);

资源控制器

-------------------------------------------------------------------------------------------

mysql 连接池https://blog.csdn.net/yp4822063/article/details/42521215?depth_1-utm_source=distribute.pc_relevant.none-task-blog-BlogCommendFromBaidu-1&utm_source=distribute.pc_relevant.none-task-blog-BlogCommendFromBaidu-1


php 和 golang 性能

php opcache 开启后性能


一群傻×，嘚吧嘚吧的，狗屁不懂在那里胡说，对比网络，编译丢失的性能完全可以忽略不计，楼主你敢试试用nginx+php-fpm，然后用长连接去连接mysql和redis，看看速度会比golang慢？别傻了，php用了长连接之后在php-fpm下面就相当于连接池了，例如你开启了static 400个php-fpm，那么就初始化400个连接到redis或者mysql，永远不断开，这就是连接池，速度和golang是一样的，稳定性还更高


sso 单点登录


-------------------------------------------------------------------------------------------

mysql使用truncate截断带有外键的表时报错--解决方案 https://www.cnblogs.com/hougang/p/mysql_truncate.html

SET FOREIGN_KEY_CHECKS=0;  


php yii genitem/run --search-path='backend/modules'  use-cache=0


解决yii2 资源文件不自动更新而是出现乱码的问题，直接删除文件刷新一下再重新建立后才行