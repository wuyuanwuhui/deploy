

vt-x/amd-v Ӳ������������ϵͳ�в����� ��� 64 λ��������޷���⵽64-λ������

# ������ο� https://blog.csdn.net/hel12he/article/details/51107236 

rpm -ivh https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm   

rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm

# ����ǽ

$ systemctl stop firewalld.service 
$ systemctl disable firewalld.service #��ֹ��������

yum install iptables-services
systemctl start iptables.service
systemctl enable iptables.service

vim /etc/sysconfig/iptables 

systemctl restart iptables.service


-A INPUT -p tcp -m tcp --dport 22 -j ACCEPT

yum list --enablerepo=remi --enablerepo=remi-php72 | grep php72

yum install --enablerepo=remi --enablerepo=remi-php72 php php-opcache php-pecl-apcu php-devel php-mbstring php-mcrypt php-mysqlnd php-pecl-xdebug php-pdo php-pear php-fpm php-cli php-xml php-bcmath php-process php-gd php-common php-json php-imap php-pecl-redis php-pecl-memcached php-pecl-mongodb


--------------------- 
���ߣ����Ǵ��� 
��Դ��CSDN 
ԭ�ģ�https://blog.csdn.net/hel12he/article/details/51107236 
��Ȩ����������Ϊ����ԭ�����£�ת���븽�ϲ������ӣ�

systemctl start php-fpm
systemctl enable php-fpm 

-------------------------------------------------------------------------------------------

php ��װ�µ���չ 

wget http://pecl.php.net/get/zip-1.18.0.tgz

tar -xzvf zip-1.18.0.tgz
cd zip-1.18.0
/usr/bin/phpize
./configure --with-php-config=/usr/bin/php-config

wget https://libzip.org/download/libzip-1.6.1.tar.gz
tar -xzvf libzip-1.6.1.tar.gz

# ��װcmake
https://cmake.org/files/v3.6/cmake-3.6.0-Linux-x86_64.tar.gz

wget https://cmake.org/files/v3.10/cmake-3.10.0-Linux-x86_64.tar.gz


-------------------------------------------------------------------------------------------
mysql root vagrant2018

# git ��װʹ��
yum install git

ssh-keygen -t rsa -C "2263xxxxxx@qq.com"

ll /root/.ssh

github add ssh key # ����ssh key

git config --global user.name "Wuyuanwuhui"
git config --global user.email 2263xxxxxx@qq.com


github add ssh key

����ssh key�Ƿ�ɹ���ʹ�����ssh -T git@github.com�����������You��ve successfully authenticated, but GitHub does not provide shell access ����ͱ�ʾ�ѳɹ�����github��

git clone git@github.com:wuyuanwuhui/yii2-advanced.git

git init # ������ǴӲֿ�clone�������ļ��У���ʹ�ó�ʼ��һ��git �����ļ���

git remote add origin git@github.com:wuyuanwuhui/golang.git  # �ڱ����ļ��й���Զ�ֿ̲�

-------------------------------------------------------------------------------------------

git init --bare #Զ�̽������

ʹ�� git init --bare <repo> ���Դ���һ����ֿ⣬��������ֿ��ǿ��Ա����� clone �� push ���µģ� ��ֿⲻ���������������Բ������������ֿ���ֱ���ύ����������

git remote add origin git@github.com:wuyuanwuhui/golang.git
git add -A
git commit -m "add new files"
git push -u origin master
git push -u origin dev:dev
git pull origin master

git config -l #�鿴����

ʹ�ô�д��D ǿ��ɾ��  git branch -D XXX   

git branch -a
git branch -r
git log --oneline --graph #��ʾ����֧���Է�֧git��־ ��ǰ������Ǻţ�
git remote -v #�鿴�������
git remote remove origin
git remote add origin git@github.com:wuyuanwuhui/yii2.git

git ǿ����ȡԶ�̴��븲�Ǳ��� 

git fetch --all 
git reset --hard origin/master
git pull

smartgit

-------------------------------------------------------------------------------------------

yum install php-zip

yum install libzip

pecl install zip

pecl channel-update pecl.php.net

composer config -g repo.packagist composer https://packagist.phpcomposer.com
composer config -g --unset repos.packagist

composer config -l

-------------------------------------------------------------------------------------------

�ܾ�û�������ˣ� ��������һ�� yii2, nginx���úú�һֱ���ʲ��ˣ�ԭ�������õ�������� ���ʵ�ַҪ�Ӷ˿�ѽ 8080

-------------------------------------------------------------------------------------------
yii migrate ������

php yii migrate/create test_table

php yii migrate

yii migrate/create create_post --fields="title:string,body:text"

./yii migrate --migration-path=@yii/rbac/migrations

-------------------------------------------------------------------------------------------

composer create-project --prefer-dist yiisoft/yii2-app-advanced app 2.0

php yii help gii/model

php yii gii/model --tableName=user --generateLabelsFromComments=1 --modelClass=TestUser --ns=common\\models  (what the fuck ? �����\\����)

php yii gii/controller --controllerClass='frontend\controllers\FormController' (linux�±���������)

yii gii/controller --controllerClass='frontend\controllers\CacheController' --viewPath='frontend\views\cache'  // ������ָ�����������ɲ���

php yii gii/form --modelClass='frontend\models\TestForm' --viewName='form/test' --viewPath='frontend/views'

php yii gii/module --moduleClass='frontend\modules\user\Module' --moduleID=user

-------------------------------------------------------------------------------------------

ģ��ID / ������ID / ����ID

composer require --prefer-dist yiisoft/yii2-redis	��װredis ��չ

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

�ǶԳƼ��� RSA����

token �Ǽ��ܵ� ��Ҫ�ٴν��� �ٴ�

�طŹ���

��Ȩ���������ڵ�һ����Ȩ����ʱһ�𷵻� access token ��refresh token���ں���ˢ�� access token ʱֻ��Ҫ refresh token�� access token �� refresh token �������ͼ�ǲ�һ���ģ�access token ����������ͻ��˺���Դ������֮�佻������ refresh token �Ǳ���������ͻ��˺���Ȩ������֮�佻����

refresh token ���������Ҫ���û����µ�¼�����Ҽ���֤��

architecture 

���ӽӿڶ��ⱻ���ö���ˢ

access_token �� refresh_token й©

ʹ��HTTPS��ֹץ��

PHP ������ͽӿ�����? https://www.jb51.net/article/158230.htm

������ע�ص����࣬���ӿ�ע�ص��Ƿ������塣

-------------------------------------------------------------------------------------------

http://local.yii2.api:8080/users?fields=id,email


composer create-project --prefer-dist laravel/laravel laravel7

-------------------------------------------------------------------------------------------

cat /etc/redhat-release �鿴ϵͳ��Ϣ

timedatectl list-timezones 

timedatectl set-timezone Asia/Shanghai #����ʱ��Ϊ�Ϻ�ʱ��


-------------------------------------------------------------------------------------------

��vagrant�ϰ�װdocker

����ʱ�� �ƻ���


interface  �ӿ�

class  �ӿڵ�ʵ��

-------------------------------------------------------------------------------------------

laravel ��Լ contracts �����൱������ע��

middleware �м��  �൱�� ������ filters AccessControl

Route::resource('photos', 'PhotoController');  # �����Դ������ �൱��yii restful

Route::apiResources([
    'photos' => 'PhotoController',
    'posts' => 'PostController'
]);

��Դ������