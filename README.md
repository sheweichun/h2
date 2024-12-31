
c28371cb4ba84256439ac99417463a24

/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-web-security
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-web-security --user-data-dir=~/.tmp

#服务器
账号 root
密码 Qq18521068045
5JhTP0Lu5uvvu8T4

scp root@124.223.159.182:/usr/local/nginx/conf/nginx.conf

scp ./nginx.conf root@124.223.159.182:/usr/local/lighthouse/softwares/nginx/conf/

scp 文件上传
ssh-copy-id user@host 无密码上传

https://console.dnspod.cn/dns/ehpp.club/record 域名解析
 
https://console.cloud.tencent.com/ssl SSL证书

https://cloud.tencent.com/document/product/400/35244 证书安装

https://console.cloud.tencent.com/lighthouse/instance/index 

netstat -lanutp | grep 80




#线上环境

数据库 https://826625173.ehpp.club/phpmyadmin/tbl_structure.php?db=cAuth&table=cBonusInfo 

小程序 https://mp.weixin.qq.com/wxopen/initprofile?action=home&lang=zh_CN&token=1695512211

腾讯云 https://console.qcloud.com/lav2/production

我的域名 https://console.cloud.tencent.com/domain

knex https://knexjs.org/#Builder-orderBy

https://826625173.ehpp.club/phpmyadmin/

域名证书 https://console.cloud.tencent.com/ssl/dsc/apply

域名解析添加 https://console.cloud.tencent.com/cns

open -a "Google Chrome" --args --disable-web-security  --user-data-dir=/tmp


工单记录  https://console.cloud.tencent.com/workorder


本地开发阶段 由于接口跨域 导致cookie无法写入

~/npmplace/gather/packages/gather/bin/gather.js dev -d


https://developers.weixin.qq.com/community/develop/doc/0006a0a74dcb8093711bd54bb5b800

# 重置mysql密码

1.打开系统设置里的mysql 关闭mysql
2. sudo mysqld_safe --skip-grant-tables
3. flush privileges;
4. update user set password=password('JJAdegxC1') where user='root'

# 代码上传
打开 https://console.cloud.tencent.com/lighthouse/instance/index

tar -cvzf ehpp.tar.gz --exclude=\.git --exclude=node_modules --exclude=uploads --exclude="\.*" ./server

scp -r ehpp.tar.gz root@124.223.159.182:/home/lighthouse 

tar -zxvf ehpp.tar.gz

# 启动服务
cd /home/lighthouse/server
rm -rf /home/lighthouse/server/controllers/\._*
pm2 start process.prod.json
# 关闭服务
pm2 stop all

NODE_ENV=development DEBUG=*,-nodemon:*,-nodemon,-knex:pool node app.js


# 删除跑步数据

SELECT FROM_UNIXTIME(timestamp), uid FROM `cauth`.`cruninfo` where FROM_UNIXTIME(timestamp) < '2022-06-30 00:00:00'
DELETE FROM `cauth`.`cruninfo` where FROM_UNIXTIME(timestamp) < '2022-06-30 00:00:00'

# SSL证书到期更新
域名证书 https://console.cloud.tencent.com/ssl/dsc/apply 去这里
快到期的时候有个入口让你重新申请新的证书  然后按照下面进行新的证书部署



# SSL证书部署

scp -r ~/Downloads/www.h2phb.com_nginx.zip root@124.223.159.182:/usr/local/lighthouse/softwares/nginx/conf/
unzip 826625173.ehpp.club_nginx.zip
mv ./826625173.ehpp.club_nginx/* ./
/usr/local/lighthouse/softwares/nginx/sbin/nginx -s reload

# 证书验证
证书安装检验器 https://www.myssl.cn/tools/check-server-cert.html

域名解析检测工具 https://tool.dnspod.cn/

scp -r ~/Downloads/www.sheweichun.club_nginx.zip root@124.223.159.182:/usr/local/lighthouse/softwares/nginx/conf/



https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com


# 数据库操作

使用mysql.raw 返回值应该取response[0] response[1]为元数据信息

# 浏览器跨域支持
//chrome 浏览器
open -a "Google Chrome" --args --disable-web-security  --user-data-dir=/tmp