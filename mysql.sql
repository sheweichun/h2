

-- DMC dump 1.0.0
-- ------------------------------------------------------
    
-- ----------------------------
-- Table structure for caddress
-- ----------------------------
    
CREATE TABLE `caddress` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `province` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `city` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `region` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `info` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `phone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=603 DEFAULT CHARSET=latin1;
      
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (1,'广东省','广州市','海珠区','123的','13524050272','吱吱','2021-08-29 00:02:49',34);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (2,'浙江省','杭州市','余杭区','dsadasda44','dsadasdas','sdadasdbb','2021-08-29 00:05:41',122);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (3,'湖南省','长沙市','芙蓉区','111','13816972821','许丕婧','2021-08-30 18:34:25',125);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (4,'上海市','上海市','长宁区','123','13524050272','吱吱','2021-08-30 18:58:12',34);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (5,'浙江省','杭州市','下城区','kjjhjkhkhhk','18521068045','佘伟春1134','2021-09-05 22:57:52',122);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (6,'上海市','上海市','普陀区','交通路2779号','18516375753','袁晓琳','2021-09-05 23:25:42',23);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (7,'浙江省','杭州市','富阳区','春江街道澳海香樟苑1号楼1202','13675865873','倪热明','2021-09-06 17:26:15',508);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (8,'浙江省','杭州市','富阳区','胥口镇樘棣村海棠公寓','15967630302','陈伟军','2021-09-06 22:13:11',2278);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (9,'浙江省','杭州市','富阳区','胥口镇海正宿舍','18311666401','袁超','2021-09-07 07:58:49',2315);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (10,'浙江省','杭州市','富阳区','万市镇万市玻璃店','13675895924','陈瑜','2021-09-07 13:15:50',2176);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (11,'浙江省','杭州市','富阳区','文教北路973号人才公寓2幢3单元705室','18257104616','钱勤','2021-09-07 13:37:17',1529);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (12,'浙江省','杭州市','富阳区','浙江省杭州市富阳区胥口镇海正公寓老宿舍A615','17280028406','卢福强','2021-09-08 09:36:28',1525);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (13,'上海市','上海市','徐汇区','枫林路381号','13918862583','陈超','2021-09-08 11:30:31',1314);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (14,'浙江省','杭州市','富阳区','胥口镇海正宿舍','15158191892','吴国华','2021-09-08 21:01:57',1184);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (15,'上海市','上海市','徐汇区','枫林路381号瀚晖收发室','13916003180','陈蕾蕾','2021-09-08 21:10:12',166);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (16,'内蒙古自治区','包头市','九原区','赛汗街道沙河西街御融观邸6号楼3单元1706','18701037263','高女士','2021-09-10 21:07:19',1770);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (17,'上海市','上海市','长宁区','法华镇路457弄12号1301','18930963153','阳俐','2021-09-13 06:14:53',397);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (18,'北京市','北京市','朝阳区','广渠门外大街5号院51号楼1601','13313600021','佟忠','2021-09-13 07:16:36',1648);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (19,'上海市','上海市','浦东新区','紫叶路147弄1号快递柜','13636564425','何佳蔚','2021-09-13 22:02:04',218);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (20,'浙江省','杭州市','富阳区','东洲街道陆家浦兴陆路151号','15158899836','俞雷廷','2021-09-14 06:07:46',190);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (21,'甘肃省','兰州市','城关区','大砂坪亚太嘉园二号楼一单元','13993183436','杜佳静','2021-09-14 07:04:02',457);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (22,'浙江省','杭州市','富阳区','棠棣村海棠苑公寓','19817151854','杨玉玲','2021-09-14 16:39:50',1763);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (23,'浙江省','杭州市','富阳区','新登松溪家园藻山苑12幢','18551681196','张冬生','2021-09-14 22:05:41',301);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (24,'上海市','上海市','闵行区','莘南路98弄3栋104室','15683011412','胡刘芳','2021-09-15 07:10:24',1655);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (25,'浙江省','金华市','婺城区','金地花园10－1－502','13868987829','王飞阳','2021-09-15 10:08:04',147);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (26,'浙江省','杭州市','富阳区','胥口镇下练村红云饭店快递点','13738178568','周火英','2021-09-15 13:27:07',2044);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (27,'浙江省','杭州市','富阳区','新登镇环城北路18号18－2－502','13777441757','戴光育','2021-09-15 20:36:40',2055);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (28,'上海市','上海市','徐汇区','枫林路381号','13817843361','周俊洁','2021-09-16 13:34:19',742);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (29,'广东省','佛山市','禅城区','绿景二路保利天玺二座二栋1310','13420058855','李均仪','2021-09-16 14:12:27',2320);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (30,'浙江省','杭州市','富阳区','新登镇滨溪家园','15867148854','金迎宵','2021-09-16 14:59:42',882);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (31,'上海市','上海市','闵行区','漕宝路1508弄75号302','15921473223','是雯瑾','2021-09-16 14:59:49',625);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (32,'上海市','上海市','徐汇区','枫林路381号','13761874361','王莉','2021-09-16 15:00:02',191);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (33,'浙江省','杭州市','富阳区','胥口镇海正公寓（老宿舍传达室）','15990093456','许华良','2021-09-16 15:02:23',2348);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (34,'浙江省','杭州市','上城区','凤起东路189号滨江新城时代广场1幢21楼','13575717520','俞琢','2021-09-17 11:16:02',391);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (35,'北京市','北京市','朝阳区','朝阳区中环世贸D座2102','13012085767','蒋梦笛','2021-09-18 10:11:45',943);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (36,'浙江省','杭州市','富阳区','新登镇新堰阳光家园','18767160222','萤火虫','2021-09-18 12:07:14',735);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (37,'辽宁省','营口市','西市区','和心花园二期','13940513676','熊英','2021-09-19 06:36:08',501);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (38,'浙江省','杭州市','上城区','九堡街道万科魅力之城','17606712215','陆常辉','2021-09-19 15:50:32',136);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (39,'上海市','上海市','静安区','闻喜路269号601','13601749432','吴文君','2021-09-19 18:37:46',1807);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (40,'山东省','潍坊市','奎文区','北苑街道金都时代新城','18706596791','张好强','2021-09-21 15:49:09',356);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (41,'江苏省','南通市','崇川区','海港新村44幢302室','13615213535','周晔','2021-09-22 12:36:56',243);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (42,'广东省','广州市','越秀区','环市东路362号好世界广场28楼','13826433612','汤毅莹','2021-09-22 15:37:06',880);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (43,'浙江省','杭州市','富阳区','新登镇新登工业区18号（05省道三山）杭州川野食品有限公司','15968890145','程燕','2021-09-23 18:30:47',609);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (44,'江苏省','南京市','玄武区','月苑四村13栋202','15850711069','孙君兰','2021-09-23 22:39:18',1551);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (45,'甘肃省','兰州市','城关区','五一山西路恒大二号院','13993183436','杜佳静','2021-09-24 21:09:22',457);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (46,'浙江省','杭州市','富阳区','胥口镇海正宿舍D404室','18955036280','刘广仁','2021-09-26 19:32:30',1199);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (47,'浙江省','杭州市','富阳区','胥口镇海正公寓','18268885534','骆洪斌','2021-09-27 09:22:49',2116);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (48,'浙江省','杭州市','富阳区','春江街道春江江临府(原富春江南)南区5#楼1803室','18757174076','赵洪波','2021-09-29 07:55:54',954);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (49,'浙江省','杭州市','富阳区','新登镇城东小店','13806518450','沈波','2021-09-29 16:03:43',842);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (50,'浙江省','杭州市','富阳区','富春街道苋浦路20号201','13777890751','章园圆','2021-09-29 18:10:59',413);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (51,'广东省','广州市','荔湾区','桥中街道花语水岸5栋1梯1602房','13760648171','陈艳虹','2021-09-29 21:43:44',412);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (52,'安徽省','合肥市','包河区','盛大德馨府小区','13739287279','王京京','2021-09-29 23:12:52',2352);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (53,'陕西省','西安市','雁塔区','公园南路9号鑫隆橄榄国际','15010380617','刘霜敏','2021-10-01 21:10:26',695);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (54,'浙江省','杭州市','富阳区','洞桥镇大溪村堰头校志小店','13429651709','方水英','2021-10-01 21:15:33',570);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (55,'上海市','上海市','徐汇区','枫林路381号','13817093609','孙尉蔚','2021-10-02 21:22:56',2026);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (56,'辽宁省','沈阳市','沈河区','南二经街81号1-5-3','15840126690','张晶','2021-10-06 22:16:04',2100);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (57,'安徽省','合肥市','蜀山区','金域华府8栋1603','18955105430','焦玲玲','2021-10-08 22:20:12',1206);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (58,'浙江省','杭州市','富阳区','官塘村落家亭36号天祥砂浆厂','18758158054','李巧玲','2021-10-09 11:18:43',550);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (59,'浙江省','杭州市','富阳区','胥口镇海正公寓','13819101575','曹双瑜','2021-10-10 21:33:11',556);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (60,'上海市','上海市','浦东新区','博成路1101号华泰金融大厦9F','13391123556','王云凌','2021-10-13 23:17:00',172);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (61,'浙江省','杭州市','富阳区','上林北路1号上林湖翡翠谷8-102','13606526930','边宁','2021-10-17 16:59:25',169);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (62,'广东省','中山市','小榄镇','广东中山市小榄镇广东省中山市小榄镇北区福兴学校接龙路7号理发店','13620392779','邱奕','2021-10-18 21:11:36',594);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (63,'浙江省','杭州市','富阳区','胥口镇海棠苑公寓','18952262008','刘浩','2021-10-19 21:28:30',526);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (64,'湖北省','武汉市','汉阳区','钟家村都市兰亭4-3-303','15926353020','何盼','2021-10-20 23:00:47',2349);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (65,'浙江省','杭州市','西湖区','余杭塘路418紫金文苑7幢','13616541448','尤优','2021-10-23 07:05:29',306);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (66,'北京市','北京市','顺义区','南法信镇焦各庄村','13391760896','瞿立志','2021-10-23 23:13:02',1833);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (67,'浙江省','杭州市','富阳区','胥口镇闻家桥头红羽宾馆','18768488198','赵晓波','2021-10-29 06:22:13',1934);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (68,'浙江省','杭州市','上城区','凤起东路189号新城时代广场1幢21楼','18768191892','裴晓晓','2021-10-29 22:48:57',647);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (69,'浙江省','杭州市','富阳区','富春街道云望之宸7-801','13757103243','罗先生','2021-10-31 21:06:25',596);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (70,'安徽省','芜湖市','弋江区','翰林公馆8栋二单元101','18255395885','毛飞','2021-11-01 22:13:39',474);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (71,'浙江省','台州市','仙居县','下各镇下各八村','15967630302','陈伟军','2021-11-01 23:01:54',2278);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (72,'上海市','上海市','徐汇区','枫林路381号瀚晖制药','15951006008','郝伟伟','2021-11-02 07:17:04',2096);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (73,'江苏省','无锡市','滨湖区','瑞星家园27号701','13400019030','吴思嘉','2021-11-02 21:03:45',1424);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (74,'广东省','中山市','五桂山街道','龙塘工业大道59号 保利领秀山 林语花园7-1-504','13798519547','刘丽娜','2021-11-02 22:53:17',138);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (75,'浙江省','杭州市','西湖区','文三西路亚洲城花园秋月阁西','18368866143','周乔君','2021-11-03 21:51:02',300);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (76,'安徽省','合肥市','蜀山区','贵池路领势公馆4-1404','13956063374','宣发强','2021-11-04 07:01:34',2119);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (77,'北京市','北京市','丰台区','城南嘉园益嘉园1号楼3单元1004\n','13349456897','宋文超','2021-11-04 22:11:47',2366);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (78,'北京市','北京市','通州区','西营前街皓月苑三十号楼五单元551','15541449235','关欧娜','2021-11-06 17:31:21',2367);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (79,'黑龙江省','哈尔滨市','道里区','三精家园一栋八单元602','18686777177','李玥','2021-11-07 22:48:22',1592);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (80,'浙江省','杭州市','富阳区','鹿山街道阳光城山水悦江府6号楼','15869105343','徐红梅','2021-11-08 07:04:39',2045);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (81,'浙江省','杭州市','上城区','滨江新城时代广场1幢21层','13958199920','张盈盈','2021-11-08 21:09:49',482);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (82,'浙江省','杭州市','富阳区','富春街道金苑路云望之宸7-801','13758258952','蒋丽','2021-11-09 18:59:24',595);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (83,'安徽省','合肥市','蜀山区','黄山西路金大地1912小区6栋','13866670123','胡锋','2021-11-09 19:04:39',1296);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (84,'浙江省','丽水市','龙泉市','回归工程广源街新劲空调门卫处','15990854386','王坛金','2021-11-10 21:57:11',165);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (85,'上海市','上海市','浦东新区','博成路1101号华泰金融大厦9层','15801892369','郭海龙','2021-11-11 15:39:29',109);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (86,'山东省','烟台市','芝罘区','中正山庄8-2-6','18653596521','张露瀚','2021-11-11 22:28:49',941);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (87,'陕西省','西安市','雁塔区','雁环路龙湖紫宸二期北门','13991989521','王毅秉','2021-11-13 10:55:53',985);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (88,'上海市','上海市','浦东新区','潍坊二村26号102室','13917471777','陈集杰','2021-11-13 13:14:56',723);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (89,'浙江省','杭州市','富阳区','胥口镇海正宿舍','15906608570','王勇生','2021-11-14 21:25:37',2227);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (90,'浙江省','宁波市','海曙区','柳庄街57号新高建材','15867228092','蔡泽豪','2021-11-14 23:54:08',2226);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (91,'福建省','福州市','鼓楼区','凤湖新城二区五号楼3004','15959178856','包偌锦','2021-11-16 21:57:36',983);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (92,'上海市','上海市','闵行区','中春路5839弄19号601室','13817576014','陆张龙','2021-11-17 13:01:43',442);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (93,'上海市','上海市','徐汇区','天平路42号501','13918217907','常慧玲','2021-11-17 15:02:35',536);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (94,'浙江省','杭州市','富阳区','胥口镇海正公寓（老宿舍）','13675826899','张朋朋','2021-11-18 08:03:40',2171);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (95,'浙江省','杭州市','富阳区','春江街道澳海香樟苑1304（西门）','13968142797','何富良','2021-11-19 18:32:37',2253);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (96,'浙江省','杭州市','富阳区','新登镇乘庄村澳海云樾赋名苑东区易莱克便利店','15088680294','杨飞','2021-11-20 22:14:01',1211);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (97,'浙江省','杭州市','富阳区','浙江省杭州市富阳区新登镇乘装村澳海云樾赋名苑13号楼3零1室','15094031768','韩莉','2021-11-20 22:14:01',567);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (98,'上海市','上海市','浦东新区','芳华路478弄62号602','13917255693','高玮','2021-11-20 23:10:09',890);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (99,'浙江省','杭州市','富阳区','胥口镇海正药业有限公司胥口宿舍','15858103752','陈江华','2021-11-22 06:43:39',2237);
INSERT INTO `caddress` (`id`,`province`,`city`,`region`,`info`,`phone`,`name`,`create_time`,`uid`) VALUES (100,'浙江省','杭州市','富阳区','胥口镇海正公寓门卫室','18257515162','郭晶晶','2021-11-27 07:34:15',507);
-- ----------------------------
-- Table structure for cadmin
-- ----------------------------
    
CREATE TABLE `cadmin` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(32) NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `super` tinyint(1) NOT NULL,
  `flag` tinyint(4) DEFAULT NULL COMMENT '是否启用1-启用 0-不启用',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='管理员';
      
INSERT INTO `cadmin` (`aid`,`name`,`user_name`,`password`,`create_time`,`super`) VALUES (1,'佘伟春','sheweichun','111111','2018-08-25 15:06:32',0);
INSERT INTO `cadmin` (`aid`,`name`,`user_name`,`password`,`create_time`,`super`) VALUES (2,'许丕婧','xupijing','123456','2018-08-25 15:06:32',1);
-- ----------------------------
-- Table structure for cappinfo
-- ----------------------------
    
CREATE TABLE `cappinfo` (
  `appid` char(36) DEFAULT NULL,
  `secret` char(64) DEFAULT NULL,
  `ip` char(20) DEFAULT NULL,
  `login_duration` int(11) DEFAULT NULL,
  `qcloud_appid` char(64) DEFAULT NULL,
  `session_duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
      
INSERT INTO `cappinfo` (`appid`,`secret`,`ip`,`login_duration`,`qcloud_appid`,`session_duration`) VALUES ('wx82abd1b5ab833f2d','','111.230.143.51',1000,'1257296211',2000);
-- ----------------------------
-- Table structure for carticleinfo
-- ----------------------------
    
CREATE TABLE `carticleinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `subTitle` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `logo` varchar(256) NOT NULL,
  `url` varchar(256) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cid` bigint(20) DEFAULT NULL COMMENT '公司id',
  `type` int(11) DEFAULT '0' COMMENT '文章类型 0-网页 1-pdf',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COMMENT='文章表';
      
INSERT INTO `carticleinfo` (`id`,`title`,`subTitle`,`logo`,`url`,`create_time`,`update_time`,`type`) VALUES (2,'企业健康促进计划','使企业福利效益最大化 让员工家庭风险科学规划','https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1546858947614-nj8wapNTo.jpg','http://mp.weixin.qq.com/s?__biz=MzA4MTg5NTQ3OQ==&mid=100000270&idx=1&sn=e46a6353e8cc342df8b794376983a5d1&chksm=1f8f4b5628f8c240322a1e5170c5f47111a0eddf3c8b066de701e45264218c048e93789603a2#rd','2019-01-07 11:03:44','2019-01-07 11:03:44',0);
INSERT INTO `carticleinfo` (`id`,`title`,`subTitle`,`logo`,`url`,`create_time`,`update_time`,`type`) VALUES (3,'健康激励-使用攻略','你健康 我激励','https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1546859233173-eT5r3WX6v.jpg','http://mp.weixin.qq.com/s?__biz=MzA4MTg5NTQ3OQ==&mid=100000287&idx=1&sn=63f31e8fd945b4e9fd14593f9cc9e69c&chksm=1f8f4b4728f8c251be075fa28b5b6cd33841554e32d0b3ab81231e5015c933ae56ea40c092b5#rd','2019-01-07 11:08:53','2019-01-07 11:08:53',0);
INSERT INTO `carticleinfo` (`id`,`title`,`subTitle`,`logo`,`url`,`create_time`,`update_time`,`type`) VALUES (4,'理赔难？Get这些技能试试','补充医疗保险理赔小贴士','https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1546868866781-6yaQFWqWl.jpg','http://mp.weixin.qq.com/s?__biz=MzA4MTg5NTQ3OQ==&mid=100000281&idx=1&sn=7bcda8a1b665048b273b220be73651cb&chksm=1f8f4b4128f8c257ae28409394dbeed5835f1384326b17d94ef58c9ab938a9b11b2876d79969#rd','2019-01-07 13:50:14','2019-01-07 13:50:14',0);
INSERT INTO `carticleinfo` (`id`,`title`,`subTitle`,`logo`,`url`,`create_time`,`update_time`,`cid`,`type`) VALUES (5,'tt','tt','https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1681124915539-oHkXL3xPT.png','https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1677302931812-lauw3nfv6.pdf','2023-02-20 22:05:52','2023-02-20 22:05:52',2,0);
INSERT INTO `carticleinfo` (`id`,`title`,`subTitle`,`logo`,`url`,`create_time`,`update_time`,`cid`,`type`) VALUES (6,'玩转私人健康银行小程序','私人健康银行使用指南','https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1680773234581-eVIZN8YIq.png','https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1680773122572-uUQUbfjzt.pdf','2023-04-06 17:27:16','2023-04-06 17:27:16',17,1);
INSERT INTO `carticleinfo` (`id`,`title`,`subTitle`,`logo`,`url`,`create_time`,`update_time`,`cid`,`type`) VALUES (7,'123','123','https://826625173.ehpp.club/res/2023-04-12/d00dd10cf8a39c184d490ef03.png','https://826625173.ehpp.club/res/2023-06-07/faecf409b131fb9af2fc7a500.pdf','2023-04-12 11:53:43','2023-04-12 11:53:43',16,1);
INSERT INTO `carticleinfo` (`id`,`title`,`subTitle`,`logo`,`url`,`create_time`,`update_time`,`cid`,`type`) VALUES (9,'H2年中答谢会照片','直播云图入口','https://826625173.ehpp.club/res/2023-06-07/faecf409b131fb9af2fc7a503.png','https://826625173.ehpp.club/res/2023-06-07/faecf409b131fb9af2fc7a504.pdf','2023-06-07 15:31:32','2023-06-07 15:31:32',17,1);
-- ----------------------------
-- Table structure for cbonusinfo
-- ----------------------------
    
CREATE TABLE `cbonusinfo` (
  `type` int(11) NOT NULL,
  `add_bonus` int(11) NOT NULL,
  `origin_bonus` int(11) NOT NULL,
  `new_bonus` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `uid` bigint(20) NOT NULL,
  `readed` tinyint(1) NOT NULL COMMENT '是否已读',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=778080 DEFAULT CHARSET=latin1 COMMENT='积分记录';
      
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (1,20,0,20,'2018-09-11 14:04:48',34,'体检报告',20,1,'2018-09-11 21:23:28');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (1,20,0,20,'2018-12-17 03:36:33',35,'体检报告',34,1,'2018-09-13 09:36:59');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,20,21,'2018-09-14 09:40:25',36,'跑步',19,1,'2018-09-14 17:40:25');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,1,2,'2018-09-14 12:48:39',37,'跑步',45,1,'2018-09-14 20:48:39');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,0,1,'2018-09-14 12:48:39',38,'跑步',45,1,'2018-09-14 20:48:39');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,20,21,'2018-09-14 14:04:06',39,'跑步',20,1,'2018-09-14 22:04:06');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,0,1,'2018-09-14 14:36:38',40,'跑步',48,1,'2018-09-14 22:36:38');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,21,22,'2018-09-17 06:55:23',41,'跑步',19,1,'2018-09-17 14:55:23');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,22,23,'2018-09-18 13:30:03',42,'跑步',19,1,'2018-09-18 21:30:03');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,23,24,'2018-09-19 14:32:14',43,'跑步',19,1,'2018-09-19 22:32:14');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,22,23,'2018-09-21 00:53:29',44,'跑步',20,1,'2018-09-21 08:53:29');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,21,22,'2018-09-21 00:53:29',45,'跑步',20,1,'2018-09-21 08:53:29');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,26,27,'2018-09-23 04:27:38',46,'跑步',19,1,'2018-09-23 12:27:38');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,25,26,'2018-09-23 04:27:38',47,'跑步',19,1,'2018-09-23 12:27:38');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,24,25,'2018-09-23 04:27:38',48,'跑步',19,1,'2018-09-23 12:27:38');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,23,24,'2018-09-26 07:48:56',49,'跑步',20,1,'2018-09-26 15:48:56');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,27,28,'2018-09-26 07:53:03',50,'跑步',19,1,'2018-09-26 15:53:03');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,24,25,'2018-10-02 14:44:15',51,'跑步',20,1,'2018-10-02 22:44:15');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,25,26,'2018-10-09 02:52:10',52,'跑步',20,1,'2018-10-09 10:52:10');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,0,1,'2018-10-12 12:00:47',53,'跑步',77,1,'2018-10-12 20:00:47');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,0,1,'2018-10-12 13:06:50',54,'跑步',62,1,'2018-10-12 21:06:50');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,29,30,'2018-10-13 04:17:06',55,'跑步',19,1,'2018-10-13 12:17:06');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,28,29,'2018-10-13 04:17:06',56,'跑步',19,1,'2018-10-13 12:17:06');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (3,20,1,21,'2018-10-28 05:36:27',57,'洗牙报告',77,1,'2018-10-13 14:51:39');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (1,20,21,41,'2018-10-28 05:36:27',58,'体检报告',77,1,'2018-10-13 14:51:52');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,30,31,'2018-10-15 15:24:47',59,'跑步',19,1,'2018-10-15 23:24:47');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,32,33,'2018-10-19 14:46:19',60,'跑步',19,1,'2018-10-19 22:46:19');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,31,32,'2018-10-19 14:46:19',61,'跑步',19,1,'2018-10-19 22:46:19');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (6,-40,41,1,'2018-10-28 05:36:27',62,'兑换【星巴克咖啡券*1】',77,1,'2018-10-23 10:21:26');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,4,5,'2018-10-28 05:36:18',63,'跑步',77,1,'2018-10-28 13:36:18');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,3,4,'2018-10-28 05:36:18',64,'跑步',77,1,'2018-10-28 13:36:18');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,2,3,'2018-10-28 05:36:18',65,'跑步',77,1,'2018-10-28 13:36:18');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,1,2,'2018-10-28 05:36:18',66,'跑步',77,1,'2018-10-28 13:36:18');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,0,1,'2018-11-13 12:45:18',67,'跑步',85,1,'2018-11-13 20:45:18');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,1,2,'2018-11-14 12:25:15',68,'跑步',85,1,'2018-11-14 20:25:15');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,2,3,'2018-11-15 14:03:42',69,'跑步',85,1,'2018-11-15 22:03:42');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,4,5,'2018-11-17 09:09:31',70,'跑步',85,1,'2018-11-17 17:09:31');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,3,4,'2018-11-17 09:09:31',71,'跑步',85,1,'2018-11-17 17:09:31');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,0,1,'2018-11-17 10:51:28',72,'跑步',90,1,'2018-11-17 18:51:28');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,0,1,'2018-11-17 10:52:19',73,'跑步',88,1,'2018-11-17 18:52:19');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,8,9,'2018-11-18 10:52:09',74,'跑步',85,1,'2018-11-18 18:52:09');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,7,8,'2018-11-18 10:52:09',75,'跑步',85,1,'2018-11-18 18:52:09');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,6,7,'2018-11-18 10:52:09',76,'跑步',85,1,'2018-11-18 18:52:09');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,5,6,'2018-11-18 10:52:09',77,'跑步',85,1,'2018-11-18 18:52:09');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,2,3,'2018-11-18 14:41:03',78,'跑步',88,1,'2018-11-18 22:41:03');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,1,2,'2018-11-18 14:41:03',79,'跑步',88,1,'2018-11-18 22:41:03');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,2,3,'2018-11-18 14:41:54',80,'跑步',90,1,'2018-11-18 22:41:54');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,1,2,'2018-11-18 14:41:54',81,'跑步',90,1,'2018-11-18 22:41:54');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (1,20,0,20,'2018-11-19 07:48:01',82,'体检报告',87,0,'2018-11-19 15:48:01');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,5,6,'2018-11-19 14:34:47',83,'跑步',88,1,'2018-11-19 22:34:47');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,4,5,'2018-11-19 14:34:47',84,'跑步',88,1,'2018-11-19 22:34:47');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,3,4,'2018-11-19 14:34:47',85,'跑步',88,1,'2018-11-19 22:34:47');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,4,5,'2018-11-19 15:59:38',86,'跑步',90,1,'2018-11-19 23:59:38');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,3,4,'2018-11-19 15:59:38',87,'跑步',90,1,'2018-11-19 23:59:38');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,9,10,'2018-11-20 15:58:54',88,'跑步',88,1,'2018-11-20 23:58:54');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,8,9,'2018-11-20 15:58:54',89,'跑步',88,1,'2018-11-20 23:58:54');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,7,8,'2018-11-20 15:58:54',90,'跑步',88,1,'2018-11-20 23:58:54');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,6,7,'2018-11-20 15:58:54',91,'跑步',88,1,'2018-11-20 23:58:54');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,3,4,'2018-11-21 05:32:27',92,'跑步',62,1,'2018-11-21 13:32:27');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,2,3,'2018-11-21 05:32:27',93,'跑步',62,1,'2018-11-21 13:32:27');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,1,2,'2018-11-21 05:32:27',94,'跑步',62,1,'2018-11-21 13:32:27');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,13,14,'2018-11-21 16:02:23',95,'跑步',88,1,'2018-11-22 00:02:23');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,12,13,'2018-11-21 16:02:23',96,'跑步',88,1,'2018-11-22 00:02:23');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,11,12,'2018-11-21 16:02:23',97,'跑步',88,1,'2018-11-22 00:02:23');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,10,11,'2018-11-21 16:02:23',98,'跑步',88,1,'2018-11-22 00:02:23');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,6,7,'2018-11-21 16:02:58',99,'跑步',90,1,'2018-11-22 00:02:58');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,5,6,'2018-11-21 16:02:58',100,'跑步',90,1,'2018-11-22 00:02:58');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,17,18,'2018-11-21 23:31:23',101,'跑步',88,1,'2018-11-22 07:31:23');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,16,17,'2018-11-21 23:31:23',102,'跑步',88,1,'2018-11-22 07:31:23');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,15,16,'2018-11-21 23:31:23',103,'跑步',88,1,'2018-11-22 07:31:23');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,14,15,'2018-11-21 23:31:23',104,'跑步',88,1,'2018-11-22 07:31:23');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,8,9,'2018-11-22 13:24:09',105,'跑步',90,1,'2018-11-22 21:24:09');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,7,8,'2018-11-22 13:24:09',106,'跑步',90,1,'2018-11-22 21:24:09');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,21,22,'2018-11-22 13:26:42',107,'跑步',88,1,'2018-11-22 21:26:42');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,20,21,'2018-11-22 13:26:42',108,'跑步',88,1,'2018-11-22 21:26:42');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,19,20,'2018-11-22 13:26:42',109,'跑步',88,1,'2018-11-22 21:26:42');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,18,19,'2018-11-22 13:26:42',110,'跑步',88,1,'2018-11-22 21:26:42');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,26,27,'2018-11-23 15:18:16',111,'跑步',20,1,'2018-11-23 23:18:16');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,10,11,'2018-11-23 15:32:58',112,'跑步',90,1,'2018-11-23 23:32:58');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,9,10,'2018-11-23 15:32:58',113,'跑步',90,1,'2018-11-23 23:32:58');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,25,26,'2018-11-23 15:53:38',114,'跑步',88,1,'2018-11-23 23:53:38');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,24,25,'2018-11-23 15:53:38',115,'跑步',88,1,'2018-11-23 23:53:38');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,23,24,'2018-11-23 15:53:38',116,'跑步',88,1,'2018-11-23 23:53:38');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,22,23,'2018-11-23 15:53:38',117,'跑步',88,1,'2018-11-23 23:53:38');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,26,27,'2018-11-24 15:07:23',118,'跑步',88,1,'2018-11-24 23:07:23');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,11,12,'2018-11-24 15:07:56',119,'跑步',90,1,'2018-11-24 23:07:56');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,27,28,'2018-11-25 09:57:50',120,'跑步',20,1,'2018-11-25 17:57:50');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,30,31,'2018-11-25 11:33:48',121,'跑步',88,1,'2018-11-25 19:33:48');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,29,30,'2018-11-25 11:33:48',122,'跑步',88,1,'2018-11-25 19:33:48');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,28,29,'2018-11-25 11:33:48',123,'跑步',88,1,'2018-11-25 19:33:48');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,27,28,'2018-11-25 11:33:48',124,'跑步',88,1,'2018-11-25 19:33:48');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,12,13,'2018-11-25 15:16:47',125,'跑步',90,1,'2018-11-25 23:16:47');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,33,34,'2018-11-26 15:59:50',126,'跑步',88,1,'2018-11-26 23:59:50');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,32,33,'2018-11-26 15:59:50',127,'跑步',88,1,'2018-11-26 23:59:50');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,31,32,'2018-11-26 15:59:50',128,'跑步',88,1,'2018-11-26 23:59:50');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (7,10,20,2010,'2018-11-27 08:55:55',129,'无理赔奖励201810',87,0,'2018-11-27 16:55:55');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (7,10,28,2810,'2018-11-27 08:58:02',130,'无理赔奖励201810',20,1,'2018-11-27 16:57:05');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,2810,2811,'2018-11-27 08:57:52',131,'跑步',20,1,'2018-11-27 16:57:52');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (7,12,2811,281112,'2018-12-05 04:24:44',132,'测试',20,1,'2018-11-27 16:58:57');
INSERT INTO `cbonusinfo` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (7,1,33,34,'2018-11-27 11:54:39',133,'test',19,0,'2018-11-27 19:54:39');
-- ----------------------------
-- Table structure for cbonusinfobak
-- ----------------------------
    
CREATE TABLE `cbonusinfobak` (
  `type` int(11) NOT NULL,
  `add_bonus` int(11) NOT NULL,
  `origin_bonus` int(11) NOT NULL,
  `new_bonus` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `uid` bigint(20) NOT NULL,
  `readed` tinyint(1) NOT NULL COMMENT '是否已读',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1 COMMENT='积分记录';
      
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (1,20,0,20,'2018-09-11 14:04:48',34,'体检报告',20,1,'2018-09-11 21:23:28');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (1,20,0,20,'2018-12-17 03:36:33',35,'体检报告',34,1,'2018-09-13 09:36:59');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,20,21,'2018-09-14 09:40:25',36,'跑步',19,1,'2018-09-14 17:40:25');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,1,2,'2018-09-14 12:48:39',37,'跑步',45,1,'2018-09-14 20:48:39');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,0,1,'2018-09-14 12:48:39',38,'跑步',45,1,'2018-09-14 20:48:39');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,20,21,'2018-09-14 14:04:06',39,'跑步',20,1,'2018-09-14 22:04:06');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,0,1,'2018-09-14 14:36:38',40,'跑步',48,1,'2018-09-14 22:36:38');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,21,22,'2018-09-17 06:55:23',41,'跑步',19,1,'2018-09-17 14:55:23');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,22,23,'2018-09-18 13:30:03',42,'跑步',19,1,'2018-09-18 21:30:03');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,23,24,'2018-09-19 14:32:14',43,'跑步',19,1,'2018-09-19 22:32:14');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,22,23,'2018-09-21 00:53:29',44,'跑步',20,1,'2018-09-21 08:53:29');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,21,22,'2018-09-21 00:53:29',45,'跑步',20,1,'2018-09-21 08:53:29');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,26,27,'2018-09-23 04:27:38',46,'跑步',19,1,'2018-09-23 12:27:38');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,25,26,'2018-09-23 04:27:38',47,'跑步',19,1,'2018-09-23 12:27:38');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,24,25,'2018-09-23 04:27:38',48,'跑步',19,1,'2018-09-23 12:27:38');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,23,24,'2018-09-26 07:48:56',49,'跑步',20,1,'2018-09-26 15:48:56');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,27,28,'2018-09-26 07:53:03',50,'跑步',19,1,'2018-09-26 15:53:03');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,24,25,'2018-10-02 14:44:15',51,'跑步',20,1,'2018-10-02 22:44:15');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,25,26,'2018-10-09 02:52:10',52,'跑步',20,1,'2018-10-09 10:52:10');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,0,1,'2018-10-12 12:00:47',53,'跑步',77,1,'2018-10-12 20:00:47');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,0,1,'2018-10-12 13:06:50',54,'跑步',62,1,'2018-10-12 21:06:50');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,29,30,'2018-10-13 04:17:06',55,'跑步',19,1,'2018-10-13 12:17:06');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,28,29,'2018-10-13 04:17:06',56,'跑步',19,1,'2018-10-13 12:17:06');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (3,20,1,21,'2018-10-28 05:36:27',57,'洗牙报告',77,1,'2018-10-13 14:51:39');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (1,20,21,41,'2018-10-28 05:36:27',58,'体检报告',77,1,'2018-10-13 14:51:52');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,30,31,'2018-10-15 15:24:47',59,'跑步',19,1,'2018-10-15 23:24:47');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,32,33,'2018-10-19 14:46:19',60,'跑步',19,1,'2018-10-19 22:46:19');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,31,32,'2018-10-19 14:46:19',61,'跑步',19,1,'2018-10-19 22:46:19');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (6,-40,41,1,'2018-10-28 05:36:27',62,'兑换【星巴克咖啡券*1】',77,1,'2018-10-23 10:21:26');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,4,5,'2018-10-28 05:36:18',63,'跑步',77,1,'2018-10-28 13:36:18');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,3,4,'2018-10-28 05:36:18',64,'跑步',77,1,'2018-10-28 13:36:18');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,2,3,'2018-10-28 05:36:18',65,'跑步',77,1,'2018-10-28 13:36:18');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,1,2,'2018-10-28 05:36:18',66,'跑步',77,1,'2018-10-28 13:36:18');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,0,1,'2018-11-13 12:45:18',67,'跑步',85,1,'2018-11-13 20:45:18');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,1,2,'2018-11-14 12:25:15',68,'跑步',85,1,'2018-11-14 20:25:15');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,2,3,'2018-11-15 14:03:42',69,'跑步',85,1,'2018-11-15 22:03:42');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,4,5,'2018-11-17 09:09:31',70,'跑步',85,1,'2018-11-17 17:09:31');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,3,4,'2018-11-17 09:09:31',71,'跑步',85,1,'2018-11-17 17:09:31');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,0,1,'2018-11-17 10:51:28',72,'跑步',90,1,'2018-11-17 18:51:28');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,0,1,'2018-11-17 10:52:19',73,'跑步',88,1,'2018-11-17 18:52:19');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,8,9,'2018-11-18 10:52:09',74,'跑步',85,1,'2018-11-18 18:52:09');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,7,8,'2018-11-18 10:52:09',75,'跑步',85,1,'2018-11-18 18:52:09');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,6,7,'2018-11-18 10:52:09',76,'跑步',85,1,'2018-11-18 18:52:09');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,5,6,'2018-11-18 10:52:09',77,'跑步',85,1,'2018-11-18 18:52:09');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,2,3,'2018-11-18 14:41:03',78,'跑步',88,1,'2018-11-18 22:41:03');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,1,2,'2018-11-18 14:41:03',79,'跑步',88,1,'2018-11-18 22:41:03');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,2,3,'2018-11-18 14:41:54',80,'跑步',90,1,'2018-11-18 22:41:54');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,1,2,'2018-11-18 14:41:54',81,'跑步',90,1,'2018-11-18 22:41:54');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (1,20,0,20,'2018-11-19 07:48:01',82,'体检报告',87,0,'2018-11-19 15:48:01');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,5,6,'2018-11-19 14:34:47',83,'跑步',88,1,'2018-11-19 22:34:47');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,4,5,'2018-11-19 14:34:47',84,'跑步',88,1,'2018-11-19 22:34:47');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,3,4,'2018-11-19 14:34:47',85,'跑步',88,1,'2018-11-19 22:34:47');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,4,5,'2018-11-19 15:59:38',86,'跑步',90,1,'2018-11-19 23:59:38');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,3,4,'2018-11-19 15:59:38',87,'跑步',90,1,'2018-11-19 23:59:38');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,9,10,'2018-11-20 15:58:54',88,'跑步',88,1,'2018-11-20 23:58:54');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,8,9,'2018-11-20 15:58:54',89,'跑步',88,1,'2018-11-20 23:58:54');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,7,8,'2018-11-20 15:58:54',90,'跑步',88,1,'2018-11-20 23:58:54');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,6,7,'2018-11-20 15:58:54',91,'跑步',88,1,'2018-11-20 23:58:54');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,3,4,'2018-11-21 05:32:27',92,'跑步',62,1,'2018-11-21 13:32:27');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,2,3,'2018-11-21 05:32:27',93,'跑步',62,1,'2018-11-21 13:32:27');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,1,2,'2018-11-21 05:32:27',94,'跑步',62,1,'2018-11-21 13:32:27');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,13,14,'2018-11-21 16:02:23',95,'跑步',88,1,'2018-11-22 00:02:23');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,12,13,'2018-11-21 16:02:23',96,'跑步',88,1,'2018-11-22 00:02:23');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,11,12,'2018-11-21 16:02:23',97,'跑步',88,1,'2018-11-22 00:02:23');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,10,11,'2018-11-21 16:02:23',98,'跑步',88,1,'2018-11-22 00:02:23');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,6,7,'2018-11-21 16:02:58',99,'跑步',90,1,'2018-11-22 00:02:58');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,5,6,'2018-11-21 16:02:58',100,'跑步',90,1,'2018-11-22 00:02:58');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,17,18,'2018-11-21 23:31:23',101,'跑步',88,1,'2018-11-22 07:31:23');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,16,17,'2018-11-21 23:31:23',102,'跑步',88,1,'2018-11-22 07:31:23');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,15,16,'2018-11-21 23:31:23',103,'跑步',88,1,'2018-11-22 07:31:23');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,14,15,'2018-11-21 23:31:23',104,'跑步',88,1,'2018-11-22 07:31:23');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,8,9,'2018-11-22 13:24:09',105,'跑步',90,1,'2018-11-22 21:24:09');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,7,8,'2018-11-22 13:24:09',106,'跑步',90,1,'2018-11-22 21:24:09');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,21,22,'2018-11-22 13:26:42',107,'跑步',88,1,'2018-11-22 21:26:42');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,20,21,'2018-11-22 13:26:42',108,'跑步',88,1,'2018-11-22 21:26:42');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,19,20,'2018-11-22 13:26:42',109,'跑步',88,1,'2018-11-22 21:26:42');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,18,19,'2018-11-22 13:26:42',110,'跑步',88,1,'2018-11-22 21:26:42');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,26,27,'2018-11-23 15:18:16',111,'跑步',20,1,'2018-11-23 23:18:16');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,10,11,'2018-11-23 15:32:58',112,'跑步',90,1,'2018-11-23 23:32:58');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,9,10,'2018-11-23 15:32:58',113,'跑步',90,1,'2018-11-23 23:32:58');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,25,26,'2018-11-23 15:53:38',114,'跑步',88,1,'2018-11-23 23:53:38');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,24,25,'2018-11-23 15:53:38',115,'跑步',88,1,'2018-11-23 23:53:38');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,23,24,'2018-11-23 15:53:38',116,'跑步',88,1,'2018-11-23 23:53:38');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,22,23,'2018-11-23 15:53:38',117,'跑步',88,1,'2018-11-23 23:53:38');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,26,27,'2018-11-24 15:07:23',118,'跑步',88,1,'2018-11-24 23:07:23');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,11,12,'2018-11-24 15:07:56',119,'跑步',90,1,'2018-11-24 23:07:56');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,27,28,'2018-11-25 09:57:50',120,'跑步',20,1,'2018-11-25 17:57:50');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,30,31,'2018-11-25 11:33:48',121,'跑步',88,1,'2018-11-25 19:33:48');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,29,30,'2018-11-25 11:33:48',122,'跑步',88,1,'2018-11-25 19:33:48');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,28,29,'2018-11-25 11:33:48',123,'跑步',88,1,'2018-11-25 19:33:48');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,27,28,'2018-11-25 11:33:48',124,'跑步',88,1,'2018-11-25 19:33:48');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,12,13,'2018-11-25 15:16:47',125,'跑步',90,1,'2018-11-25 23:16:47');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,33,34,'2018-11-26 15:59:50',126,'跑步',88,1,'2018-11-26 23:59:50');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,32,33,'2018-11-26 15:59:50',127,'跑步',88,1,'2018-11-26 23:59:50');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,31,32,'2018-11-26 15:59:50',128,'跑步',88,1,'2018-11-26 23:59:50');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (7,10,20,2010,'2018-11-27 08:55:55',129,'无理赔奖励201810',87,0,'2018-11-27 16:55:55');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (7,10,28,2810,'2018-11-27 08:58:02',130,'无理赔奖励201810',20,1,'2018-11-27 16:57:05');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,2810,2811,'2018-11-27 08:57:52',131,'跑步',20,1,'2018-11-27 16:57:52');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (7,12,2811,281112,'2018-12-05 04:24:44',132,'测试',20,1,'2018-11-27 16:58:57');
INSERT INTO `cbonusinfobak` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (7,1,33,34,'2018-11-27 11:54:39',133,'test',19,0,'2018-11-27 19:54:39');
-- ----------------------------
-- Table structure for cbonustest
-- ----------------------------
    
CREATE TABLE `cbonustest` (
  `type` int(11) NOT NULL,
  `add_bonus` int(11) NOT NULL,
  `origin_bonus` int(11) NOT NULL,
  `new_bonus` int(11) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL DEFAULT '0',
  `type_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `uid` bigint(20) NOT NULL,
  `readed` tinyint(1) NOT NULL COMMENT '是否已读',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `guid` bigint(20) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
      
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (1,20,0,20,'2018-09-11 14:04:48',34,'体检报告',20,1,'2018-09-11 21:23:28',20,'2020-03-30 14:44:50');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (1,20,0,20,'2018-12-17 03:36:33',35,'体检报告',34,1,'2018-09-13 09:36:59');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,20,21,'2018-09-14 09:40:25',36,'跑步',19,1,'2018-09-14 17:40:25',19,'2019-02-10 19:06:12');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,1,2,'2018-09-14 12:48:39',37,'跑步',45,1,'2018-09-14 20:48:39');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,0,1,'2018-09-14 12:48:39',38,'跑步',45,1,'2018-09-14 20:48:39');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,20,21,'2018-09-14 14:04:06',39,'跑步',20,1,'2018-09-14 22:04:06',20,'2020-03-30 14:44:50');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,0,1,'2018-09-14 14:36:38',40,'跑步',48,1,'2018-09-14 22:36:38');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,21,22,'2018-09-17 06:55:23',41,'跑步',19,1,'2018-09-17 14:55:23',19,'2019-02-10 19:06:12');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,22,23,'2018-09-18 13:30:03',42,'跑步',19,1,'2018-09-18 21:30:03',19,'2019-02-10 19:06:12');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,23,24,'2018-09-19 14:32:14',43,'跑步',19,1,'2018-09-19 22:32:14',19,'2019-02-10 19:06:12');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,22,23,'2018-09-21 00:53:29',44,'跑步',20,1,'2018-09-21 08:53:29',20,'2020-03-30 14:44:50');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,21,22,'2018-09-21 00:53:29',45,'跑步',20,1,'2018-09-21 08:53:29',20,'2020-03-30 14:44:50');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,26,27,'2018-09-23 04:27:38',46,'跑步',19,1,'2018-09-23 12:27:38',19,'2019-02-10 19:06:12');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,25,26,'2018-09-23 04:27:38',47,'跑步',19,1,'2018-09-23 12:27:38',19,'2019-02-10 19:06:12');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,24,25,'2018-09-23 04:27:38',48,'跑步',19,1,'2018-09-23 12:27:38',19,'2019-02-10 19:06:12');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,23,24,'2018-09-26 07:48:56',49,'跑步',20,1,'2018-09-26 15:48:56',20,'2020-03-30 14:44:50');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,27,28,'2018-09-26 07:53:03',50,'跑步',19,1,'2018-09-26 15:53:03',19,'2019-02-10 19:06:12');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,24,25,'2018-10-02 14:44:15',51,'跑步',20,1,'2018-10-02 22:44:15',20,'2020-03-30 14:44:50');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,25,26,'2018-10-09 02:52:10',52,'跑步',20,1,'2018-10-09 10:52:10',20,'2020-03-30 14:44:50');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,0,1,'2018-10-12 12:00:47',53,'跑步',77,1,'2018-10-12 20:00:47',77,'2019-12-24 14:55:04');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,0,1,'2018-10-12 13:06:50',54,'跑步',62,1,'2018-10-12 21:06:50',62,'2019-12-24 14:55:04');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,29,30,'2018-10-13 04:17:06',55,'跑步',19,1,'2018-10-13 12:17:06',19,'2019-02-10 19:06:12');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,28,29,'2018-10-13 04:17:06',56,'跑步',19,1,'2018-10-13 12:17:06',19,'2019-02-10 19:06:12');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (3,20,1,21,'2018-10-28 05:36:27',57,'洗牙报告',77,1,'2018-10-13 14:51:39',77,'2019-12-24 14:55:04');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (1,20,21,41,'2018-10-28 05:36:27',58,'体检报告',77,1,'2018-10-13 14:51:52',77,'2019-12-24 14:55:04');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,30,31,'2018-10-15 15:24:47',59,'跑步',19,1,'2018-10-15 23:24:47',19,'2019-02-10 19:06:12');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,32,33,'2018-10-19 14:46:19',60,'跑步',19,1,'2018-10-19 22:46:19',19,'2019-02-10 19:06:12');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,31,32,'2018-10-19 14:46:19',61,'跑步',19,1,'2018-10-19 22:46:19',19,'2019-02-10 19:06:12');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (6,-40,41,1,'2018-10-28 05:36:27',62,'兑换【星巴克咖啡券*1】',77,1,'2018-10-23 10:21:26',77,'2019-12-24 14:55:04');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,4,5,'2018-10-28 05:36:18',63,'跑步',77,1,'2018-10-28 13:36:18',77,'2019-12-24 14:55:04');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,3,4,'2018-10-28 05:36:18',64,'跑步',77,1,'2018-10-28 13:36:18',77,'2019-12-24 14:55:04');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,2,3,'2018-10-28 05:36:18',65,'跑步',77,1,'2018-10-28 13:36:18',77,'2019-12-24 14:55:04');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,1,2,'2018-10-28 05:36:18',66,'跑步',77,1,'2018-10-28 13:36:18',77,'2019-12-24 14:55:04');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,0,1,'2018-11-13 12:45:18',67,'跑步',85,1,'2018-11-13 20:45:18',85,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,1,2,'2018-11-14 12:25:15',68,'跑步',85,1,'2018-11-14 20:25:15',85,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,2,3,'2018-11-15 14:03:42',69,'跑步',85,1,'2018-11-15 22:03:42',85,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,4,5,'2018-11-17 09:09:31',70,'跑步',85,1,'2018-11-17 17:09:31',85,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,3,4,'2018-11-17 09:09:31',71,'跑步',85,1,'2018-11-17 17:09:31',85,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,0,1,'2018-11-17 10:51:28',72,'跑步',90,1,'2018-11-17 18:51:28');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,0,1,'2018-11-17 10:52:19',73,'跑步',88,1,'2018-11-17 18:52:19',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,8,9,'2018-11-18 10:52:09',74,'跑步',85,1,'2018-11-18 18:52:09',85,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,7,8,'2018-11-18 10:52:09',75,'跑步',85,1,'2018-11-18 18:52:09',85,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,6,7,'2018-11-18 10:52:09',76,'跑步',85,1,'2018-11-18 18:52:09',85,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,5,6,'2018-11-18 10:52:09',77,'跑步',85,1,'2018-11-18 18:52:09',85,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,2,3,'2018-11-18 14:41:03',78,'跑步',88,1,'2018-11-18 22:41:03',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,1,2,'2018-11-18 14:41:03',79,'跑步',88,1,'2018-11-18 22:41:03',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,2,3,'2018-11-18 14:41:54',80,'跑步',90,1,'2018-11-18 22:41:54');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,1,2,'2018-11-18 14:41:54',81,'跑步',90,1,'2018-11-18 22:41:54');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (1,20,0,20,'2018-11-19 07:48:01',82,'体检报告',87,0,'2018-11-19 15:48:01',87,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,5,6,'2018-11-19 14:34:47',83,'跑步',88,1,'2018-11-19 22:34:47',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,4,5,'2018-11-19 14:34:47',84,'跑步',88,1,'2018-11-19 22:34:47',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,3,4,'2018-11-19 14:34:47',85,'跑步',88,1,'2018-11-19 22:34:47',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,4,5,'2018-11-19 15:59:38',86,'跑步',90,1,'2018-11-19 23:59:38');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,3,4,'2018-11-19 15:59:38',87,'跑步',90,1,'2018-11-19 23:59:38');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,9,10,'2018-11-20 15:58:54',88,'跑步',88,1,'2018-11-20 23:58:54',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,8,9,'2018-11-20 15:58:54',89,'跑步',88,1,'2018-11-20 23:58:54',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,7,8,'2018-11-20 15:58:54',90,'跑步',88,1,'2018-11-20 23:58:54',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,6,7,'2018-11-20 15:58:54',91,'跑步',88,1,'2018-11-20 23:58:54',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,3,4,'2018-11-21 05:32:27',92,'跑步',62,1,'2018-11-21 13:32:27',62,'2019-12-24 14:55:04');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,2,3,'2018-11-21 05:32:27',93,'跑步',62,1,'2018-11-21 13:32:27',62,'2019-12-24 14:55:04');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,1,2,'2018-11-21 05:32:27',94,'跑步',62,1,'2018-11-21 13:32:27',62,'2019-12-24 14:55:04');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,13,14,'2018-11-21 16:02:23',95,'跑步',88,1,'2018-11-22 00:02:23',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,12,13,'2018-11-21 16:02:23',96,'跑步',88,1,'2018-11-22 00:02:23',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,11,12,'2018-11-21 16:02:23',97,'跑步',88,1,'2018-11-22 00:02:23',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,10,11,'2018-11-21 16:02:23',98,'跑步',88,1,'2018-11-22 00:02:23',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,6,7,'2018-11-21 16:02:58',99,'跑步',90,1,'2018-11-22 00:02:58');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,5,6,'2018-11-21 16:02:58',100,'跑步',90,1,'2018-11-22 00:02:58');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,17,18,'2018-11-21 23:31:23',101,'跑步',88,1,'2018-11-22 07:31:23',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,16,17,'2018-11-21 23:31:23',102,'跑步',88,1,'2018-11-22 07:31:23',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,15,16,'2018-11-21 23:31:23',103,'跑步',88,1,'2018-11-22 07:31:23',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,14,15,'2018-11-21 23:31:23',104,'跑步',88,1,'2018-11-22 07:31:23',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,8,9,'2018-11-22 13:24:09',105,'跑步',90,1,'2018-11-22 21:24:09');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,7,8,'2018-11-22 13:24:09',106,'跑步',90,1,'2018-11-22 21:24:09');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,21,22,'2018-11-22 13:26:42',107,'跑步',88,1,'2018-11-22 21:26:42',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,20,21,'2018-11-22 13:26:42',108,'跑步',88,1,'2018-11-22 21:26:42',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,19,20,'2018-11-22 13:26:42',109,'跑步',88,1,'2018-11-22 21:26:42',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,18,19,'2018-11-22 13:26:42',110,'跑步',88,1,'2018-11-22 21:26:42',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,26,27,'2018-11-23 15:18:16',111,'跑步',20,1,'2018-11-23 23:18:16',20,'2020-03-30 14:44:50');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,10,11,'2018-11-23 15:32:58',112,'跑步',90,1,'2018-11-23 23:32:58');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,9,10,'2018-11-23 15:32:58',113,'跑步',90,1,'2018-11-23 23:32:58');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,25,26,'2018-11-23 15:53:38',114,'跑步',88,1,'2018-11-23 23:53:38',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,24,25,'2018-11-23 15:53:38',115,'跑步',88,1,'2018-11-23 23:53:38',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,23,24,'2018-11-23 15:53:38',116,'跑步',88,1,'2018-11-23 23:53:38',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,22,23,'2018-11-23 15:53:38',117,'跑步',88,1,'2018-11-23 23:53:38',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,26,27,'2018-11-24 15:07:23',118,'跑步',88,1,'2018-11-24 23:07:23',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,11,12,'2018-11-24 15:07:56',119,'跑步',90,1,'2018-11-24 23:07:56');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,27,28,'2018-11-25 09:57:50',120,'跑步',20,1,'2018-11-25 17:57:50',20,'2020-03-30 14:44:50');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,30,31,'2018-11-25 11:33:48',121,'跑步',88,1,'2018-11-25 19:33:48',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,29,30,'2018-11-25 11:33:48',122,'跑步',88,1,'2018-11-25 19:33:48',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,28,29,'2018-11-25 11:33:48',123,'跑步',88,1,'2018-11-25 19:33:48',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,27,28,'2018-11-25 11:33:48',124,'跑步',88,1,'2018-11-25 19:33:48',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`) VALUES (5,1,12,13,'2018-11-25 15:16:47',125,'跑步',90,1,'2018-11-25 23:16:47');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,33,34,'2018-11-26 15:59:50',126,'跑步',88,1,'2018-11-26 23:59:50',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,32,33,'2018-11-26 15:59:50',127,'跑步',88,1,'2018-11-26 23:59:50',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,31,32,'2018-11-26 15:59:50',128,'跑步',88,1,'2018-11-26 23:59:50',88,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (7,10,20,2010,'2018-11-27 08:55:55',129,'无理赔奖励201810',87,0,'2018-11-27 16:55:55',87,'2020-03-30 15:26:25');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (7,10,28,2810,'2018-11-27 08:58:02',130,'无理赔奖励201810',20,1,'2018-11-27 16:57:05',20,'2020-03-30 14:44:50');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (5,1,2810,2811,'2018-11-27 08:57:52',131,'跑步',20,1,'2018-11-27 16:57:52',20,'2020-03-30 14:44:50');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (7,12,2811,281112,'2018-12-05 04:24:44',132,'测试',20,1,'2018-11-27 16:58:57',20,'2020-03-30 14:44:50');
INSERT INTO `cbonustest` (`type`,`add_bonus`,`origin_bonus`,`new_bonus`,`update_time`,`id`,`type_name`,`uid`,`readed`,`create_time`,`guid`,`start_time`) VALUES (7,1,33,34,'2018-11-27 11:54:39',133,'test',19,0,'2018-11-27 19:54:39',19,'2019-02-10 19:06:12');
-- ----------------------------
-- Table structure for cbonustype
-- ----------------------------
    
CREATE TABLE `cbonustype` (
  `value` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bonuse` int(11) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
      
INSERT INTO `cbonustype` (`value`,`name`,`bonuse`) VALUES (1,'体检报告',100);
INSERT INTO `cbonustype` (`value`,`name`,`bonuse`) VALUES (2,'单月无理赔',10);
INSERT INTO `cbonustype` (`value`,`name`,`bonuse`) VALUES (3,'洗牙报告',100);
INSERT INTO `cbonustype` (`value`,`name`,`bonuse`) VALUES (4,'购买产品',30);
INSERT INTO `cbonustype` (`value`,`name`,`bonuse`) VALUES (5,'跑步',10);
INSERT INTO `cbonustype` (`value`,`name`,`bonuse`) VALUES (6,'积分兑换',0);
INSERT INTO `cbonustype` (`value`,`name`,`bonuse`) VALUES (7,'其他',0);
INSERT INTO `cbonustype` (`value`,`name`,`bonuse`) VALUES (8,'早起打卡',5);
INSERT INTO `cbonustype` (`value`,`name`,`bonuse`) VALUES (9,'早睡打卡',5);
INSERT INTO `cbonustype` (`value`,`name`,`bonuse`) VALUES (10,'健康问卷',10);
INSERT INTO `cbonustype` (`value`,`name`,`bonuse`) VALUES (11,'健康生活',0);
INSERT INTO `cbonustype` (`value`,`name`,`bonuse`) VALUES (12,'健康运动',0);
INSERT INTO `cbonustype` (`value`,`name`,`bonuse`) VALUES (13,'活动打卡',10);
INSERT INTO `cbonustype` (`value`,`name`,`bonuse`) VALUES (14,'分享',10);
-- ----------------------------
-- Table structure for ccollectionque
-- ----------------------------
    
CREATE TABLE `ccollectionque` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL COMMENT '姓名',
  `phone` varchar(45) NOT NULL COMMENT '电话号码',
  `question` varchar(128) NOT NULL COMMENT '要咨询的问题',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `flag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
      

-- ----------------------------
-- Table structure for ccompanybonustype
-- ----------------------------
    
CREATE TABLE `ccompanybonustype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tid` bigint(20) NOT NULL,
  `tname` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bonuse` int(11) NOT NULL,
  `cid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
      
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (1,1,'体检报告',100,11);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (2,3,'洗牙报告',100,11);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (3,1,'体检报告',100,4);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (4,3,'洗牙报告',100,4);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (5,1,'体检报告',100,9);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (6,3,'洗牙报告',100,9);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (7,1,'体检报告',15,12);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (8,3,'洗牙报告',15,12);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (9,1,'体检报告',10,13);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (10,3,'洗牙报告',10,13);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (11,1,'体检报告',10,14);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (12,3,'洗牙报告',10,14);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (13,1,'体检报告',100,8);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (14,3,'洗牙报告',100,8);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (15,10,'健康问卷',100,16);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (16,10,'健康问卷',80,11);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (17,1,'体检报告',100,19);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (18,3,'洗牙报告',100,19);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (19,10,'健康问卷',80,19);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (20,1,'体检报告',200,20);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (21,3,'洗牙报告',200,20);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (22,10,'健康问卷',200,20);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (23,1,'体检报告',100,21);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (24,3,'洗牙报告',100,21);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (25,10,'健康问卷',100,21);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (26,1,'体检报告',100,22);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (27,3,'洗牙报告',100,22);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (28,10,'健康问卷',80,22);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (29,13,'活动打卡',15,17);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (30,13,'活动打卡',10,16);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (31,10,'健康问卷',50,17);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (32,13,'活动打卡',30,11);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (33,12,'健康运动',0,11);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (34,11,'健康生活',0,11);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (35,1,'体检报告',100,23);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (36,3,'洗牙报告',100,23);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (37,11,'健康生活',10,23);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (38,12,'健康运动',10,23);
INSERT INTO `ccompanybonustype` (`id`,`tid`,`tname`,`bonuse`,`cid`) VALUES (39,13,'活动打卡',30,23);
-- ----------------------------
-- Table structure for ccompanyinfo
-- ----------------------------
    
CREATE TABLE `ccompanyinfo` (
  `cid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '邀请码',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `hr` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `hr_phone` varchar(32) DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reset_time` bigint(16) DEFAULT NULL,
  `aid` bigint(20) NOT NULL,
  `need_qus` tinyint(1) DEFAULT NULL COMMENT '是否开启个人健康告知问卷能力',
  `manage_name` varchar(45) DEFAULT NULL,
  `manage_logo` varchar(128) DEFAULT NULL,
  `manage_mask` varchar(128) DEFAULT NULL,
  `enable_activity` tinyint(4) DEFAULT NULL,
  `activity_name` varchar(16) DEFAULT NULL,
  `activity_code` varchar(16) DEFAULT NULL COMMENT '活动邀请码',
  PRIMARY KEY (`cid`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
      
INSERT INTO `ccompanyinfo` (`cid`,`name`,`code`,`update_time`,`hr`,`hr_phone`,`create_time`,`reset_time`,`aid`,`need_qus`,`manage_name`,`manage_logo`,`manage_mask`,`enable_activity`,`activity_name`) VALUES (2,'阿里巴巴','alibaba','2018-08-19 13:31:30','sasa','33232','2018-08-22 00:26:44',1549796772742,2,0,'天天','https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1669374510488-zG3fYldVd.png','https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1669374520227-RE6XggFNJ.png',1,'测试活动');
INSERT INTO `ccompanyinfo` (`cid`,`name`,`code`,`update_time`,`hr`,`hr_phone`,`create_time`,`reset_time`,`aid`) VALUES (3,'二十一世纪保险经纪','37ebao','2018-09-11 09:27:39','','','2018-09-11 17:27:39',1585550690271,2);
INSERT INTO `ccompanyinfo` (`cid`,`name`,`code`,`update_time`,`hr`,`hr_phone`,`create_time`,`reset_time`,`aid`) VALUES (4,'Santander','Santander','2018-09-11 09:29:28','','','2018-09-11 17:29:28',1675594055253,2);
INSERT INTO `ccompanyinfo` (`cid`,`name`,`code`,`update_time`,`hr`,`hr_phone`,`create_time`,`reset_time`,`aid`) VALUES (5,'上海百盈医药科技','byyy','2018-09-11 13:25:55','','','2018-09-11 21:25:55',1585553428359,2);
INSERT INTO `ccompanyinfo` (`cid`,`name`,`code`,`update_time`,`hr`,`hr_phone`,`create_time`,`reset_time`,`aid`) VALUES (6,'华泰保兴基金','huatai','2018-09-11 13:56:31','','','2018-09-11 21:56:31',1639638566664,2);
INSERT INTO `ccompanyinfo` (`cid`,`name`,`code`,`update_time`,`hr`,`hr_phone`,`create_time`,`aid`) VALUES (7,'安道拓（上海）座椅','Adient','2018-09-11 14:00:45','','','2018-09-11 22:00:45',2);
INSERT INTO `ccompanyinfo` (`cid`,`name`,`code`,`update_time`,`hr`,`hr_phone`,`create_time`,`reset_time`,`aid`,`need_qus`) VALUES (8,'游客','youke','2018-09-12 13:58:08','','','2018-09-12 21:58:08',1675594062507,2,0);
INSERT INTO `ccompanyinfo` (`cid`,`name`,`code`,`update_time`,`hr`,`hr_phone`,`create_time`,`reset_time`,`aid`) VALUES (9,'澳大利亚西太平洋银行','Westpac','2018-09-27 02:01:51','','','2018-09-27 10:01:51',1577170504520,2);
INSERT INTO `ccompanyinfo` (`cid`,`name`,`code`,`update_time`,`hr`,`hr_phone`,`create_time`,`reset_time`,`aid`) VALUES (10,'上海环境能源交易所','cneeex','2018-10-09 09:59:52','','','2018-10-09 17:59:52',1585553387907,2);
INSERT INTO `ccompanyinfo` (`cid`,`name`,`code`,`update_time`,`hr`,`hr_phone`,`create_time`,`reset_time`,`aid`,`need_qus`,`manage_name`,`manage_logo`,`manage_mask`,`enable_activity`,`activity_name`,`activity_code`) VALUES (11,'瀚晖制药有限公司','hanhui','2018-12-21 06:56:49','','','2018-12-21 14:56:49',1705334431030,2,1,'袁晓琳','https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1669377390340-pWm-SQevD.png','https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1669377396635-dsgUCV73W.jpg',0,'2025年度保险宣讲（广州）','商业保险福利');
INSERT INTO `ccompanyinfo` (`cid`,`name`,`code`,`update_time`,`hr`,`hr_phone`,`create_time`,`aid`) VALUES (12,'华东师范大学','ecnu','2019-05-25 06:24:09','','','2019-05-25 14:24:09',2);
INSERT INTO `ccompanyinfo` (`cid`,`name`,`code`,`update_time`,`hr`,`hr_phone`,`create_time`,`reset_time`,`aid`) VALUES (13,'李京','lijing','2019-07-29 01:25:05','','','2019-07-29 09:25:05',1644030827147,2);
INSERT INTO `ccompanyinfo` (`cid`,`name`,`code`,`update_time`,`hr`,`hr_phone`,`create_time`,`reset_time`,`aid`) VALUES (14,'菖骏保险咨询','CJBX','2019-07-30 01:49:01','','','2019-07-30 09:49:01',1609728695027,2);
INSERT INTO `ccompanyinfo` (`cid`,`name`,`code`,`update_time`,`hr`,`hr_phone`,`create_time`,`aid`) VALUES (16,'淘宝','taobao','2019-08-13 16:31:17','ludan','11111','2019-08-14 00:31:17',1);
INSERT INTO `ccompanyinfo` (`cid`,`name`,`code`,`update_time`,`hr`,`hr_phone`,`create_time`,`aid`,`need_qus`,`manage_name`,`manage_logo`,`manage_mask`,`enable_activity`,`activity_name`,`activity_code`) VALUES (17,'H2健康促进计划','H2','2020-03-30 10:53:59','','','2020-03-30 18:53:59',2,0,'H2','https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1685945452140-cFq-EUYgm.png','https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1685945454959-dJZ0A_sRq.png',0,'活动打卡12','123');
INSERT INTO `ccompanyinfo` (`cid`,`name`,`code`,`update_time`,`hr`,`hr_phone`,`create_time`,`reset_time`,`aid`,`need_qus`) VALUES (18,'测试','geren','2020-07-09 02:43:27','','','2020-07-09 10:43:27',1644030716587,2,0);
INSERT INTO `ccompanyinfo` (`cid`,`name`,`code`,`update_time`,`hr`,`hr_phone`,`create_time`,`aid`,`need_qus`) VALUES (19,'豪威集团','OMNIVISION','2021-06-14 02:35:52','','','2021-06-14 10:35:52',2,0);
INSERT INTO `ccompanyinfo` (`cid`,`name`,`code`,`update_time`,`hr`,`hr_phone`,`create_time`,`aid`,`need_qus`) VALUES (20,'瀚晖高端医疗项目','hanhui+','2022-05-20 03:10:21','','','2022-05-20 11:10:21',2,0);
INSERT INTO `ccompanyinfo` (`cid`,`name`,`code`,`update_time`,`hr`,`hr_phone`,`create_time`,`aid`,`need_qus`) VALUES (21,'海正医药','haizheng','2022-11-01 21:40:28','','','2022-11-01 21:40:28',2,1);
INSERT INTO `ccompanyinfo` (`cid`,`name`,`code`,`update_time`,`hr`,`hr_phone`,`create_time`,`aid`,`need_qus`,`manage_name`,`manage_logo`,`manage_mask`) VALUES (22,'上海瑜捷电子科技有限公司','yujie','2023-01-17 14:18:41','','','2023-01-17 14:18:41',2,1,'H2小助理','https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1673937177293-d55oP4G7X.png','https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1673937182513-yesgaJly9.png');
INSERT INTO `ccompanyinfo` (`cid`,`name`,`code`,`update_time`,`hr`,`hr_phone`,`create_time`,`aid`,`need_qus`,`enable_activity`,`activity_name`,`activity_code`) VALUES (23,'星愿测试','xingyuan','2023-12-07 10:39:12','','','2023-12-07 10:39:12',2,1,1,'测试活动','123');
-- ----------------------------
-- Table structure for cexchange
-- ----------------------------
    
CREATE TABLE `cexchange` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code_id` bigint(20) NOT NULL COMMENT '邀请码id',
  `threshold` int(11) NOT NULL COMMENT '积分阈值',
  `gift_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '奖品名',
  `gift_desc` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '奖品说明',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `flag` tinyint(1) DEFAULT NULL COMMENT '是否有效',
  `code_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `reserve` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=latin1 COMMENT='积分兑换表';
      
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (1,2,10,'星巴克','星巴克一杯','2018-09-11 01:05:25',1,'阿里巴巴',10);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`,`icon`) VALUES (2,4,10,'家庭保单托管','注册即送价值500元家庭保单托管服务（限时免费）','2018-09-11 17:31:09',1,'Santander',100,'https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1673363518462--Qivx20-B.png');
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`,`icon`) VALUES (3,4,400,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份（限额6份/人/年）','2018-09-11 17:32:53',1,'Santander',0,'https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1673363524297-hcdwOO6fj.png');
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (4,4,600,'口腔健康旅行套装（牙刷、牙膏、漱口水）','库存17套，兑完需等待库存','2018-09-11 17:39:02',0,'Santander',1);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`,`icon`) VALUES (5,4,1200,'高端基因检测','专业基因检测一份（可选烟酒肿瘤或心脑血管或儿童安全用药等），附报告解读','2018-09-11 17:39:45',1,'Santander',10,'https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1673363579989-XMevzhNk8.jpg');
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (6,4,2000,'可参与年度抽奖','累计满2000分可参与抽奖，健康手环一只（该项不消耗积分，年度达标即可）','2018-09-11 17:41:35',0,'Santander',1);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (7,5,400,'星巴克咖啡券*1','贵司健康促进项目已终止，具体请咨询HR或项目经理','2018-09-11 21:28:09',0,'上海百盈医药科技',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (8,5,800,'家庭风险管理','贵司健康促进项目已终止，具体请咨询HR或项目经理','2018-09-11 21:28:42',0,'上海百盈医药科技',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (9,5,1200,'高端基因检测*1','贵司健康促进项目已终止，具体请咨询HR或项目经理','2018-09-11 21:29:21',0,'上海百盈医药科技',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (10,5,2000,'可参与年度抽奖','贵司健康促进项目已终止，具体请咨询HR或项目经理','2018-09-11 21:30:01',0,'上海百盈医药科技',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (11,6,500,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份（限额6份/人/年）','2018-09-11 21:58:35',1,'华泰保兴基金',6);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (12,6,1000,'高级黑枸杞礼盒','专业中医院高级黑枸杞礼盒一份（库存仅3份，本年度兑完不予补货）','2018-09-11 21:59:04',0,'华泰保兴基金',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (13,6,1200,'高端基因检测','专业基因检测一份（可选常见肿瘤检测或女性特定肿瘤检测或心脑血管常见高发疾病检测），附报告解读','2018-09-11 21:59:33',1,'华泰保兴基金',5);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (14,6,2000,'可参与年度抽奖','可参与年度抽奖（该项不消耗积分，年度达标即可）','2018-09-11 21:59:55',1,'华泰保兴基金',1);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (15,7,400,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份（全国通用）','2018-09-11 22:01:13',1,'安道拓（上海）座椅',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (16,7,800,'口腔健康旅行套装','牙刷、牙膏、漱口水等旅行套装一份','2018-09-11 22:01:32',1,'安道拓（上海）座椅',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (17,7,1200,'高端基因检测','专业基因检测一份，附报告解读','2018-09-11 22:01:49',1,'安道拓（上海）座椅',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (18,7,2000,'可参与年度抽奖','可参与年度抽奖，华为pad一台（该项不消耗积分，年度达标即可）','2018-09-11 22:02:11',1,'安道拓（上海）座椅',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (19,3,40,'星巴克咖啡券*1','可兑换一份中杯咖啡（测试版）','2018-09-11 22:02:53',1,'二十一世纪保险经纪',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (20,3,80,'家庭风险管理','全面家庭风险管理分析一套（测试版）','2018-09-11 22:03:29',1,'二十一世纪保险经纪',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (21,3,100,'高端基因检测*1','高端基因检测一份，含报告解读（测试版）','2018-09-11 22:03:48',1,'二十一世纪保险经纪',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (22,3,200,'可参与年度抽奖','可参与年度抽奖，最新款iwatch一个（测试版）','2018-09-11 22:04:11',1,'二十一世纪保险经纪',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`,`icon`) VALUES (23,8,1200,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份（无库存不补货）','2018-09-12 21:59:36',0,'游客',1,'https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1702106728621-gFLSGdlY_.png');
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`,`icon`) VALUES (24,8,10,'家庭风险管理','注册即送价值500元家庭保单托管服务（限时免费）','2018-09-12 22:00:20',1,'游客',10,'https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1702106747749-Zdiam6n5P.png');
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`,`icon`) VALUES (25,8,8000,'高端基因检测','专业基因检测一份（可选常见肿瘤检测或女性特定肿瘤检测或心脑血管常见高发疾病检测），附报告解读','2018-09-12 22:01:27',0,'游客',9,'https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1702106716172-uUl0vJHX9.png');
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (26,8,100,'可参与年度抽奖','积分累计超过100分即可参与年底抽奖，奖品还没想好~','2018-09-12 22:02:50',0,'Chris的朋友们^_^',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (27,9,10,'家庭保单托管','贵司健康促进项目已中止，具体请咨询HR或项目经理','2018-09-27 10:04:28',0,'澳大利亚西太平洋银行',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (28,9,400,'咖啡券','贵司健康促进项目已中止，具体请咨询HR或项目经理','2018-09-27 10:07:53',0,'澳大利亚西太平洋银行',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (29,9,80,'家庭风险管理','贵司健康促进项目已中止，具体请咨询HR或项目经理','2018-09-27 10:08:19',0,'澳大利亚西太平洋银行',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (30,9,1200,'高端基因检测','贵司健康促进项目已中止，具体请咨询HR或项目经理','2018-09-27 10:08:47',0,'澳大利亚西太平洋银行',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (31,9,2000,'参与年度抽奖','贵司健康促进项目已中止，具体请咨询HR或项目经理','2018-09-27 10:09:17',0,'澳大利亚西太平洋银行',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (32,10,10,'家庭保单托管','注册即可免费获得家庭保单托管服务一次（10份以内保单）','2018-10-09 18:01:52',1,'上海环境能源交易所',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (33,10,400,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份','2018-10-09 18:02:18',1,'上海环境能源交易所',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (34,10,800,'家庭风险管理','全面家庭风险管理分析一套','2018-10-09 18:02:48',1,'上海环境能源交易所',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (35,10,1200,'高端基因检测','专业基因检测一份，附报告解读','2018-10-09 18:03:10',1,'上海环境能源交易所',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (36,10,2000,'可参与年度抽奖','累计满2000分可参与抽奖，华为pad一台（该项不消耗积分，年度达标即可）','2018-10-09 18:04:11',1,'上海环境能源交易所',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`,`icon`) VALUES (37,11,400,'星巴克咖啡券（美式）','星巴克和瑞幸咖啡券共限额6份/人/年','2018-12-21 15:01:36',1,'瀚晖制药有限公司',600,'https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1669358659969-cU5z5Y_o5.png');
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (38,11,1000,'黑枸杞礼盒','专业中医院高级黑枸杞礼盒一份（库存仅3份，本年度兑完不予补货）','2018-12-21 15:02:49',0,'瀚晖制药有限公司',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`,`icon`) VALUES (39,11,1200,'高端基因检测','专业基因检测一份（可选烟酒肿瘤或心脑血管或儿童安全用药等），附报告解读','2018-12-21 15:03:33',1,'瀚晖制药有限公司',14,'https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1669376539364-xv45Vwvss.jpg');
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`,`icon`) VALUES (40,11,2000,'参与年度抽奖','无需申请，不消耗积分，年度累计达标即可（具体奖品及数量在年中根据参与度设置）','2018-12-21 15:05:13',1,'瀚晖制药有限公司',9999,'https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1669376548088-fBumiWvVm.png');
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (41,12,1,'注册奖','家庭保单托管服务','2019-05-25 14:25:22',1,'华东师范大学',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (42,12,40,'星巴克咖啡','星巴克咖啡券一份','2019-05-25 14:25:37',1,'华东师范大学',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (43,12,90,'齿科养护券','成人洁牙卡或儿童涂氟卡一份','2019-05-25 14:26:13',1,'华东师范大学',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (44,12,200,'高端基因加测','基因检测一份+加专业报告解读','2019-05-25 14:26:48',1,'华东师范大学',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (45,12,300,'年度抽奖','可参与年度抽奖，最新华为pad一台','2019-05-25 14:27:11',1,'华东师范大学',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (46,13,40,'星巴克咖啡','星巴克咖啡券一份','2019-07-29 09:25:47',1,'李京',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (47,13,80,'家庭风险规划','全面家庭风险规划建议一次','2019-07-29 09:26:09',1,'李京',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (48,13,120,'齿科养护卡','成人洗牙卡或儿童涂氟卡一份','2019-07-29 09:26:52',1,'李京',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (49,13,160,'高端基因检测','高端基因检测一份，附报告解读','2019-07-29 09:27:36',1,'李京',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (50,13,200,'年度抽奖','可参与年度抽奖，具体奖项另行公布','2019-07-29 09:28:09',1,'李京',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (51,14,40,'星巴克咖啡','星巴克咖啡券一份','2019-07-30 09:50:08',1,'张燕艺工作室',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (52,14,80,'家庭风险规划','全面家庭风险规划一次','2019-07-30 09:50:23',1,'张燕艺工作室',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (53,14,120,'齿科养护卡','成人洗牙卡或儿童涂氟卡一份','2019-07-30 09:50:48',1,'张燕艺工作室',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (54,14,160,'高端基因检测','高端基因检测一份，附报告解读','2019-07-30 09:51:10',1,'张燕艺工作室',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (55,14,200,'年度抽奖','可参与年度抽奖，具体奖项另行公布','2019-07-30 09:51:34',1,'张燕艺工作室',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (56,11,700,'电子体温计','欧姆龙电子体温计','2019-12-13 13:05:42',0,'瀚晖制药有限公司',1);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (57,11,500,'口腔健康旅行套装','牙刷、牙膏、漱口水等旅行套装一份','2019-12-16 10:37:19',0,'瀚晖制药有限公司',1);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (58,9,500,'口腔健康旅行套装','贵司健康促进项目已中止，具体请咨询HR或项目经理','2019-12-24 14:32:28',0,'澳大利亚西太平洋银行',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (59,9,700,'电子体温计','贵司健康促进项目已中止，具体请咨询HR或项目经理','2019-12-24 14:33:28',0,'澳大利亚西太平洋银行',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (60,6,600,'口腔健康旅行套装（牙刷、牙膏、漱口水等旅行套装一份）','牙刷、牙膏、漱口水等旅行套装一份','2020-03-30 14:41:17',0,'华泰保兴基金',5);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (61,7,10,'家庭保单托管','注册即送价值500元家庭保单托管服务（限时免费）','2020-03-30 18:49:06',1,'安道拓（上海）座椅',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`,`icon`) VALUES (62,17,10,'风险咨询','风险咨询，家庭保单梳理服务','2020-03-30 18:54:43',1,'H2健康促进计划',88,'https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1686211031643-rtrEA6T9w.png');
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`,`icon`) VALUES (63,17,400,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份（全国通用）','2020-03-30 18:55:08',0,'H2健康促进计划',1,'https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1686211009985-q3IIX8PW2.png');
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`,`icon`) VALUES (64,17,500,'口腔健康旅行套装','牙刷、牙膏、漱口水等旅行套装一份','2020-03-30 18:57:45',0,'H2健康促进计划',1,'https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1686210991941-jlJQ6R8JR.png');
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`,`icon`) VALUES (65,17,700,'电子温度计','欧姆龙电子温度计一支','2020-03-30 18:58:03',0,'H2健康促进计划',1,'https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1686210999819-Je8cviVDO.png');
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`,`icon`) VALUES (66,17,1000,'洗牙券','专业齿科机构，免费洁牙券一份','2020-03-30 18:58:17',0,'H2健康促进计划',1,'https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1685945499027-Fv4HWpNzF.png');
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`,`icon`) VALUES (67,17,1200,'高端基因检测','专业基因检测一份，附报告解读','2020-03-30 18:58:32',0,'H2健康促进计划',1,'https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1685945491616-JU4xJQ9yQ.png');
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`,`icon`) VALUES (68,17,2000,'参与年度抽奖','具体奖品及数量在年中根据参与度设置（该项不消耗积分，年度达标即可）','2020-03-30 18:58:44',0,'H2健康促进计划',1,'https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1685945482907-d37QePsOX.png');
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (69,6,10,'家庭保单托管','注册即送价值500元家庭保单托管服务（限时免费）','2020-03-30 19:02:52',0,'华泰保兴基金',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (70,8,3000,'口腔健康检查','专业齿科机构，全面口腔健康健康一份','2020-04-03 12:33:22',0,'游客',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (71,8,5000,'参与年度抽奖','可参与抽取年度神秘奖品（该项不消耗积分，年度达标即可）','2020-04-03 12:43:05',0,'游客',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (72,11,1800,'高品质成人乳胶枕','高品质健康乳胶枕头一个（库存仅剩余0份，兑完需等下一补货阶段）','2020-09-28 20:03:05',0,'瀚晖制药有限公司',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (73,9,1800,'高级乳胶枕','贵司健康促进项目已中止，具体请咨询HR或项目经理','2020-09-28 20:03:45',0,'澳大利亚西太平洋银行',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (74,6,1600,'高级儿童乳胶枕头','高品质儿童健康乳胶枕头一套（库存仅5份）','2020-09-28 20:04:08',0,'华泰保兴基金',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (75,4,1800,'高级乳胶枕头','高品质健康乳胶枕头一套','2020-09-28 20:04:28',0,'Santander',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (76,9,1000,'黑枸杞礼盒','贵司健康促进项目已中止，具体请咨询HR或项目经理','2020-10-16 11:23:20',0,'澳大利亚西太平洋银行',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (77,11,1600,'高品质儿童乳胶枕','高品质健康儿童乳胶枕一个（库存仅剩余5份，暂需留言登记）','2020-11-04 15:05:01',0,'瀚晖制药有限公司',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (78,11,400,'纯正野生艾草足浴包','纯正野生艾草足浴包5份','2020-11-04 15:08:24',0,'瀚晖制药有限公司',1);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (79,9,1600,'儿童乳胶枕','贵司健康促进项目已中止，具体请咨询HR或项目经理','2020-11-04 15:09:29',0,'澳大利亚西太平洋银行',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (80,9,400,'艾草足浴粉礼包','贵司健康促进项目已中止，具体请咨询HR或项目经理','2020-11-04 15:10:23',0,'澳大利亚西太平洋银行',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (81,4,1600,'儿童乳胶枕','高品质儿童乳胶枕一个（仅剩5个）','2020-11-04 15:11:08',0,'Santander',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`,`icon`) VALUES (82,4,2000,'野生艾草足浴包','纯正野生艾草足浴包（30包/份）','2020-11-04 15:11:39',0,'Santander',4,'https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1673363398613-i21WL7WUx.png');
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (83,11,1000,'洗牙卡','瑞尔齿科洗牙卡一张（库存仅剩余2份，兑完将不再补货）','2020-11-06 10:20:12',0,'瀚晖制药有限公司',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (84,9,1000,'洗牙卡','贵司健康促进项目已中止，具体请咨询HR或项目经理','2020-11-06 14:51:19',0,'澳大利亚西太平洋银行',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (85,6,400,'纯正野生艾草足浴粉五包','纯正野生艾草足浴包5份','2020-11-16 16:20:14',0,'华泰保兴基金',10);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (86,6,700,'电子体温计','欧姆龙电子体温计','2020-11-16 16:21:11',0,'华泰保兴基金',3);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (87,8,3000,'口腔健康旅行套装','漱口水*1，牙刷*1，牙膏*1','2020-11-16 17:08:39',0,'游客',1);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (88,11,700,'防疫急救包','限量5个，兑完不补','2020-11-23 16:30:22',0,'瀚晖制药有限公司',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (89,9,700,'家用急救包','贵司健康促进项目已中止，具体请咨询HR或项目经理','2020-11-23 16:30:40',0,'澳大利亚西太平洋银行',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (90,6,900,'防疫急救包','家庭急救用防疫包','2020-11-23 16:31:07',0,'华泰保兴基金',2);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`,`icon`) VALUES (91,4,1000,'防疫急救包','家用防疫急救包','2020-11-23 16:31:24',0,'Santander',1,'https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1673363389307-gB-KdHuv5.png');
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (92,11,1600,'儿童乳胶枕','不可兑换，仅用于消分','2020-11-27 13:50:54',0,'瀚晖制药有限公司',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (93,18,1,'1','1','2020-11-27 13:56:24',1,'私人健康管家「专项对接」',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (94,18,2,'2','2','2020-11-27 13:56:27',1,'私人健康管家「专项对接」',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (95,11,1800,'欧舒丹护手霜（限量）','欧舒丹护手霜30ml正装一支（库存仅1只，以公众号留言顺序为准，香型不可挑）','2020-12-08 11:20:09',0,'瀚晖制药有限公司',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (96,6,1800,'欧舒丹护手霜（限量）','欧舒丹护手霜30ml正装一支（库存仅1只，以公众号留言顺序为准，香型不可挑）','2020-12-08 11:20:45',0,'华泰保兴基金',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (97,11,800,'UV防紫外线雨伞','高品质UV防紫外线雨伞','2020-12-10 15:18:45',0,'瀚晖制药有限公司',1);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (98,11,1000,'黑枸杞礼盒','仅扣分使用','2020-12-11 10:31:02',0,'瀚晖制药有限公司',0);
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`,`icon`) VALUES (99,11,9999,'礼品有库存则能兑换，限量无库存则无法兑换，其他无库存需留言等补货','兑换量大，请耐心等候公众号回复。咖啡券请关注公众号留言。','2020-12-18 18:47:07',0,'瀚晖制药有限公司',1,'https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1669376600724-EcfoVvA93.png');
INSERT INTO `cexchange` (`id`,`code_id`,`threshold`,`gift_name`,`gift_desc`,`create_time`,`flag`,`code_name`,`reserve`) VALUES (100,4,700,'欧姆龙电子温度计','库存0个，需等待补货','2020-12-22 10:43:04',0,'Santander',1);
-- ----------------------------
-- Table structure for cexchangeinfo
-- ----------------------------
    
CREATE TABLE `cexchangeinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL COMMENT '用户id',
  `status` int(11) NOT NULL COMMENT '状态',
  `addressId` bigint(20) NOT NULL COMMENT '地址id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2748 DEFAULT CHARSET=utf8mb4;
      
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (1,34,1,1,'2021-08-30 18:32:06');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (2,125,-1,3,'2021-08-30 18:34:30');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (3,125,-1,3,'2021-08-30 18:34:41');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (4,34,1,1,'2021-08-30 18:35:03');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (5,125,-1,3,'2021-09-05 23:10:23');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (6,125,1,3,'2021-09-05 23:12:33');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (7,23,1,6,'2021-09-05 23:25:49');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (8,166,-1,15,'2021-09-08 21:10:18');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (9,166,1,15,'2021-09-08 21:10:35');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (10,34,-1,4,'2021-09-11 16:46:05');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (11,1770,1,16,'2021-09-12 21:28:00');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (12,397,1,17,'2021-09-13 06:15:01');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (13,1655,1,24,'2021-09-15 07:10:30');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (14,125,-1,3,'2021-09-16 13:32:56');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (15,625,1,31,'2021-09-16 15:00:00');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (16,882,-1,30,'2021-09-16 15:02:53');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (17,882,1,30,'2021-09-16 15:03:18');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (18,508,-1,7,'2021-09-16 15:10:45');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (19,391,1,34,'2021-09-17 11:16:09');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (20,1648,1,18,'2021-09-18 12:29:41');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (21,501,1,37,'2021-09-19 06:36:45');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (22,136,-1,38,'2021-09-19 15:50:37');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (23,1807,1,39,'2021-09-19 18:37:55');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (24,243,-1,41,'2021-09-22 12:37:01');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (25,880,-1,42,'2021-09-22 15:37:15');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (26,1525,-1,12,'2021-09-22 21:06:51');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (27,1525,-1,12,'2021-09-22 21:07:27');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (28,1551,1,44,'2021-09-23 22:39:22');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (29,457,1,21,'2021-09-24 21:07:44');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (30,147,-1,25,'2021-09-26 14:39:23');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (31,1199,1,46,'2021-09-26 19:32:41');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (32,2116,-1,47,'2021-09-27 09:22:55');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (33,356,1,40,'2021-09-28 18:52:14');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (34,954,1,48,'2021-09-29 07:56:18');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (35,842,-1,49,'2021-09-29 16:03:48');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (36,842,1,49,'2021-09-29 16:04:36');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (37,412,1,51,'2021-09-29 21:43:57');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (38,695,1,53,'2021-10-01 21:10:32');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (39,570,-1,54,'2021-10-01 21:15:43');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (40,570,1,54,'2021-10-01 21:16:24');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (41,2026,-1,55,'2021-10-02 21:23:20');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (42,1655,1,24,'2021-10-04 22:42:51');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (43,880,1,42,'2021-10-08 16:01:49');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (44,1206,1,57,'2021-10-08 22:21:16');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (45,550,1,58,'2021-10-09 11:18:51');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (46,556,1,59,'2021-10-10 21:34:23');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (47,172,-1,60,'2021-10-13 23:17:34');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (48,413,1,50,'2021-10-14 10:02:19');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (49,397,1,17,'2021-10-16 06:01:50');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (50,169,1,61,'2021-10-17 16:59:32');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (51,625,1,31,'2021-10-18 08:56:41');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (52,594,-1,62,'2021-10-18 21:11:46');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (53,594,1,62,'2021-10-18 21:12:39');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (54,526,-1,63,'2021-10-19 21:28:58');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (55,526,1,63,'2021-10-19 22:16:10');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (56,218,1,19,'2021-10-19 22:24:04');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (57,2349,1,64,'2021-10-20 23:00:53');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (58,306,1,65,'2021-10-23 07:05:41');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (59,1833,-1,66,'2021-10-23 23:13:26');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (60,1833,-1,66,'2021-10-23 23:17:21');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (61,147,1,25,'2021-10-24 13:09:22');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (62,609,1,43,'2021-10-26 21:02:57');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (63,735,-1,36,'2021-10-27 21:21:50');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (64,735,1,36,'2021-10-27 21:22:11');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (65,1934,1,67,'2021-10-29 06:22:31');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (66,647,1,68,'2021-10-29 22:49:11');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (67,501,1,37,'2021-10-31 07:45:47');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (68,596,1,69,'2021-10-31 21:06:33');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (69,2096,1,72,'2021-11-02 07:17:15');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (70,1424,-1,73,'2021-11-02 21:03:50');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (71,1424,1,73,'2021-11-02 21:09:20');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (72,2278,1,71,'2021-11-02 22:11:27');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (73,138,1,74,'2021-11-02 22:53:25');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (74,1525,1,12,'2021-11-03 17:26:23');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (75,1648,1,18,'2021-11-03 17:54:08');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (76,1592,1,79,'2021-11-07 22:48:33');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (77,1833,-1,66,'2021-11-08 06:35:49');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (78,2045,-1,80,'2021-11-08 07:04:50');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (79,482,1,81,'2021-11-08 21:10:10');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (80,550,1,58,'2021-11-09 10:35:07');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (81,595,1,82,'2021-11-09 18:59:41');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (82,1296,1,83,'2021-11-09 19:04:48');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (83,165,1,84,'2021-11-10 21:57:31');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (84,474,1,70,'2021-11-11 21:34:41');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (85,941,-1,86,'2021-11-11 22:29:10');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (86,172,1,60,'2021-11-11 23:19:13');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (87,218,1,19,'2021-11-12 06:41:12');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (88,391,1,34,'2021-11-12 09:10:02');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (89,985,1,87,'2021-11-13 10:56:19');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (90,723,1,88,'2021-11-13 13:15:33');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (91,2176,1,10,'2021-11-14 21:07:38');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (92,2226,1,90,'2021-11-14 23:55:49');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (93,300,1,75,'2021-11-15 15:21:00');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (94,1934,1,67,'2021-11-15 19:27:00');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (95,723,1,88,'2021-11-15 21:29:26');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (96,243,1,41,'2021-11-15 21:51:02');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (97,136,1,38,'2021-11-16 07:22:46');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (98,983,1,91,'2021-11-16 21:57:45');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (99,2171,1,94,'2021-11-18 08:03:48');
INSERT INTO `cexchangeinfo` (`id`,`uid`,`status`,`addressId`,`create_time`) VALUES (100,2253,1,95,'2021-11-19 18:32:44');
-- ----------------------------
-- Table structure for cexchangeiteminfo
-- ----------------------------
    
CREATE TABLE `cexchangeiteminfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rid` bigint(20) NOT NULL COMMENT '兑换记录id',
  `gid` bigint(20) NOT NULL COMMENT '奖品id',
  `num` int(11) NOT NULL COMMENT '兑换数',
  `bonus` int(11) NOT NULL,
  `gift_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '奖品名',
  `gift_desc` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `gift_icon` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3326 DEFAULT CHARSET=latin1;
      
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (1,1,62,1,10,'家庭保单托管','注册即送价值500元家庭保单托管服务（限时免费）');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (2,1,64,2,500,'口腔健康旅行套装','牙刷、牙膏、漱口水等旅行套装一份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (3,1,66,2,1000,'洗牙券','专业齿科机构，免费洁牙券一份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (4,1,67,2,1200,'高端基因检测','专业基因检测一份，附报告解读');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (5,2,62,1,10,'家庭保单托管','注册即送价值500元家庭保单托管服务（限时免费）');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (6,2,63,1,400,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份（全国通用）');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (7,2,64,1,500,'口腔健康旅行套装','牙刷、牙膏、漱口水等旅行套装一份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (8,3,65,1,700,'电子温度计','欧姆龙电子温度计一支');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (9,3,66,1,1000,'洗牙券','专业齿科机构，免费洁牙券一份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (10,3,67,1,1200,'高端基因检测','专业基因检测一份，附报告解读');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (11,4,63,1,400,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份（全国通用）');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (12,4,65,1,700,'电子温度计','欧姆龙电子温度计一支');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (13,4,66,1,1000,'洗牙券','专业齿科机构，免费洁牙券一份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (14,5,64,1,500,'口腔健康旅行套装','牙刷、牙膏、漱口水等旅行套装一份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (15,6,64,1,500,'口腔健康旅行套装','牙刷、牙膏、漱口水等旅行套装一份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (16,6,67,1,1200,'高端基因检测','专业基因检测一份，附报告解读');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (17,7,64,1,500,'口腔健康旅行套装','牙刷、牙膏、漱口水等旅行套装一份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (18,7,65,1,700,'电子温度计','欧姆龙电子温度计一支');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (19,7,66,1,1000,'洗牙券','专业齿科机构，免费洁牙券一份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (20,8,37,1,400,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (21,9,37,1,400,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (22,10,63,1,400,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份（全国通用）');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (23,10,65,1,700,'电子温度计','欧姆龙电子温度计一支');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (24,10,66,1,1000,'洗牙券','专业齿科机构，免费洁牙券一份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (25,11,120,1,2500,'高级护腰靠垫','办公室座椅腰垫');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (26,12,57,1,500,'口腔健康旅行套装','牙刷、牙膏、漱口水等旅行套装一份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (27,12,118,1,600,'便携式数据线','一转三手机数据线');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (28,12,104,1,700,'平安2021年度橙色手账本记事本','限量4本，兑完不补');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (29,12,121,1,1500,'家庭工具箱','家庭常用工具箱（如卷尺、美工刀、尖嘴钳、羊角锤等工具）');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (30,13,37,1,400,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (31,14,63,1,400,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份（全国通用）');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (32,14,64,1,500,'口腔健康旅行套装','牙刷、牙膏、漱口水等旅行套装一份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (33,15,37,1,400,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (34,16,56,1,700,'电子体温计','欧姆龙电子体温计');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (35,17,56,1,700,'电子体温计','欧姆龙电子体温计');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (36,18,40,1,2000,'参与年度抽奖','不消耗积分，年度累计达标即可，具体奖品及数量在年中根据参与度设置');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (37,19,37,3,400,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份（限额6份/人/年）');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (38,20,125,1,4000,'智能头部按摩仪','智能头部按摩仪');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (39,21,124,1,3000,'高级护颈乳胶枕','人体工学护颈乳胶枕');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (40,22,37,1,400,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份（限额6份/人/年）');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (41,23,37,2,400,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份（限额6份/人/年）');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (42,24,40,1,2000,'参与年度抽奖','不消耗积分，年度累计达标即可，具体奖品及数量在年中根据参与度设置');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (43,25,123,1,3500,'智能颈椎按摩仪','智能颈椎按摩仪');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (44,26,40,1,2000,'参与年度抽奖','不消耗积分，年度累计达标即可，具体奖品及数量在年中根据参与度设置');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (45,27,40,1,2000,'参与年度抽奖','不消耗积分，年度累计达标即可，具体奖品及数量在年中根据参与度设置');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (46,28,57,1,500,'口腔健康旅行套装','牙刷、牙膏、漱口水等旅行套装一份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (47,28,104,1,700,'平安2021年度橙色手账本记事本','限量4本，兑完不补');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (48,29,125,1,4000,'智能头部按摩仪','智能头部按摩仪');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (49,30,40,1,2000,'参与年度抽奖','不消耗积分，年度累计达标即可，具体奖品及数量在年中根据参与度设置');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (50,31,124,1,3000,'高级护颈乳胶枕','人体工学护颈乳胶枕');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (51,32,40,1,2000,'参与年度抽奖','不消耗积分，年度累计达标即可，具体奖品及数量在年中根据参与度设置');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (52,33,118,1,600,'便携式数据线','一转三手机数据线');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (53,33,56,1,700,'电子体温计','欧姆龙电子体温计');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (54,34,124,1,3000,'高级护颈乳胶枕','人体工学护颈乳胶枕');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (55,35,123,1,3500,'智能颈椎按摩仪','智能颈椎按摩仪');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (56,36,123,1,3500,'智能颈椎按摩仪','智能颈椎按摩仪');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (57,37,124,1,3000,'高级护颈乳胶枕','人体工学护颈乳胶枕');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (58,38,124,1,3000,'高级护颈乳胶枕','人体工学护颈乳胶枕');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (59,39,125,1,4000,'智能头部按摩仪','智能头部按摩仪');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (60,40,125,1,4000,'智能头部按摩仪','智能头部按摩仪');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (61,41,37,1,400,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份（限额6份/人/年）');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (62,42,57,1,500,'口腔健康旅行套装','牙刷、牙膏、漱口水等旅行套装一份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (63,43,125,1,4000,'智能头部按摩仪','智能头部按摩仪');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (64,44,78,1,400,'纯正野生艾草足浴包','纯正野生艾草足浴包5份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (65,44,120,1,2500,'高级护腰靠垫','人体工学办公室座椅腰垫');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (66,45,56,1,700,'电子体温计','欧姆龙电子体温计');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (67,46,123,1,3500,'智能颈椎按摩仪','智能颈椎按摩仪');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (68,47,11,1,400,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份（（限额6份/人/年））');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (69,48,120,1,2500,'高级护腰靠垫','人体工学办公室座椅腰垫');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (70,49,56,1,700,'电子体温计','欧姆龙电子体温计');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (71,49,104,1,700,'平安2021年度橙色手账本记事本','限量4本，兑完不补');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (72,49,97,1,800,'UV防紫外线雨伞','高品质UV防紫外线雨伞');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (73,50,125,1,4000,'智能头部按摩仪','智能头部按摩仪');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (74,51,37,1,400,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份（限额6份/人/年）');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (75,52,97,1,800,'UV防紫外线雨伞','高品质UV防紫外线雨伞');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (76,53,97,1,800,'UV防紫外线雨伞','高品质UV防紫外线雨伞');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (77,54,124,1,3000,'高级护颈乳胶枕','人体工学护颈乳胶枕');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (78,55,124,1,3000,'高级护颈乳胶枕','人体工学护颈乳胶枕');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (79,56,97,1,800,'UV防紫外线雨伞','高品质UV防紫外线雨伞');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (80,56,119,1,1000,'精美中医保健食品','陈皮、佛手等专业中医保健食品一份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (81,57,37,1,400,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份（限额6份/人/年）');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (82,58,120,1,2500,'高级护腰靠垫','人体工学办公室座椅腰垫');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (83,59,40,1,2000,'参与年度抽奖','不消耗积分，年度累计达标即可，具体奖品及数量在年中根据参与度设置');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (84,60,40,1,2000,'参与年度抽奖','不消耗积分，年度累计达标即可，具体奖品及数量在年中根据参与度设置');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (85,61,37,2,400,'咖啡券','星巴克、Costa、Luckin等品牌咖啡券一份（限额6份/人/年）');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (86,62,124,1,3000,'高级护颈乳胶枕','人体工学护颈乳胶枕');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (87,63,124,1,3000,'高级护颈乳胶枕','人体工学护颈乳胶枕');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (88,64,124,1,3000,'高级护颈乳胶枕','人体工学护颈乳胶枕');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (89,65,97,1,800,'UV防紫外线雨伞','高品质UV防紫外线雨伞');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (90,66,120,1,2500,'高级护腰靠垫','人体工学办公室座椅腰垫');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (91,67,78,1,400,'纯正野生艾草足浴包','纯正野生艾草足浴包5份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (92,67,57,1,500,'口腔健康旅行套装','牙刷、牙膏、漱口水等旅行套装一份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (93,68,124,1,3000,'高级护颈乳胶枕','人体工学护颈乳胶枕');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (94,69,78,1,400,'纯正野生艾草足浴包','纯正野生艾草足浴包5份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (95,69,57,1,500,'口腔健康旅行套装','牙刷、牙膏、漱口水等旅行套装一份');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (96,70,40,1,2000,'参与年度抽奖','不消耗积分，年度累计达标即可，具体奖品及数量在年中根据参与度设置');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (97,71,126,1,300,'儿童退烧贴','儿童退烧贴*3盒');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (98,71,97,2,800,'UV防紫外线雨伞','高品质UV防紫外线雨伞');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (99,71,122,1,1500,'家庭小药箱','家庭常用药品（非处方药）');
INSERT INTO `cexchangeiteminfo` (`id`,`rid`,`gid`,`num`,`bonus`,`gift_name`,`gift_desc`) VALUES (100,72,122,1,1500,'家庭小药箱','家庭常用药品（非处方药）');
-- ----------------------------
-- Table structure for cmember
-- ----------------------------
    
CREATE TABLE `cmember` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bonus` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `label` varchar(45) DEFAULT NULL COMMENT '会员表',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `lightColor` varchar(16) DEFAULT NULL,
  `logo` varchar(128) DEFAULT NULL,
  `darkColor` varchar(16) DEFAULT NULL,
  `textColor` varchar(16) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `log` varchar(128) DEFAULT NULL,
  `mask` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
      
INSERT INTO `cmember` (`id`,`bonus`,`level`,`label`,`create_time`,`update_time`,`lightColor`,`logo`,`darkColor`,`textColor`,`name`,`log`,`mask`) VALUES (1,0,0,'青铜','2022-06-19 15:55:03','2022-11-25 14:28:51','#F6D0BB','https://gw.alicdn.com/imgextra/i3/O1CN01elwYQF1R8H4DPG2lT_!!6000000002066-2-tps-342-392.png','#E1AF91','#8D5849','袁晓琳','https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1669357718849-JobJS7AG8.png','https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1669357689614-cjVFuoE2E.jpg');
INSERT INTO `cmember` (`id`,`bonus`,`level`,`label`,`create_time`,`update_time`,`lightColor`,`logo`,`darkColor`,`textColor`,`name`,`log`,`mask`) VALUES (2,10000,1,'白银','2022-06-19 15:55:03','2022-08-23 17:49:34','#DCD8E3','https://gw.alicdn.com/imgextra/i2/O1CN01dKKtN71KxNxKlGUqz_!!6000000001230-2-tps-334-391.png','#CFC9DD','#3C3567','王某某','https://gw.alicdn.com/imgextra/i2/O1CN01ANFefS1L1VQRgw6Oj_!!6000000001239-2-tps-78-32.png','https://gw.alicdn.com/imgextra/i3/O1CN01dtWpMa25o1kAC8ev9_!!6000000007572-2-tps-128-128.png');
INSERT INTO `cmember` (`id`,`bonus`,`level`,`label`,`create_time`,`update_time`,`lightColor`,`logo`,`darkColor`,`textColor`,`name`,`log`,`mask`) VALUES (3,30000,2,'黄金','2022-06-19 15:55:03','2022-08-23 17:49:38','#F2DC9C','https://gw.alicdn.com/imgextra/i3/O1CN01ggOSlp1SFQs7kbQhs_!!6000000002217-2-tps-301-393.png','#ECC269','#965327','王某某','https://gw.alicdn.com/imgextra/i2/O1CN01ANFefS1L1VQRgw6Oj_!!6000000001239-2-tps-78-32.png','https://gw.alicdn.com/imgextra/i3/O1CN01dtWpMa25o1kAC8ev9_!!6000000007572-2-tps-128-128.png');
INSERT INTO `cmember` (`id`,`bonus`,`level`,`label`,`create_time`,`update_time`,`lightColor`,`logo`,`darkColor`,`textColor`,`name`,`log`,`mask`) VALUES (4,80000,3,'铂金','2022-06-19 15:55:03','2022-08-23 17:49:42','#EDE8E6','https://gw.alicdn.com/imgextra/i4/O1CN01YGk9IU20AZbpCzBOR_!!6000000006809-2-tps-299-362.png','#CCB8B4','#69443F','王某某','https://gw.alicdn.com/imgextra/i2/O1CN01ANFefS1L1VQRgw6Oj_!!6000000001239-2-tps-78-32.png','https://gw.alicdn.com/imgextra/i3/O1CN01dtWpMa25o1kAC8ev9_!!6000000007572-2-tps-128-128.png');
INSERT INTO `cmember` (`id`,`bonus`,`level`,`label`,`create_time`,`update_time`,`lightColor`,`logo`,`darkColor`,`textColor`,`name`,`log`,`mask`) VALUES (8,150000,4,'钻石','2022-06-19 15:55:03','2022-08-23 17:49:46','#9FC7F4','https://gw.alicdn.com/imgextra/i4/O1CN01lT7Kom1JPCmVhYSxb_!!6000000001020-2-tps-295-364.png','#6BA5FF','#153F94','王某某','https://gw.alicdn.com/imgextra/i2/O1CN01ANFefS1L1VQRgw6Oj_!!6000000001239-2-tps-78-32.png','https://gw.alicdn.com/imgextra/i3/O1CN01dtWpMa25o1kAC8ev9_!!6000000007572-2-tps-128-128.png');
-- ----------------------------
-- Table structure for cmemeberright
-- ----------------------------
    
CREATE TABLE `cmemeberright` (
  `id` varchar(32) NOT NULL,
  `mid` int(11) NOT NULL COMMENT '会员等级ID',
  `rid` int(11) NOT NULL COMMENT '权益id',
  `num` int(11) DEFAULT NULL COMMENT '份额',
  `display` int(11) DEFAULT NULL,
  PRIMARY KEY (`mid`,`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
      
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('25-1',1,25,33,0);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('26-1',1,26,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('27-1',1,27,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('28-1',1,28,99,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('34-1',1,34,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('36-1',1,36,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('25-2',2,25,1,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('26-2',2,26,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('27-2',2,27,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('28-2',2,28,99,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('29-2',2,29,3,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('30-2',2,30,1,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('32-2',2,32,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('34-2',2,34,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('36-2',2,36,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('37-2',2,37,4,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('38-2',2,38,99,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('25-3',3,25,2,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('26-3',3,26,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('27-3',3,27,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('28-3',3,28,99,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('29-3',3,29,3,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('30-3',3,30,2,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('31-3',3,31,1,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('32-3',3,32,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('33-3',3,33,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('34-3',3,34,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('36-3',3,36,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('37-3',3,37,4,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('38-3',3,38,99,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('25-4',4,25,3,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('26-4',4,26,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('27-4',4,27,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('28-4',4,28,99,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('29-4',4,29,5,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('30-4',4,30,3,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('31-4',4,31,2,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('32-4',4,32,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('33-4',4,33,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('34-4',4,34,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('35-4',4,35,1,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('36-4',4,36,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('37-4',4,37,8,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('38-4',4,38,99,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('39-4',4,39,1,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('40-4',4,40,1,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('41-4',4,41,1,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('42-4',4,42,4,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('25-8',8,25,5,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('26-8',8,26,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('27-8',8,27,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('28-8',8,28,99,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('29-8',8,29,10,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('30-8',8,30,5,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('31-8',8,31,5,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('32-8',8,32,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('33-8',8,33,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('34-8',8,34,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('35-8',8,35,3,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('36-8',8,36,9999,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('37-8',8,37,8,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('38-8',8,38,99,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('39-8',8,39,3,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('40-8',8,40,3,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('41-8',8,41,3,1);
INSERT INTO `cmemeberright` (`id`,`mid`,`rid`,`num`,`display`) VALUES ('42-8',8,42,5,1);
-- ----------------------------
-- Table structure for cmessage
-- ----------------------------
    
CREATE TABLE `cmessage` (
  `mid` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `type` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` bigint(20) NOT NULL COMMENT '用户id',
  `readed` tinyint(1) NOT NULL COMMENT '是否已读',
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
      

-- ----------------------------
-- Table structure for cquestionnaire
-- ----------------------------
    
CREATE TABLE `cquestionnaire` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '问卷名称',
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
      
INSERT INTO `cquestionnaire` (`id`,`name`,`start`,`end`) VALUES (2,'个人健康告知','2021-06-12 00:00:00','2021-06-12 00:00:00');
-- ----------------------------
-- Table structure for cquestionnaireanditem
-- ----------------------------
    
CREATE TABLE `cquestionnaireanditem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `qid` bigint(20) NOT NULL COMMENT '问卷id',
  `item_id` bigint(20) NOT NULL COMMENT '题目id',
  `dep_item_id` bigint(20) DEFAULT NULL COMMENT '依赖的问题选项',
  `dep_item_val` varchar(32) DEFAULT NULL COMMENT '依赖项的值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1 COMMENT='问卷跟题目关系';
      
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (1,1,1);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (2,1,2);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (3,1,3);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (4,1,4);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (5,1,5);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (6,1,6);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (7,1,7);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (8,1,8);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (9,1,9);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (10,1,10);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (11,1,11);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (12,1,12);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (13,1,13);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (14,1,14);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (15,1,15);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (16,1,16);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (17,1,17);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (18,1,18);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (19,1,19);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (20,1,20);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (21,1,21);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (22,1,22);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (23,1,23);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (24,1,24);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (25,1,25);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (26,1,26);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (27,1,27);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (28,1,28);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (29,1,29);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (30,1,30);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (31,1,31);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (32,1,32);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (33,1,33);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (34,1,34);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (35,1,35);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (36,1,36);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (37,1,37);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (38,1,38);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (67,2,40);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (68,2,41);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`,`dep_item_id`,`dep_item_val`) VALUES (69,2,42,41,'1');
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (70,2,43);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`,`dep_item_id`,`dep_item_val`) VALUES (71,2,44,43,'1');
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (72,2,45);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`,`dep_item_id`,`dep_item_val`) VALUES (73,2,46,45,'1');
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (74,2,47);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`,`dep_item_id`,`dep_item_val`) VALUES (75,2,48,47,'1');
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (76,2,49);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`,`dep_item_id`,`dep_item_val`) VALUES (77,2,50,49,'1');
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (78,2,51);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`,`dep_item_id`,`dep_item_val`) VALUES (79,2,52,51,'1');
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (80,2,53);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`,`dep_item_id`,`dep_item_val`) VALUES (81,2,54,53,'1');
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (82,2,55);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`,`dep_item_id`,`dep_item_val`) VALUES (83,2,56,55,'1');
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (84,2,57);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`,`dep_item_id`,`dep_item_val`) VALUES (85,2,58,57,'1');
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (86,2,59);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`,`dep_item_id`,`dep_item_val`) VALUES (87,2,60,59,'1');
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (88,2,61);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`,`dep_item_id`,`dep_item_val`) VALUES (89,2,62,61,'1');
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (90,2,63);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`,`dep_item_id`,`dep_item_val`) VALUES (91,2,64,63,'1');
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (92,2,65);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`,`dep_item_id`,`dep_item_val`) VALUES (93,2,66,65,'1');
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (94,2,67);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`,`dep_item_id`,`dep_item_val`) VALUES (95,2,68,67,'1');
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`,`dep_item_id`,`dep_item_val`) VALUES (96,2,69,67,'1');
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`,`dep_item_id`,`dep_item_val`) VALUES (97,2,70,67,'1');
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (98,2,71);
INSERT INTO `cquestionnaireanditem` (`id`,`qid`,`item_id`) VALUES (99,2,72);
-- ----------------------------
-- Table structure for cquestionnaireans
-- ----------------------------
    
CREATE TABLE `cquestionnaireans` (
  `qid` bigint(20) NOT NULL COMMENT '问卷id',
  `item_id` bigint(20) NOT NULL COMMENT '问题id',
  `value` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户自定义内容',
  `oid` bigint(20) DEFAULT NULL COMMENT '用户选项id',
  `uid` bigint(20) NOT NULL COMMENT '用户id'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='问题答案';
      
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`uid`) VALUES (1,1,'何佳蔚',218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,2,'0',2,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`uid`) VALUES (1,3,'30',218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,4,'1',4,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,5,'1',7,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,6,'3',12,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,7,'1',19,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`uid`) VALUES (1,8,'上海',218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,9,'0',22,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,10,'1',27,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,11,'1',29,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,12,'1',31,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,13,'0',35,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,14,'3',40,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,15,'0',42,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,16,'0',44,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,17,'0',46,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,18,'2',50,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,19,'8',60,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,19,'3',55,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,20,'4',65,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,20,'2',63,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,21,'0',67,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,22,'1',71,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,23,'1',76,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,24,'3',82,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,25,'4',88,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,25,'0',84,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,26,'2',96,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,26,'3',97,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,26,'0',94,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,27,'0',98,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,28,'1',103,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,29,'1',105,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,30,'0',106,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,31,'0',108,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,32,'1',111,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,33,'1',113,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,34,'1',115,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,35,'1',117,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,36,'0',118,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,37,'0',120,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,38,'0',122,218);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`uid`) VALUES (1,1,'陈健',754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,2,'0',2,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`uid`) VALUES (1,3,'34',754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,4,'0',3,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,5,'0',6,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,6,'3',12,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,7,'2',20,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`uid`) VALUES (1,8,'上海',754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,9,'0',22,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,10,'1',27,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,11,'0',28,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,12,'1',31,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,13,'1',36,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,14,'2',39,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,15,'0',42,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,16,'0',44,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,17,'1',47,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,18,'2',50,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,19,'0',52,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,19,'2',54,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,19,'4',56,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,19,'5',57,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,20,'0',61,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,20,'1',62,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,20,'2',63,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,20,'4',65,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,20,'3',64,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,20,'5',66,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,21,'0',67,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,22,'2',72,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,23,'1',76,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,24,'3',82,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,25,'9',93,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,26,'2',96,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,26,'1',95,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,27,'1',99,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,28,'1',103,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,29,'0',104,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,30,'0',106,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,31,'1',109,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,32,'1',111,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,33,'1',113,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,34,'0',114,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,35,'1',117,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,36,'1',119,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,37,'0',120,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,38,'0',122,754);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`uid`) VALUES (1,1,'宓琳',1660);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,2,'0',2,1660);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`uid`) VALUES (1,3,'28',1660);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,4,'0',3,1660);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,5,'0',6,1660);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,6,'3',12,1660);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,7,'2',20,1660);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`uid`) VALUES (1,8,'上海',1660);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,9,'0',22,1660);
INSERT INTO `cquestionnaireans` (`qid`,`item_id`,`value`,`oid`,`uid`) VALUES (1,10,'1',27,1660);
-- ----------------------------
-- Table structure for cquestionnaireitem
-- ----------------------------
    
CREATE TABLE `cquestionnaireitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` bigint(20) NOT NULL COMMENT '问题类型',
  `required` tinyint(1) NOT NULL COMMENT '是否必选',
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '题目标题',
  `description` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '题目说明',
  `is_mult` tinyint(1) NOT NULL COMMENT '是否多选',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1 COMMENT='问卷题目';
      
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (1,1,1,'您的姓名','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (2,2,1,'您的性别','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (3,1,1,'您的年龄','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (4,2,1,'您的婚姻状态','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (5,2,1,'您的子女情况','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (6,2,1,'您所在的行业','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (7,2,1,'您所在企业的性质为','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (8,1,1,'您的职场所在地','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (9,2,1,'您的办公地点多为','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (10,2,1,'您是否抽烟','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (11,2,1,'您是否喝酒','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (12,2,1,'您的起床时间普遍为','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (13,2,1,'您的入寝时间普遍为','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (14,2,1,'您的睡眠时间平均为','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (15,2,1,'您是否有健康行为计划','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (16,2,1,'您是否完成定制的健康行为计划','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (17,2,1,'您BMI体脂指数是否在18.5-23.9之间？BMI=体重千克数/身高/身高','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (18,2,1,'您的运动频次','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (19,3,1,'您认为自己常有的健康烦恼为(多选)','',1);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (20,3,1,'您认为导致亚健康的原因有(多选)','',1);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (21,2,1,'您体检的频次','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (22,2,1,'您洁牙的频次','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (23,2,1,'您参与企业组织的健康活动频次','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (24,2,1,'您的健康状况打分（5分表示很健康，1分表示极度不健康）','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (25,3,1,'（上一题3分及以下的需要填写此问题）您的问题为(多选)','',1);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (26,3,1,'您主要忧虑的问题(多选)','',1);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (27,2,1,'您认为您的生理健康是否影响到您的工作与活动','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (28,2,1,'您是否在调研前四周内发生过疼痛或其他身体不适','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (29,2,1,'您是否在调研前四周内存在过心理感受不良','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (30,2,1,'您是否在调研四周前内明显情绪低落','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (31,2,1,'您是否因财务压力出现过焦虑症状','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (32,2,1,'您是否认为自己能很好的掌握自身的财务状况','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (33,2,1,'您是否经常使用信用卡或花呗透支','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (34,2,1,'您是否对自己的非预期支出存在信心','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (35,2,1,'您是否认为自己能承担大额医疗费用','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (36,2,1,'您是否认为子女教育支出会使日常开支紧张','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (37,2,1,'您是否为养老金储备感到担忧','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (38,2,1,'您是否对赡养父母的开支感到担忧','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (40,1,1,'您的身份证号','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (41,2,1,'您是否目前吸烟','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (42,4,1,'吸烟的话，请告知您每日吸烟量和吸烟年限','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (43,2,1,'您是否曾有药物滥用或服用毒品','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (44,4,1,'有药物滥用或毒品服用的话，请告知连续使用的时间及使用品种','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (45,2,1,'您目前或过去是否进行过以下检查或治疗','一年内去医院进行过门诊的检查、服药、手术或其他治疗;过去三年内曾有医学检查（包括健康体检）结果异常;过去五年曾住院治疗检查或治疗（包括入住疗养院、康复医院等医疗机构）',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (46,4,1,'过去有上述检查和治疗的话，请告知具体情况','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (47,2,1,'您是否目前或过去患有下列疾病、症候(选是的话，可以在下面附件中上传说明情况):','恶性肿瘤、心脏病（心功能不全Ⅱ级及以上）、心肌梗塞、白血病、高血压病（Ⅱ级及以上）、肝硬化、慢性阻塞性支气管疾病、脑血管疾病、慢性肾脏疾病、糖尿病、再生障碍性贫血、先天性疾病、精神病、癫痫、特定传染病、艾滋病、性传播疾病',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (48,4,1,'过去有上述疾病的话，请告知具体情况','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (49,2,1,'您是否有智能障碍。','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (50,4,1,'有智能障碍的话，请告知智能障碍等级','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (51,2,1,'您是否有五官、脊柱、胸廓、四肢、手指、足趾缺损、畸形或功能障碍','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (52,4,1,'有残疾的话，请告知残疾部位（哪侧）、原因、有无功能障碍、是否使用辅助器械','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (53,2,1,'您目前是否怀孕','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (54,4,1,'怀孕的话，请告知怀孕的孕周','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (55,2,1,'您目前或既往怀孕及生产期间是否有合并症？例如：蛋白尿、血尿、高血压、糖尿病等','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (56,4,1,'有合并症的话，请告知具体状况','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (57,2,1,'您是否曾有阴道不规则流血、乳房肿块、溢乳、腋下淋巴结肿大、乳腺增生或纤维瘤、其他乳腺疾病','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (58,4,1,'有上述疾病的话，请告知具体状况','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (59,2,1,'您是否曾有子宫肌瘤、内膜异位症、子宫颈上皮不典型增生、卵巢囊肿、畸胎瘤等','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (60,4,1,'有上述情况的话，请告知具体状况','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (61,2,1,'您是否有参加赛车、赛马、搏击类运动、蹦极、滑雪、攀岩、潜水、探险或特技活动及其他高风险活动的爱好','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (62,4,1,'有高风险活动的话，请告知参加的项目以及每年大约的次数','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (63,2,1,'您的父母、子女、兄弟姐妹是否患有癌症、白血病、血友病、心脑血管疾病、糖尿病、病毒性肝炎或病毒携带、多囊肝肾、肠息肉、其他遗传性疾病等','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (64,4,1,'有上述疾病的话，请告知具体情况','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (65,2,1,'您是否在投保其他保险公司的产品（重大疾病、医疗险、意外险）产品，被非标准承保（拒保、延期、附加条件或加费承保）或申请过理赔','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (66,4,1,'有上述情况的话，请告知具体情况','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (67,2,1,'您在保险期间内是否有计划长期居住或逗留在中国大陆以外的国家或地区累计超过6个月的','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (68,1,1,'有计划去的话，请告知计划去的国家或地区','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (69,1,1,'有计划去的话，请告知计划去的目的地','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (70,1,1,'有计划去的话，请告知计划居住时间(几个月)','',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (71,2,1,'用户信息确认','本人对上述各项内容均已理解，并同意将此告知书作为保险合同的一部分，本人上述健康及其他告知内容均属真实且无重大遗漏，与此告知书有关的问卷、体检报告书及对体检医生的各项陈述均确实无误且无重大遗漏，如有不实告知，贵司有权依法解除保险合同，并对合同解除前发生的保险事故不承担保险责任。所有告知事项以书面告知为准，口头告知无效。本人授权贵公司可以从任何单位、组织和个人就有关保险事宜查询、索取与本人相关的资料或证明，贵公司对个人资料承担保密义务。如果本投保单的中英文表述不一致，以中文表述为准',0);
INSERT INTO `cquestionnaireitem` (`id`,`type`,`required`,`title`,`description`,`is_mult`) VALUES (72,5,0,'可以上传图片补充上述问题资料','',0);
-- ----------------------------
-- Table structure for cquestionnaireoption
-- ----------------------------
    
CREATE TABLE `cquestionnaireoption` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) NOT NULL COMMENT '题目id',
  `value` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '选项内容',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=latin1 COMMENT='题目选项';
      
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (1,2,'1','男');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (2,2,'0','女');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (3,4,'0','未婚');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (4,4,'1','已婚');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (5,4,'2','其他');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (6,5,'0','0个');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (7,5,'1','1个');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (8,5,'2','2个及以上');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (9,6,'0','制造业');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (10,6,'1','汽车行业');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (11,6,'2','信息行业');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (12,6,'3','医药行业');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (13,6,'4','房地产行业');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (14,6,'5','电子行业');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (15,6,'6','金融行业');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (16,6,'7','批发零售业');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (17,6,'8','其他');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (18,7,'0','外资');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (19,7,'1','中外合资');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (20,7,'2','国企或央企');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (21,7,'3','私营');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (22,9,'0','办公室');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (23,9,'1','常年外出');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (24,9,'2','车间或工厂');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (25,9,'3','其他');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (26,10,'0','是');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (27,10,'1','否');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (28,11,'0','是');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (29,11,'1','否');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (30,12,'0','06:00前');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (31,12,'1','06:00-08:00');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (32,12,'2','08:00-10:00');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (33,12,'3','10:00-12:00');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (34,12,'4','12:00以后');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (35,13,'0','20:00-22:30');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (36,13,'1','22:30-23:59');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (37,13,'2','23:59以后');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (38,14,'0','3-5小时');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (39,14,'2','5-7小时');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (40,14,'3','7-9小时');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (41,14,'4','9小时以上');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (42,15,'0','是');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (43,15,'1','否');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (44,16,'0','是');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (45,16,'1','否');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (46,17,'0','是');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (47,17,'1','否');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (48,18,'0','超过5次/周');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (49,18,'1','3-5次/周');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (50,18,'2','2-3次/周');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (51,18,'3','0-1次/周');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (52,19,'0','失眠');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (53,19,'1','脱发');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (54,19,'2','肥胖');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (55,19,'3','脊椎不适');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (56,19,'4','肠胃不适');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (57,19,'5','身体沉重');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (58,19,'6','免疫力低下');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (59,19,'7','便秘');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (60,19,'8','头疼头晕');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (61,20,'0','情绪压力大');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (62,20,'1','休息时间不够');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (63,20,'2','不健康生活习惯');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (64,20,'3','活力状态低');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (65,20,'4','缺少运动');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (66,20,'5','经济压力大');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (67,21,'0','一年一次');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (68,21,'1','两年一次');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (69,21,'2','两年以上没有体检');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (70,22,'0','半年一次');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (71,22,'1','一年一次');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (72,22,'2','两年一次');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (73,22,'3','两年以上没有洗牙');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (74,22,'4','从未洗牙');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (75,23,'0','从未参加过');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (76,23,'1','1-2次/年');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (77,23,'2','3-5次/年');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (78,23,'3','5次/年以上');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (79,24,'0','1');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (80,24,'1','2');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (81,24,'2','3');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (82,24,'3','4');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (83,24,'4','5');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (84,25,'0','呼吸道疾病');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (85,25,'1','内分泌类疾病');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (86,25,'2','消化系统疾病');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (87,25,'3','骨关节疾病');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (88,25,'4','颈椎腰椎疾病');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (89,25,'5','心脑血管疾病：例如高血压，冠心病等');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (90,25,'6','血糖血脂类：糖尿病、高血脂等');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (91,25,'7','肿瘤、癌症');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (92,25,'8','精神类疾病抑郁症');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (93,25,'9','其他');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (94,26,'0','生理健康');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (95,26,'1','心理健康');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (96,26,'2','生活方式行为');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (97,26,'3','财务健康');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (98,27,'0','没有影响');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (99,27,'1','有较小影响');
INSERT INTO `cquestionnaireoption` (`id`,`item_id`,`value`,`name`) VALUES (100,27,'2','有较大影响');
-- ----------------------------
-- Table structure for cquestionnairetype
-- ----------------------------
    
CREATE TABLE `cquestionnairetype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
      
INSERT INTO `cquestionnairetype` (`id`,`name`) VALUES (1,'input');
INSERT INTO `cquestionnairetype` (`id`,`name`) VALUES (2,'radio');
INSERT INTO `cquestionnairetype` (`id`,`name`) VALUES (3,'checkbox');
INSERT INTO `cquestionnairetype` (`id`,`name`) VALUES (4,'textarea');
INSERT INTO `cquestionnairetype` (`id`,`name`) VALUES (5,'attachment');
-- ----------------------------
-- Table structure for creport
-- ----------------------------
    
CREATE TABLE `creport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(128) NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `uid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
      
INSERT INTO `creport` (`id`,`url`,`create_time`,`name`,`uid`) VALUES (1,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1552803570801-bi8WUXMkV.png','2019-03-17 16:15:27','test',122);
INSERT INTO `creport` (`id`,`url`,`create_time`,`name`,`uid`) VALUES (4,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1552812258507-9bwt6TiGZ.jpg','2019-03-17 16:51:21','家庭风险管理逻辑',125);
INSERT INTO `creport` (`id`,`url`,`create_time`,`name`,`uid`) VALUES (5,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1552812270640-7oIbMNy8F.jpg','2019-03-17 16:51:40','家庭保单整理',125);
INSERT INTO `creport` (`id`,`url`,`create_time`,`name`,`uid`) VALUES (6,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1552812263239-wHKnQvRbR.jpg','2019-03-17 16:51:54','风险缺口梳理',125);
-- ----------------------------
-- Table structure for crights
-- ----------------------------
    
CREATE TABLE `crights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL COMMENT '权益名称',
  `description` varchar(512) DEFAULT NULL COMMENT '权益说明',
  `categoryid` int(11) DEFAULT NULL COMMENT '权益分类ID',
  `validdate` bigint(20) DEFAULT NULL COMMENT '有效期 单位s',
  `user` varchar(45) DEFAULT NULL COMMENT '使用人说明',
  `num` int(11) DEFAULT NULL COMMENT '权益份额',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `unit` varchar(45) DEFAULT NULL COMMENT '份额单位',
  `display` int(11) DEFAULT NULL COMMENT '是否显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
      
INSERT INTO `crights` (`id`,`name`,`description`,`categoryid`,`validdate`,`user`,`create_time`,`unit`,`display`) VALUES (25,'基因检测及报告解读','我们为会员提供专业机构的基因检测及报告解读服务，帮助您解析自己的遗传密码，评估健康风险，了解疾病易感基因从而避开风险因素，改善环境和生活习惯，降低疾病发生概率。\n采样方式：口腔黏膜刮棒/唾液\n项目：成人4选1（肿瘤及烟酒代谢检测、肿瘤全面18项检测、心脑血管18项检测、代谢营养27项检测），儿童2选1（儿童营养14项检测、儿童安全用药检测）',2,31536000,'本人及家属','2022-08-23 22:45:58','次',1);
INSERT INTO `crights` (`id`,`name`,`description`,`categoryid`,`validdate`,`user`,`create_time`,`unit`,`display`) VALUES (26,'家庭健康档案','H2团队为您和您的家人建立全方位健康档案，记录在医疗保健活动中产生的有关健康状况、疾病动态、预防保健服务等情况，包括体检报告、基因检测报告、就诊记录等，以您和家人的健康为核心、贯穿整个生命过程、涵盖各种健康相关因素，实现全生命周期动态管理。',1,315328464000,'本人及家属','2022-08-24 11:17:51','次',1);
INSERT INTO `crights` (`id`,`name`,`description`,`categoryid`,`validdate`,`user`,`create_time`,`unit`,`display`) VALUES (27,'风险管理档案','H2团队为您的家庭建立风险管理档案，依托于数字化和条款解析技术帮您聚合家庭全部保单，由专业风险管理顾问为您梳理保险责任、明晰保障权益、续期缴费提醒等，提供专业化、智能化保单托管服务。',1,315328464000,'本人及家属','2022-08-24 11:18:32','次',1);
INSERT INTO `crights` (`id`,`name`,`description`,`categoryid`,`validdate`,`user`,`create_time`,`unit`,`display`) VALUES (28,'体检报告解读','我们将根据您的健康状况，结合既往病史、家庭遗传因素，为您定制体检方案，避免漏检、误检的可能性。针对您的体检报告，专属健康管理顾问将从专业的角度深度解读您的体检报告，并针对体检报告异常指标进行健康指导，及时解决健康隐患。',2,315328464000,'本人及家属','2022-08-24 11:20:00','次',1);
INSERT INTO `crights` (`id`,`name`,`description`,`categoryid`,`validdate`,`user`,`create_time`,`unit`,`display`) VALUES (29,'诊前咨询及专家推荐','针对您的健康情况，我们的专业团队可为您和家人提供诊前咨询服务，根据您的所在地、健康状况为您推荐适合的医院及对应的医生，帮您找对医院、找对专家。',3,157680000,'本人及家属','2022-08-24 11:20:46','次',1);
INSERT INTO `crights` (`id`,`name`,`description`,`categoryid`,`validdate`,`user`,`create_time`,`unit`,`display`) VALUES (30,'专家门诊预约','我们为您和家人安排合适的专家门诊，可预约全国三甲医院副主任及以上级别专家门诊。您可以指定医院及科室，我们为您解决就诊难的问题。\n注：预约专家门诊包括普通门诊、专家门诊、特需门诊，具体以医生出诊为准；该服务不包括急诊、孕产相关就诊的预约；\n请提前1-7个工作日预约，预约成功后客服将在一个工作日内电话及短信通知；预约成功后，如因个人原因未按时使用当次权益，则视为已使用；\n就诊过程中产生的医疗费用（包括但不限于挂号费、检查费、治疗费、药品费、床位费、护理费等）由客户自行承担。',3,157680000,'本人及家属','2022-08-24 11:21:33','次',1);
INSERT INTO `crights` (`id`,`name`,`description`,`categoryid`,`validdate`,`user`,`create_time`,`unit`,`display`) VALUES (31,'门诊就诊陪护','我们为您和家人安排专业人员在医院全程陪同服务，包括诊前迎候接待、就诊取号、协调检查、取化验单、协助缴费、取药等服务，帮助您更顺畅地就医。\n注：服务时间为周一至周五 9:00-18:00，单次陪伴时长以4小时为限，请提前1-2个工作日预约；\n16岁以下的儿童及70岁（含）以上的老人，需成年家属陪同；行动不便的患者需有家属陪同；该服务不包括危重症、急救、住院、门急诊手术、精神病、传染病及产科患者。',3,157680000,'本人及家属','2022-08-24 11:22:11','次',1);
INSERT INTO `crights` (`id`,`name`,`description`,`categoryid`,`validdate`,`user`,`create_time`,`unit`,`display`) VALUES (32,'重疾就诊绿通','当会员罹患重大疾病需要住院治疗时，我们为会员启动重疾险绿色通道，包括专家导诊、专家门诊预约、住院协调、专家手术协调、医后随访等服务。\n注：就诊过程中产生的医疗费用（包括但不限于挂号费、检查费、治疗费、药品费、床位费、护理费等）由客户自行承担。',3,315328464000,'本人','2022-08-24 11:22:56','次',1);
INSERT INTO `crights` (`id`,`name`,`description`,`categoryid`,`validdate`,`user`,`create_time`,`unit`,`display`) VALUES (33,'住院诊后回访','我们为您和家人提供住院诊后回访服务，为您讲解居家康复注意事项，解决出院后居家康复难题。健康顾问会在接到申请后2小时内回电，单次服务时长以1.5小时为限，服务时间为周一至周日8:00-21:00。',3,157680000,'本人及家属','2022-08-24 11:24:00','次',1);
INSERT INTO `crights` (`id`,`name`,`description`,`categoryid`,`validdate`,`user`,`create_time`,`unit`,`display`) VALUES (34,'疫苗接种预约','我们为您和家人免费提供疫苗接种预约服务，包括但不限于四价HPV疫苗、九价HPV疫苗、流感疫苗、带状疱疹疫苗等，接种机构均为专业公立或私立医院。\n注：接种疫苗过程中产生的医疗费用（包括但不限于挂号费、检查费、药品费等）由客户自行承担。',4,315328464000,'本人及家属','2022-08-24 11:24:41','次',1);
INSERT INTO `crights` (`id`,`name`,`description`,`categoryid`,`validdate`,`user`,`create_time`,`unit`,`display`) VALUES (35,'齿科保健卡券','我们提供专业齿科机构的齿科洁治保健套餐，包括口腔检查、超声波洁牙、全口抛光、全景口腔X光拍片等项目。您可以根据自己的安排就近预约使用。',4,157680000,'本人及家属','2022-08-24 11:25:13','张',1);
INSERT INTO `crights` (`id`,`name`,`description`,`categoryid`,`validdate`,`user`,`create_time`,`unit`,`display`) VALUES (36,'预防保健类体验券、优惠券','我们与众多知名私立医院、专业医疗机构建立了良好的合作，不定期为会员提供预防保健类项目的体验券、优惠券，全面呵护您的健康。',4,315328464000,'本人及家属','2022-08-24 11:25:54','张',1);
INSERT INTO `crights` (`id`,`name`,`description`,`categoryid`,`validdate`,`user`,`create_time`,`unit`,`display`) VALUES (37,'四季养生茶饮','我们为您和家人优选高品质四季养生茶饮，根据五行说和药食同源的道理，定制春夏秋冬四季养生茶，提升健康状态。',4,31536000,'本人及家属','2022-08-24 11:26:32','份',1);
INSERT INTO `crights` (`id`,`name`,`description`,`categoryid`,`validdate`,`user`,`create_time`,`unit`,`display`) VALUES (38,'冬令进补膏方养生','H2每年秋冬季节举办养生沙龙，邀请中医院知名专家现场讲座，并为会员及家属免费把脉问诊，出具膏方处方，提供养生建议。\n注：问诊活动目前仅限上海地区；该权益提供免费讲座及问诊服务，如需制作膏方，药材费及制作费需由会员自行承担。',4,315328464000,'本人及家属','2022-08-24 11:27:08','次',1);
INSERT INTO `crights` (`id`,`name`,`description`,`categoryid`,`validdate`,`user`,`create_time`,`unit`,`display`) VALUES (39,'法律咨询','当会员在生活中、工作中遇到法律问题需要专业律师解答时，可享受由国内知名律师事务所提供的法律询服务（若同城设有律所办公室可预约办公室线下咨询）。您提供基本信息、咨询问题及时间，律所服务顾问分析客户需求后，为您推荐并预约合伙人律师，按预约时间进行咨询。\n咨询内容包括但不限于，资产传承相关业务咨询，并与相关各方包括信托公司、监管机构等进行沟通、磋商并进行传承方案的综合设计；婚前及婚内财产梳理与规划的相关咨询；婚姻纠纷、继承纠纷、股权纠纷的相关咨询；遗嘱、遗嘱信托、遗嘱见证与执行的相关咨询；境内及境外家族信托、保险金信托方案的相关咨询等。\n服务时间：工作日9:00-17:00\n本权益仅包含权益规定时长内的电话咨询免费服务，不包含所提供方案落地实施操作支持的服务费用，超出部分由客户自行承担。',5,157680000,'本人及家属','2022-08-24 11:27:56','小时',1);
INSERT INTO `crights` (`id`,`name`,`description`,`categoryid`,`validdate`,`user`,`create_time`,`unit`,`display`) VALUES (40,'税务咨询','当会员在生活中、工作中遇到税务问题需要咨询时，可享受由国内知名税务师事务所提供的税务咨询服务。咨询内容包括但不限于，移民前财产规划、移民前信托搭建方案的相关咨询；慈善信托与慈善基金会的咨询并进行方案设计；对CRS申报、FATCA申报的合规性进行咨询；税务筹划综合咨询；境内外架构搭建方案的相关咨询等。\n服务时间：工作日9:00-17:00\n本权益仅包含权益规定时长内的电话咨询免费服务，不包含所提供方案落地实施操作支持的服务费用，超出部分由客户自行承担。',5,157680000,'本人及家属','2022-08-24 11:28:27','小时',1);
INSERT INTO `crights` (`id`,`name`,`description`,`categoryid`,`validdate`,`user`,`create_time`,`unit`,`display`) VALUES (41,'教育规划咨询','我们为会员提供优质的K12一站式教育规划服务，1对1定制规划，主要内容包括入学申请、转学申请、留学申请、教育咨询等，可根据会员的情况出具咨询报告或教育政策分析备忘录等材料。\n服务时间：工作日9:00-17:00\n本权益仅包含权益规定时长内的电话咨询免费服务，不包含所提供方案落地实施操作支持的服务费用，超出部分由客户自行承担。',5,157680000,'本人及家属','2022-08-24 11:29:03','小时',1);
INSERT INTO `crights` (`id`,`name`,`description`,`categoryid`,`validdate`,`user`,`create_time`,`unit`,`display`) VALUES (42,'理赔协助代办','H2团队为您提供理赔代办协助服务，包括理赔单证收集、初步审核、提交、与保险公司沟通等全流程服务',5,31536000,'本人','2023-04-27 10:27:22','次',1);
-- ----------------------------
-- Table structure for crightsgroup
-- ----------------------------
    
CREATE TABLE `crightsgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `icon` varchar(128) DEFAULT NULL COMMENT '类别icon',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
      
INSERT INTO `crightsgroup` (`id`,`name`,`icon`) VALUES (1,'档案管理类','https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1669358286501-qHRi7HDPx.png');
INSERT INTO `crightsgroup` (`id`,`name`,`icon`) VALUES (2,'健康管理类','https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1669358295256-y1oH1BKyS.png');
INSERT INTO `crightsgroup` (`id`,`name`,`icon`) VALUES (3,'医疗绿通类','https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1669358305936-g1SaLUpDu.png');
INSERT INTO `crightsgroup` (`id`,`name`,`icon`) VALUES (4,'保健养生类','https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1669358313495-EOvMo40zm.png');
INSERT INTO `crightsgroup` (`id`,`name`,`icon`) VALUES (5,'专业咨询类','https://lg-ick5yu5q-1257296211.cos.ap-shanghai.myqcloud.com/1669358321764-37wu5wNCG.png');
-- ----------------------------
-- Table structure for cruninfo
-- ----------------------------
    
CREATE TABLE `cruninfo` (
  `timestamp` int(11) NOT NULL,
  `step` int(11) NOT NULL,
  `bonus_flag` tinyint(1) NOT NULL COMMENT '是否计算过积分',
  `uid` bigint(20) NOT NULL,
  PRIMARY KEY (`timestamp`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录用户每日步数';
      
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,896,0,88);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,1917,0,90);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,12103,1,106);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,0,0,125);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,4422,0,131);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,3281,0,136);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,5605,0,137);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,6310,0,138);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,7238,0,147);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,11531,1,165);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,3347,0,166);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,3060,0,169);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,19122,1,182);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,5538,0,190);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,7699,0,191);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,0,0,193);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,3489,0,218);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,6742,0,243);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,4593,0,247);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,1568,0,248);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,15203,1,274);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,13345,1,284);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,7511,0,300);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,11039,1,301);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,3575,0,392);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,20136,1,397);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,10692,1,412);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,7184,0,427);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,14232,1,432);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,6046,0,439);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,12570,1,457);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,7615,0,481);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,5661,0,482);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,10032,1,501);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,14760,1,508);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,19203,1,511);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,12623,1,523);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,10807,1,526);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,4279,0,547);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,10988,1,552);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,10364,1,553);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,9625,0,554);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,9117,0,556);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,9088,0,559);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,9659,0,560);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,18021,1,568);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,8056,0,570);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,8406,0,572);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,5625,0,584);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,7446,0,586);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,11023,1,592);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,11493,1,593);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,12030,1,594);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,4184,0,595);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,18857,1,596);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,5334,0,604);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,12415,1,608);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,8014,0,609);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,4910,0,623);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,8004,0,638);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,29840,1,644);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,15077,1,665);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,10066,1,695);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,11897,1,698);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,2681,0,723);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,8018,0,735);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,2238,0,750);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,13182,1,816);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,12597,1,842);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,10230,1,849);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,11897,1,870);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,13433,1,880);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,9436,0,890);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,10626,1,901);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,5489,0,908);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,5766,0,933);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,1340,0,941);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,13388,1,953);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,11829,1,954);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,21420,1,965);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,6235,0,983);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,6507,0,985);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,6584,0,989);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,8238,0,1108);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,9102,0,1138);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,8512,0,1140);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,21282,1,1141);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,4370,0,1142);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,5988,0,1146);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,11037,1,1147);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,11965,1,1184);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,6599,0,1189);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,14678,1,1199);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,3624,0,1201);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,8659,0,1206);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,14156,1,1211);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,6089,0,1217);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,0,0,1235);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,11586,1,1290);
INSERT INTO `cruninfo` (`timestamp`,`step`,`bonus_flag`,`uid`) VALUES (1656518400,4796,0,1296);
-- ----------------------------
-- Table structure for csessioninfo
-- ----------------------------
    
CREATE TABLE `csessioninfo` (
  `open_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skey` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_visit_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `session_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_info` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`open_id`),
  KEY `openid` (`open_id`) USING BTREE,
  KEY `skey` (`skey`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会话管理用户信息';
      
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a_7dXvBP5HKKhh1Xra3vwI','7420e77d-78aa-4f0a-964a-5b73c758b420','bc9510928188582e5e9ada89aead80bc96e4f508','2023-01-18 14:11:33','2023-01-18 14:11:33','I8pldwZA+whX6xXlOSqIQA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1674022292,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5a_7dXvBP5HKKhh1Xra3vwI\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a_cu06w6BosOp9AHH-EJZE','66422fd0-d838-4ee7-b6ed-9a4711cff6b2','d10b3b14241daa3711bb70ea803de5385c05e3f0','2023-09-14 16:56:30','2023-11-23 13:30:48','DHUOlsrTFkjhkf1Xg/QDpQ==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1700717447,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5a_cu06w6BosOp9AHH-EJZE\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a-fcqV5YNxBoGN1ykwqxk8','e25983b3-0fa9-489d-9e76-5ee6fd22232a','5a7c4449c9fbfd1e3ceb4a9816c95b83cee38dad','2022-08-29 11:12:03','2022-10-20 18:02:10','U3jCF1BhwapEjqkBIWOv7A==','{\"nickName\":\"Jackson yee\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83er95BpT5xmtLbtpLWJAVialy0ST5pdcLeFmBYIyKJEhVqyfupyF9Q3P08sGz3VwePz80dvq3gOW58Q/132\",\"watermark\":{\"timestamp\":1666260129,\"appid\":\"wx10456ccd8ac36129\"},\"openId\":\"oWA6a5a-fcqV5YNxBoGN1ykwqxk8\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a-Fm3AQTRi7oKciEmhaUB8','42b2a5cf-39a6-4720-acfe-0a4cb2c7d486','60b49808c599aa0a6e0284ca214cc81b5a7931ca','2024-11-04 15:58:20','2024-11-04 15:58:20','FWXxk5YmGBT02hS3IoFzhA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1730707100,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5a-Fm3AQTRi7oKciEmhaUB8\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a0-7JFQemKnjQY0SkXD9KE','7a85c982-43be-44f6-8b62-427ae40f4ce6','4ad4641281bbdcb15f1a040f10e1665a53a57711','2022-12-20 14:12:44','2022-12-20 14:12:44','dvJDEJETBIIkjJuY7A28pA==','{\"nickName\":\"ω\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83ervrd5KOBKy2W3TBXI72RO88UjxdVhZtAqdHQPU3Ermvr13wISDiceicMabYvo8bLIUQvNmfy6c2E4w/132\",\"watermark\":{\"timestamp\":1671516764,\"appid\":\"wx10456ccd8ac36129\"},\"openId\":\"oWA6a5a0-7JFQemKnjQY0SkXD9KE\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a0gc82OCefRRmEroTBqc74','c8849def-f746-4b07-a1c4-3acaacee1c41','78ac1af13bfd086629ff3754a7d00ef780ec0358','2023-01-10 14:28:12','2023-01-10 14:28:12','3/daQCUpl4fifZRnN7zcmQ==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1673332091,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5a0gc82OCefRRmEroTBqc74\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a0tLRlOmNLvRTPYzUFJkRQ','52c33b34-a278-4103-94d4-ada018bcbda3','c65a11c6b033a01764d578c3eb5bd0b45d6073ad','2022-06-04 20:39:15','2024-12-24 23:01:23','t3jD973MhTHptozfm3b0Ig==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1735052483,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5a0tLRlOmNLvRTPYzUFJkRQ\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a0U0lU7Zw7U0SEptDmzfAk','00517d51-10f1-4bbd-b6d5-1c59d9f9d250','92b0a5798ac3cd00db5a875af922d114fa1b590a','2023-08-22 17:46:13','2023-08-22 17:46:20','8uOsN7gA6kZftWpot+0PUQ==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1692697579,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5a0U0lU7Zw7U0SEptDmzfAk\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a1BUzxLgYQ9hlDXQ8zs5YY','5582ff83-2089-4c81-8253-13251f66b6ee','fca4ab6fd0f8fc9e424c928c695254b9f1a24833','2024-06-13 15:03:20','2024-06-13 15:03:20','TYOei9Q/8Fk63e83jtFn9w==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1718262199,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5a1BUzxLgYQ9hlDXQ8zs5YY\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a1wLgNUNrSVcPBqvULkWqA','17338325-a13a-4bbf-9562-ca9e12d574a2','a982ecd13c9aedc86074c69a7626eb185be271ac','2023-07-10 21:24:32','2023-07-10 21:24:41','r4ujvPsg0QG2qseS6yWMYQ==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1688995481,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5a1wLgNUNrSVcPBqvULkWqA\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a3ikJIHqdxK3bsP2PG-th4','02b5ee6c-c1b1-4dec-a5de-f3c1b4bdce33','0a9fa63a2e3b8055fe06ea8d5d60515e49f7270c','2024-01-03 09:01:52','2024-12-31 16:31:20','Ltnl5k9LxBAiPogGC3dNZQ==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1735633879,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5a3ikJIHqdxK3bsP2PG-th4\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a3rBNY2_nG8xMp_yENQ1LM','1e9d2d0a-1f94-4378-ac5c-81970ef00c19','a3eb06b630920f350774b9b5ff66b9031a8b045d','2022-07-08 23:25:16','2022-11-28 23:57:45','gJ6VIoL1t7lfRb25YooqUQ==','{\"nickName\":\"艾米丽亚_emilia\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoHqctMnD9dxMiaCgV76X87XEKrnicGBAOSW10HnUskI47hIET18ruiaT6oD5tc2OiamkrlsqS3UiaeMbQ/132\",\"watermark\":{\"timestamp\":1669651063,\"appid\":\"wx10456ccd8ac36129\"},\"openId\":\"oWA6a5a3rBNY2_nG8xMp_yENQ1LM\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a4_q4IgeYmehh_u0o7OPrs','61707323-9585-4104-be5f-97d9b493c840','668d600f8298fea5a9304f77a642df9e880e388b','2024-11-08 11:44:41','2024-11-08 11:44:41','Y0uegp1xDG+PkE2etOYSfg==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1731037480,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5a4_q4IgeYmehh_u0o7OPrs\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a4C2h3g2q_BfT-6TuIvUFE','e6aac6c3-1f27-4bcb-a7aa-e2a7ff1cee28','de2fbd9863e546b8b07212a6cb27de65b8037d8d','2022-06-08 23:10:56','2022-11-24 16:15:36','j0Jco074S1bucHGLRbGdnQ==','{\"nickName\":\"白夜\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/oAdEUk0YiaJaArRHSBWm3xL7yGPic70UMkfOQsZfKIwLgqvQ8FZbjxes5Q9MzLI4wVB0h8mLlEducoNCV1Ry2qrQ/132\",\"watermark\":{\"timestamp\":1669277735,\"appid\":\"wx10456ccd8ac36129\"},\"openId\":\"oWA6a5a4C2h3g2q_BfT-6TuIvUFE\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a4f34Ym0s2z9NEdG0o0hQY','8fec41e2-69d7-4901-998c-a2d3c8f51331','6e72a063c1bbc27f5fc97ffc3779a6a068e3f2ed','2023-03-01 15:14:24','2023-03-28 08:08:24','5GwtnCQocIrrap8UjY1T0g==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1679962104,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5a4f34Ym0s2z9NEdG0o0hQY\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a5-4fKmQLGYMYZ2xGCfr8s','fc832d27-4c41-4f97-817a-31e27ab76fd9','8085c4c3fef711b64a0cf48802a865269fc26bd5','2022-09-15 10:01:18','2022-12-20 10:04:10','eDzLnH7aswqJrDnS4m9Jzg==','{\"nickName\":\"CJ\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/qhfU2nHHpLfb6F8RnFicwtAVR9AlIc9OWXC0ETvZuTpSPmOcfgdkTzvOYqwa4eZ5KX7QgUXBdR8o1ghxJTKpSRQ/132\",\"watermark\":{\"timestamp\":1671501849,\"appid\":\"wx10456ccd8ac36129\"},\"openId\":\"oWA6a5a5-4fKmQLGYMYZ2xGCfr8s\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a6gCzfzOch_wHdMCzfRyGQ','132cb715-597d-427e-b776-bbbf5ee9854c','b6d50a9f78030b58f89c59194df4a55e604dad35','2022-06-29 20:40:26','2023-11-01 15:55:01','T9ZHYJgxL4zUMMGF1JXn2g==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1698825301,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5a6gCzfzOch_wHdMCzfRyGQ\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a6t_pUheDPbJ6wlmloIGV8','c72a3403-e20d-4a00-ace0-b7a136d2dbbe','71093b3b5c739909e0bdf1c2f30f079040e447e1','2023-11-23 10:04:59','2023-11-23 10:04:59','XSQyOb5qO/cdloT/VW7qxA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1700705099,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5a6t_pUheDPbJ6wlmloIGV8\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a7eodEU2Z1kItMNi3F0HGg','ff89202c-845a-415e-b5e3-0da4847b62d8','eb38cc50d29fd5f3bfdecbfe255548d46bfe1c87','2023-09-01 15:02:09','2023-09-01 15:02:13','YZCQ2LRDTl6gn4PXyY7WkA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1693551732,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5a7eodEU2Z1kItMNi3F0HGg\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a8lJUyZup6A7PVvPXzvIkk','3473b992-b9f8-4404-8ac2-267d2dc70bbe','49479c3de698f009a7a4d10ba1ddb5058ae71480','2023-03-03 10:30:49','2023-03-03 10:30:55','XxHAOzDp94lx4lj5zAMqSA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1677810654,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5a8lJUyZup6A7PVvPXzvIkk\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a8xa2x84Wt-Oz5NcK6mmaQ','705723b5-95e3-4c0c-aa44-3585ed425061','0d724a4c6fa19c27623f5014cfbcfc58c6058937','2022-06-05 06:44:49','2022-11-16 18:30:22','nTycySUC3s36f1QGyrR5/Q==','{\"nickName\":\"春良\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJdPpbGVFHUvvOAWoOPnpIaaXpibPhh0QLflZFEq6yrTpHNmqvhQFdFpgolic35GfHfibmSsftH63SqA/132\",\"watermark\":{\"timestamp\":1668594621,\"appid\":\"wx10456ccd8ac36129\"},\"openId\":\"oWA6a5a8xa2x84Wt-Oz5NcK6mmaQ\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5a8Y6gxhy1R9db9XWg4ho4c','59535c67-d59c-4f52-8b84-78bebe2c234b','00db0bdd0ebf86c2b13372c627a10a87c20504e1','2024-02-24 21:10:01','2024-12-24 13:32:01','sqW0+O/sqyMDOajGOSeGZA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1735018320,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5a8Y6gxhy1R9db9XWg4ho4c\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aa7H7H8w1JxQ9GKiTfXhFs','ac16b2c5-bcb1-4ca9-b057-cb4801075837','b2cbf37bbea43093676c2ecfedd6c7664415b030','2024-10-09 19:39:51','2024-12-27 07:44:51','H+0zcKFrQncASuf6CWpEkA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1735256691,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aa7H7H8w1JxQ9GKiTfXhFs\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aB3lSDpI18b131RBuPA-_g','10f45da4-e747-421f-a9c0-a96a11453f6b','f0ab2b3843d19b00b1bcce7eda956fb2f4148dd2','2023-06-01 12:04:53','2023-06-01 12:05:04','6uiIHVsWnCKPSOAAttaOcA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1685592304,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aB3lSDpI18b131RBuPA-_g\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5abAzoBQGeiYKsaRsw-g8XY','4b1882c5-be66-40fc-91c9-a77976aeecc2','686ef0bdc0ea21f4d4c33e91b96c557723611566','2024-10-01 15:02:47','2024-10-01 15:02:47','hpV7RvfVH1ixr5sm/HOshQ==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1727766166,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5abAzoBQGeiYKsaRsw-g8XY\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aBefZwJE5_NYEcX2NBfEyw','47b83bc3-82f3-4bb5-b1bc-492f54d1dcce','7027ce2cbb0fec06f94724a3f4eb312cfe0ab97c','2024-09-30 20:33:02','2024-09-30 20:33:02','wa+JS78e4kRrixfo8hBzvw==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1727699581,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aBefZwJE5_NYEcX2NBfEyw\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aBKrojdM1XCrtMEPbd7IsQ','3315d940-a6da-410a-899b-e49e4e16b414','94b9144b8543a70cd66f7c20ce17d5e17f619874','2024-12-19 13:34:55','2024-12-19 13:34:55','dqb48yYkAmyi6BbyvgaDJg==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1734586494,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aBKrojdM1XCrtMEPbd7IsQ\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5abLvYHvrAuMwNysDx4OVs0','726a9ae4-481d-42b7-b5ae-91a739eb2b99','ad1c2e345b63a5457f76344434c463acbd8c53d2','2024-01-16 22:12:48','2024-01-16 22:12:56','s7+hBFfpyewjAvepNKQqgw==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1705414376,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5abLvYHvrAuMwNysDx4OVs0\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5abqjhx01Tp5NDRh_ObrL6M','f582c4c8-0c11-4b29-98fc-39b7d9033117','bd976a99cfd4263a73a4b60e309f8bacc52a1da6','2023-03-06 17:33:21','2023-03-06 17:33:28','XmHv4kGL3TLu5zNgd40WMA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1678095207,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5abqjhx01Tp5NDRh_ObrL6M\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aCc5BrZh7QJlFSq-PosLyI','244094b5-1873-4409-9899-0cc7e4742669','fcd2b7a517f6c519306fc4f50e042bbf46a0c73b','2023-10-19 14:32:31','2024-04-23 15:49:51','GEndact6yXtqeen6nF82hw==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1713858590,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aCc5BrZh7QJlFSq-PosLyI\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5acST0zEMZ2apoFICBnv0JM','ef59aa0a-e062-493b-ab1f-84b748b0ffc0','1eb1ee29c76324ce3b72bc27837377ecebc017ab','2024-01-21 17:27:08','2024-01-21 17:27:19','uNm/eFFVtVnBVl6FcpKsdQ==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1705829238,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5acST0zEMZ2apoFICBnv0JM\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5ad-Ce-jSaRSdvFdFonT3Og','4c80f99c-6631-48c8-974c-d6b58e8a39f2','34454123f008ab9bb353ccbd2e67e36de761580c','2024-10-01 04:33:55','2024-10-08 11:12:49','Y0zaSZlUVlyLFj3ZcJPjug==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1728357168,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5ad-Ce-jSaRSdvFdFonT3Og\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aDbfePglFpTan_JqPcVR1U','290270c7-0fda-4763-ad5f-3d8047ea4969','8a7c836a7b40bb7e67894a07d18d245417012f66','2023-05-15 07:36:31','2023-06-12 09:34:42','r34UnD0Oi/cZg4A/UsHHYg==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1686533682,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aDbfePglFpTan_JqPcVR1U\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5adSmmpdhxzRp_cv1arXvYM','3d0d0a3f-6e2b-467d-a76b-d54037fa4dc8','879290001b5bd6b3827b3a41c96bb4b47fefc9b9','2022-06-04 07:28:25','2024-12-29 22:16:41','Mvd8MhllvPQzJ7q55cR/AQ==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1735481800,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5adSmmpdhxzRp_cv1arXvYM\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5adtbAndp-jLPBWqEVlZe_w','8b013df7-9db5-4de7-8831-7c20df3ae7d6','c2bdd2399b3b2970ef2621392d70e1557ee01260','2022-07-07 08:13:52','2024-12-30 22:43:38','Etp6K1ykruT0F+KFSfXiug==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1735569818,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5adtbAndp-jLPBWqEVlZe_w\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aE3PJAvWHaPSUepzFbm30k','e38d756c-7127-4fb0-9ebb-d084ad75027f','9943a9831ff1cfd2fc16d08d84bc2971c24f07f6','2023-06-09 08:33:49','2023-06-09 08:34:15','rjeZgtzZZlt2/wzXsTDx1g==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1686270855,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aE3PJAvWHaPSUepzFbm30k\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aEioNyyyidzJ9AjotaNxfg','29f81204-c2db-4125-b0bc-75b413e25051','acc6d1d74501317292bcc7a555703302d4de5451','2024-11-20 20:59:03','2024-11-20 20:59:03','WNfFDFkbJ7mG6ajdwF2U8w==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1732107542,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aEioNyyyidzJ9AjotaNxfg\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aEOHd_VBq-QFE8Wyz0_F4U','36bde989-11b9-4179-90e4-65fe330dbc10','f9a48fddc8b59d4ddae87689c761bcc3efa60a57','2024-05-10 15:01:03','2024-12-14 22:23:28','7VYinwq2J2EVYwOncWpBew==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1734186208,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aEOHd_VBq-QFE8Wyz0_F4U\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aeRH7mV5gL6C0R2yfUFFvk','f9c7964c-bf86-4335-9a6d-77b99cf34499','e538de88651f6c9264dbc4639bdd5d4e0b2d4c27','2022-09-04 22:59:59','2023-12-13 15:04:23','MqRrx3zd0vxCPRnJKaPGlA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1702451062,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aeRH7mV5gL6C0R2yfUFFvk\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aEuW7Vuc7E00VK-J1XVHs8','d36d2d5b-7d9a-407e-ba1f-f75f788eb08d','1680443aafcfa77d5496bb302325465c1b498364','2023-05-09 10:19:15','2023-05-09 10:19:23','45hl9dc0lrNTxxVY6xahiA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1683598762,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aEuW7Vuc7E00VK-J1XVHs8\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aFEBqjoQ8iVatdJ6DDLD7Y','c0abf51e-8a6d-452e-93c8-6e5910ab88d3','9fd9a6a0e7e586e7965f47b9f05bfd71adf03b3f','2023-05-09 12:10:03','2024-11-08 10:05:51','o+IE1VXajVN7ePmYCMjniQ==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1731031550,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aFEBqjoQ8iVatdJ6DDLD7Y\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5afWU010OQ2eVzsj7934afs','560fb869-e9ac-4b49-bf04-7a855c683aaf','6a4b2e4f21a3d911da7949ca20838ce0e7d1bd73','2022-12-23 14:45:04','2022-12-23 14:45:04','NR5JS0m5BJsg/eRUdUkXkA==','{\"nickName\":\"八月\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEKV7iaDB3zL79B023ziaT4vicA87ZdoblcJ6XCFcPOUrPUwpnj4LadlgFG26eianf4icHVricKNCBCrW0ibA/132\",\"watermark\":{\"timestamp\":1671777904,\"appid\":\"wx10456ccd8ac36129\"},\"openId\":\"oWA6a5afWU010OQ2eVzsj7934afs\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aGMbzAKpK2REjmz0ilp4FA','366fe96f-2ec9-4c86-9b70-bed3bec3c0b2','8de2be6f040f7fc93e41cd5bea681947fe1054c9','2023-03-01 15:15:10','2023-03-01 15:15:30','cUCWiQHYTBQ31+LrJyyceA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1677654929,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aGMbzAKpK2REjmz0ilp4FA\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aHNIi_eCRjwWjuWs4G-SAo','671fd98e-e3d8-4682-8997-626b7b63fe89','aee7c9a180351121f92a6098cc75fca9894dc606','2023-05-09 16:09:39','2023-05-09 16:09:53','a5vEGcolR/G2H56HLrChrg==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1683619793,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aHNIi_eCRjwWjuWs4G-SAo\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aHu4D5O4pEl7-MF54uFu28','b67d84b4-c5ec-45c8-ac72-ea58ad60744a','a17773ef4588d4e726595f0b378d6190e99519e9','2023-11-25 16:30:26','2023-11-25 16:30:33','6C398bwbjx+A3KUZhXWQCg==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1700901032,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aHu4D5O4pEl7-MF54uFu28\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5ahxh-QeNWVFViXpy4pXR4c','1227c4c0-e5c7-4a61-b0dc-630a96f2adae','3d3d4095c12633503b9ef2b30b63dcda3aa7746c','2022-06-04 07:37:29','2024-11-14 07:45:22','TSaAeIPvgGbg8ULSLxAb+w==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1731541521,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5ahxh-QeNWVFViXpy4pXR4c\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5ai-0QxhDengGhIIi45ZY8Y','b5b63acc-aafb-4dda-b1ed-c271d260717c','0f80dddd8a5aca1095e231dc4333a68b0d0100c3','2024-10-15 16:47:16','2024-10-18 19:55:21','b409H0b8UizvyiOsd83JYQ==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1729252520,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5ai-0QxhDengGhIIi45ZY8Y\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5ai-F2A_f5p3HEmxUZPx9oE','f0736806-bd50-4ab4-8082-82392b25a866','a2cd1f6563c1343d1978f28f14fb03afb0ae0130','2022-06-06 07:58:05','2024-12-10 07:46:56','s8QjaS18XRQNaIIYZU+Jzw==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1733788015,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5ai-F2A_f5p3HEmxUZPx9oE\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aI3Xoh3hkEK_0MyyVI9rNY','cdc1d42b-009c-493d-a037-2d42ae3ebf38','508dcee3c208a2f8670923062cc51af8133913eb','2024-12-24 13:32:22','2024-12-24 13:32:22','ZwxDMh1a7CbP8f3fpxmmhQ==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1735018341,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aI3Xoh3hkEK_0MyyVI9rNY\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aIavcHDczSjc46fs9pikO0','1a519f5b-c297-474b-b199-1a575695b5f7','1fe66c6f78923fce670b946e6900a713bc7e40ad','2023-12-07 10:29:28','2023-12-07 10:29:33','RhouM9j/Mf7tVLtX8v8oHQ==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1701916172,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aIavcHDczSjc46fs9pikO0\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aib5kbrDa2xiw1-AQ8DQgY','3d8e36d7-1612-446f-b442-0dcd649185ee','60eb736f9e7f6269ef3650bf43d13b544497e99c','2023-03-01 16:18:46','2024-02-28 20:48:50','SIl4+Q0gaGIguarTZutkug==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1709124529,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aib5kbrDa2xiw1-AQ8DQgY\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aiFaQjC3Ynm9iDJamaaaM4','d60838b6-0f8d-4fd7-bef2-bd1588980536','1edd338fc2716a4ecf3570806436f2421403742c','2023-03-26 21:38:59','2024-11-21 21:00:48','B3HpUrLAm6Wda4z42HVBQQ==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1732194048,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aiFaQjC3Ynm9iDJamaaaM4\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aijKsrVo611ZHx4MqsR9A0','39bfa43b-4ea3-42f8-b077-b4ab77349126','7dcfbce70994afc090755191e8575aa1f44cbbeb','2023-03-22 14:31:27','2023-03-22 14:31:31','aQiK0lO5AXPqNsLt5SUAZw==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1679466690,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aijKsrVo611ZHx4MqsR9A0\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aIPsJE-cwOPzGl2DFTuobU','dc48895c-ea6a-4a2c-8228-741544c98550','dbae1186c0d2ec2cd061332bbded7922a7f3a9a5','2022-06-07 08:53:31','2024-12-01 12:06:28','FT+wJYm+EmK+yzbvHxtm/A==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1733025988,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aIPsJE-cwOPzGl2DFTuobU\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aJ_xlxefRge6zHoA58ld64','7072c42a-26ee-4c2f-90d8-c05b8a4195b4','4bbf16d86289cd31db041a40253acc0677747ea6','2024-02-28 14:25:26','2024-02-28 14:25:26','4pPci+WA2ub3zgXDv0g0gA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1709101526,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aJ_xlxefRge6zHoA58ld64\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aJcJhL9bm9K-AOJBV-EKPA','28d20d40-f344-45c3-b97a-bb9e11845877','66fb18cc68732021a93940ef2e02721ca31e1f5e','2023-11-23 10:34:13','2023-11-23 10:34:21','wAbO4QeFE+T8iWV9ZqpbXg==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1700706860,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aJcJhL9bm9K-AOJBV-EKPA\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5akEOEB5TBCVgnd74UdNpA8','5e6907a8-c8d2-49f6-9eb8-fa79fbe1f67c','db2e17e0810c7a65260457ab32845f1b3f002be8','2022-06-04 07:44:25','2024-12-02 22:40:17','fgKsw9yTa83JnJPVawfALw==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1733150417,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5akEOEB5TBCVgnd74UdNpA8\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aKUkQaNrENLZSO8od8AiMY','0a554108-15c6-46cf-a5e1-60bb3b29d3b8','7700b7f7a053ecc1e467a0ec1aada543fbd9138c','2024-11-08 23:14:33','2024-11-08 23:14:33','+cdg7CV5sNHupm3et1uSMw==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1731078872,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aKUkQaNrENLZSO8od8AiMY\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5ala3-TOQupiJ1ns1-eBbzQ','899779ab-4050-4410-a0e8-f1079dfc39ca','066dd09a9287cddacb1cf72ab9c136ca0db0bc08','2023-09-01 10:36:09','2023-09-01 10:36:20','MEe9Otn5ad8ZU9IsSnr2rw==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1693535780,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5ala3-TOQupiJ1ns1-eBbzQ\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aLJq65Rk7HJKixvLHNxbUU','1dd3c008-8dc6-4443-9008-0a86ca1a775a','8b55aabc1673931d17e7242daa3dae1ddaa71e8a','2024-11-04 13:29:23','2024-11-04 13:29:23','3ex85rgcF909qCPzvpj+PQ==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1730698162,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aLJq65Rk7HJKixvLHNxbUU\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5alylND3FEKBBMGNzCE3SMA','23b4728d-2f55-4758-af45-ff27ef49ef56','3f111ce5add0ebbbd67b07dd436452498cc56ce2','2022-10-20 15:16:41','2023-11-28 13:59:34','tFa61qSG/rALnzpihkUjwg==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1701151174,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5alylND3FEKBBMGNzCE3SMA\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aMAjJM2qzS8nUKRlSl7BZA','5bc4675e-daa8-435a-969f-7bad29c8088b','ebdbbea9b6c1337c93ab6b567d7f875607e18a5b','2023-05-09 12:32:48','2023-05-09 12:32:53','eN4+xzDRG8K19LRx6kPJyg==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1683606773,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aMAjJM2qzS8nUKRlSl7BZA\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aMXo_lwmTI8qbCFSlCQIJw','f6a7f763-9b32-445d-a4ab-87fe534ea48e','6d893663f093b122f02105ca16ba7991955cd3b1','2023-11-01 10:15:52','2024-12-04 21:19:36','/BL7NOl8sAW0HylcyPLufg==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1733318375,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aMXo_lwmTI8qbCFSlCQIJw\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aNebXeDdH_b4pmabJ9yTpQ','64c13fde-2021-4fab-8266-6ada4681d22a','0ed5f23b6a61dc0e85ce745b2e7eb9f2cd61da7c','2022-12-29 16:26:27','2022-12-29 16:26:27','NhdpFK4971IvIen/ogewDg==','{\"nickName\":\"千金大小姐\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLANMmtu2m6yPkGJSeLKk7DJIkxuRcQZcIKByXzgGbS8R2U6icv3JtSzqg2et3PiaqYL0HQbmbDQFmQ/132\",\"watermark\":{\"timestamp\":1672302386,\"appid\":\"wx10456ccd8ac36129\"},\"openId\":\"oWA6a5aNebXeDdH_b4pmabJ9yTpQ\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5anH9K29rFxonc7DQ6YzmBk','e18b7f00-973d-4fc3-b5ed-1ebeecb784ef','2ba5bea7b4aa52a600deb736632769767336df7b','2022-06-05 03:34:41','2024-12-23 18:56:19','bIqwIkvyKsVVNNA5zUcLIQ==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1734951378,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5anH9K29rFxonc7DQ6YzmBk\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5ansdJ5GL9ftq5fb06LJMf4','dc7287e6-fbd2-476f-ac62-bc23f03dd552','6afaca9075c93602b0055b3ba91a11c20270696e','2023-05-09 10:57:26','2023-05-12 16:48:19','uWFqkNsJujxLHLJykdhPMg==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1683881298,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5ansdJ5GL9ftq5fb06LJMf4\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aNtZS1OVMatroCfzYKPmbA','7fc4a644-ff4f-49b5-abad-c4b7e5a20515','b22d619622942129de4de98270fe77e5f6d5ac90','2022-06-28 21:59:41','2024-12-06 21:08:48','MdInJz9k0IwIFka3A0qahQ==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1733490527,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aNtZS1OVMatroCfzYKPmbA\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5any8R4zV0XXkMP87Z1QccE','6ce56c88-9fcf-4f36-bd85-6df1795ee4b9','903a06ddac4d5a6c0834073d6a722a5942b9d174','2024-11-11 02:32:35','2024-11-11 02:32:35','rx5FKGliuIS4QmiqKygpFw==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1731263554,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5any8R4zV0XXkMP87Z1QccE\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aOA7JtPAfSQbnsrrkrqyZg','195c6845-dea2-4b8e-a3a3-9e68377362fa','7b92160203e30775c27a294d0085846b536e8dc8','2023-11-23 11:38:41','2023-11-23 11:38:41','ut1DZremElgeVboe3B68Ow==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1700710720,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aOA7JtPAfSQbnsrrkrqyZg\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aofhqWcASVM9IpZl8EVzkI','21565c4e-f009-46e3-af6f-d9c37c4505f8','62e09dbdc2db2f7c1a9a32f75f4b01e613166079','2024-05-22 08:15:10','2024-05-22 08:15:10','oMDUdKFvaJe1Rs/hiTAdRA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1716336909,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aofhqWcASVM9IpZl8EVzkI\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aOLVequh7v4JCDfgNQ5i24','7efa80fe-e281-46a8-97f3-7406c3854ec8','bb0a8fd117d6a2d521322131a241063f424a4438','2023-01-05 16:18:23','2024-12-17 21:44:05','+KC46CZ628/M/oZVp+2pxA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1734443044,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aOLVequh7v4JCDfgNQ5i24\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aPcYE3qdNawtlGq_12LuCo','c4c79251-dd86-4824-8b67-64a522f7457b','6d4bf90366a7bc8679f7a22e30a2fb18914af0b0','2023-12-19 14:48:05','2023-12-25 13:32:43','oK8+zsHMU8SovCkwVaHF9Q==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1703482362,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aPcYE3qdNawtlGq_12LuCo\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5apDdnRLtJNDqIEe64uFx9w','8c7509bd-27e3-48ca-85b5-daa080b3ec76','c3d95e412b9163f9ce4203a0c4a411ae920dc93e','2023-06-09 14:33:35','2023-06-09 14:33:44','gCWWfoZ9hRrsMjFE/MBR5w==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1686292424,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5apDdnRLtJNDqIEe64uFx9w\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aPnpSfzoAmpTV3zAXy6LXY','45daae71-ec46-49fe-8c8d-aaa782c9f176','091f9d8b43f72e8012e8dbbc9dfcdadc1062cf28','2023-08-23 17:42:24','2024-04-23 11:06:23','BHsz1W+xFYayyRZm3fZ17Q==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1713841582,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aPnpSfzoAmpTV3zAXy6LXY\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aPp2hnwEaJEVsA4guoYwAc','1dd81ace-9131-43d6-9947-975a0e8c5ab0','9c1f59e92d346a94efa35994366026905a58ceb6','2022-10-17 15:28:16','2022-10-17 15:28:16','FU3X8j0UxJunjp3Zn8hKeA==','{\"nickName\":\"i\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLiarJ5FZtwLt9WEaWNkaR81TiawT2MsmPJ0CGSFHwdemGUfm90ctspF7khg8WSalFSkK01pC2rHhNA/132\",\"watermark\":{\"timestamp\":1665991695,\"appid\":\"wx10456ccd8ac36129\"},\"openId\":\"oWA6a5aPp2hnwEaJEVsA4guoYwAc\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aPXEcfU7cqAXgpOgTyV-II','6364667f-f3bc-4ff7-be6d-e9d0ab1ee579','3ef687aa4ca028f8caae7224718d0a5c343e539a','2024-09-27 10:51:33','2024-11-04 16:08:29','+2BaDvvZJlL1SenuvTIPaA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1730707708,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aPXEcfU7cqAXgpOgTyV-II\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aQfZ9b2MAgFSjUeAnnEqmo','f827f3b4-0b52-4a77-b4c6-0f518d52e74d','0ea4609e34aaaf72cab2518a329e7f9df4a24218','2022-06-04 21:43:35','2024-12-11 23:19:31','pmMmY+Tp4ZzgH4j4cWotMA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1733930370,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aQfZ9b2MAgFSjUeAnnEqmo\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aqgZhvmhD3zqyU1Vp4OwFM','81b6a955-8332-4159-89bb-6f9fc051dbf9','3375da62b063d1106461a44c46b949be5ea92af5','2023-11-10 08:52:25','2024-01-03 09:02:05','i3X/sR0Rnr4EJacUKSO2Fw==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1704243725,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aqgZhvmhD3zqyU1Vp4OwFM\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aQsE0NdKsua5Hzw81W4oO8','02270de0-cbca-4a9d-aa91-ba402e9d0538','192184e58be105fa5b1da6b491b1f14682c29d8d','2024-11-06 21:07:14','2024-11-06 21:07:14','KclzJ79OZA59mHOL0+Plkg==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1730898433,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aQsE0NdKsua5Hzw81W4oO8\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aQSxTSBDinWR35PrjQYbMY','6d6f857c-f562-4082-bf49-0eb5fd258b27','bc8e280a5633cac3dc4ca44d288be8cff22bb1aa','2023-09-22 11:55:58','2024-12-28 21:10:15','Immn51AUNnzWiN89F39eGg==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1735391415,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aQSxTSBDinWR35PrjQYbMY\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5ar-cBrJOZlQEt0gRZZvNAk','d2fa9775-2f1f-43bf-b823-f25ef0ea5c4d','cec6dca9e0cd464ae91cf9caba1bc9823f24c89b','2023-11-23 10:06:17','2023-11-23 10:06:21','AuTOq+BOWvC7Lri7ifOH5A==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1700705181,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5ar-cBrJOZlQEt0gRZZvNAk\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5ar4ll8ubtJ6oo530Usi0iY','56a55232-f7f2-4f95-a6d5-97c9382b713a','9c469df11ce70a1fef8f212e5ecfb7e457de6396','2022-12-27 15:43:59','2022-12-27 15:43:59','iHPvGSNmddaSa0uadtDn3A==','{\"nickName\":\"刘翔\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoR3tEzRQdWcSiaNbiayeuF2HkgOziaer4ZibeMElpY6XfHYVNzGlXbs8Idu7ofORg6pCtxZuBicR7zibVQ/132\",\"watermark\":{\"timestamp\":1672127038,\"appid\":\"wx10456ccd8ac36129\"},\"openId\":\"oWA6a5ar4ll8ubtJ6oo530Usi0iY\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5arAp69YIm2pzcE2eDJOTUo','3cc25582-4aa1-4089-9564-cba9aecff2c8','04fe547cddb0f7fc4d258e5c1beeecde622535b4','2023-03-20 19:53:52','2023-03-20 19:53:52','JZK8MRwfynnUrFSUPvsvBw==','{\"nickName\":\"嘿嘿\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83er64eekoibmiaAARTJ62R7hUteaqQYafI4XYQUHrqVWedqebVWdrVGuKXhqWnicmZRXJYkFbQ9YOfDGg/132\",\"watermark\":{\"timestamp\":1679313231,\"appid\":\"wx10456ccd8ac36129\"},\"openId\":\"oWA6a5arAp69YIm2pzcE2eDJOTUo\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5ard840ka59LdTxOkyScuQg','03768478-d3ba-4ffd-aed3-bae23f245e91','ab4fce49897b4719b9a28e5a16093ab906ced298','2023-03-01 15:15:12','2024-01-30 22:41:55','xUryjQI88gEJ2/IGTJkfhA==','{\"nickName\":\"星星和樱桃🍒\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/ZdKBIVbNvFGsTNHdXeZK2tseZ4TKySPV0LCmw8o8svH3shbSLgyWqneQLqcy9Q7Ht9AAFSibniamW4fvuJp0WeK2aUU0PVbHWtXuX2VlD0icBI/132\",\"watermark\":{\"timestamp\":1706625714,\"appid\":\"wx10456ccd8ac36129\"},\"openId\":\"oWA6a5ard840ka59LdTxOkyScuQg\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aRg_mWqrp9DTgplEurS-bA','61d9713b-c293-4e6c-81cf-f02213600dc0','0742fe3c42f746b26c9c71740cc35616bb3940f8','2024-11-04 10:01:42','2024-11-04 10:02:22','Y1c5zTFp3AJVdQqgRtPIjQ==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1730685741,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aRg_mWqrp9DTgplEurS-bA\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5arVinMFxCpjnlOuaNssHv8','c376db9e-6dff-4ea7-ac8f-7985edd11610','8a9218d7f51bbe4a40726804ddf0dd890f26c3ae','2022-06-06 19:30:49','2024-11-04 16:15:49','MQkgtUO9HodD5Ivwm+88LA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1730708148,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5arVinMFxCpjnlOuaNssHv8\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5arYx_4e411yiv4TqPCQziE','0b18b33e-6646-4709-83dc-f5c16b400000','db781a9482f716b467fdd8fbb8d5a292df2a4038','2024-01-29 11:22:19','2024-01-29 11:22:25','tM+BHoxkWj1zOB1eckdrFQ==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1706498545,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5arYx_4e411yiv4TqPCQziE\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aRZpq7i72T_CDMiPz5f9DM','438c0399-dab4-4dfa-b89e-696d94050555','a2caad2e70e57c840d6f17d1be16f9b6ebaf2f1c','2023-11-01 10:02:59','2023-11-15 15:22:43','BeIbXu5oTdFCn2P29ctinw==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1700032962,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aRZpq7i72T_CDMiPz5f9DM\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5asddMotIoh0NVNTUacV5ts','95d809f4-182b-4580-b81a-b30f7805e740','815cb5676802c0b6cae6402b0f224ea097669bdf','2023-05-09 17:42:33','2024-06-04 20:02:56','vt4FVfTNjIYZp6C3BcgvHg==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1717502575,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5asddMotIoh0NVNTUacV5ts\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5asfWTNB5DqLZ-4vo3jo80E','7e4f77d2-a0ed-416d-bc41-22171caed375','74dce96ad23d0da77d1ba8d2f8ef681876092b0f','2022-06-07 22:50:32','2024-12-29 22:48:53','y7F8MIzoK8saqZjxox8b2Q==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1735483732,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5asfWTNB5DqLZ-4vo3jo80E\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5asGb0xv6m3_fOwFLI4Hx54','e090f0b2-44d2-4787-a9d0-eff127b930bc','84d90115ac2a3d0f73f3676328e62be7a28e054f','2022-08-24 14:26:41','2022-08-24 14:26:41','BIvIvLFaEmTnbfGCkhpV+w==','{\"nickName\":\"蔡桂平\",\"gender\":0,\"language\":\"zh_CN\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKfkl2iaddjiaoV3pqDHTeibbZGAsqLY9LXyErMrnpIib9Dfw9p7mZJBMSWazHNeE3mxEjnTXpYM13tpw/132\",\"watermark\":{\"timestamp\":1661322401,\"appid\":\"wx10456ccd8ac36129\"},\"openId\":\"oWA6a5asGb0xv6m3_fOwFLI4Hx54\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aSoLpmVKUXbi_rdCsYscD4','18598d78-37e3-488d-876c-141aa9d334d9','3bc56594ce8f3702c174f5d55f38de01c4088f66','2023-01-12 14:59:34','2023-01-12 14:59:34','+RtTIxye75bTVdQzzHKfqQ==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1673506773,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aSoLpmVKUXbi_rdCsYscD4\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aT3gbdVBsUeqJFqjjm6MT4','934b2d25-b2ce-4461-a3ed-030b3324ca4b','95f3b0b1ec1f179532aa7510aa462de1c1857643','2023-03-01 10:03:41','2024-01-21 20:04:53','j4uKVhJQoCF/cDResSk7Ag==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1705838693,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aT3gbdVBsUeqJFqjjm6MT4\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aT3z7GPUmE9SSrD1onam8A','7e5a0d0c-30b1-493c-aaa9-6a26fa9d1d4e','42732846b24ee1a6a9722d0d4ae53e82a34f8fb2','2022-06-04 10:22:18','2024-12-30 06:41:01','pMEYxdXZbsSO2nYasnt7CA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1735512061,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aT3z7GPUmE9SSrD1onam8A\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5at6bScnDnw1bXP2dVbdTEo','90e53c89-6db4-48ee-ab59-29cfe1b7013d','817c3785f1160f4d0acc7c04a768813873e2c566','2022-06-04 06:50:47','2024-12-20 06:19:34','S0RhaQFZa2wepJJjBo57lA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1734646773,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5at6bScnDnw1bXP2dVbdTEo\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aThQMdthz__div7LuSr0SU','14bd5eec-64e9-4ff1-9bd9-c428573a96f1','c2f6d0dcf32e380ce53510923df881e72756912a','2022-12-28 14:54:49','2023-11-15 14:02:21','Elwo07tkROseEEWlfVSUqQ==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1700028140,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aThQMdthz__div7LuSr0SU\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aTK1CRdIWVz-FTS3OS0LQ4','5148bdb1-d457-47a8-9b00-ac1a27d14ff4','ca7edccc65244cb852c404e9b75214b6f5c68333','2024-01-31 01:04:53','2024-12-05 22:34:03','wSKo8xIwS1n3Fhqtxbj4eA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1733409242,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aTK1CRdIWVz-FTS3OS0LQ4\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5atKy-1inSXpXgAsw8AIQO8','4d5c5ccc-3cce-4819-8ffe-b88b24624515','8e32efe429f0584aa299ff54e0d86e48eaaeb107','2024-01-25 16:58:53','2024-12-25 20:39:45','fmMwaN65M7/llgTXXcrOiQ==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1735130384,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5atKy-1inSXpXgAsw8AIQO8\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5aTlP_pPDRPZ5tB-LBuoUIY','b99cca8e-308e-4a46-9fc1-0b2129566412','70c19723030ed3d9986d257d624bc46f3dac3879','2023-10-04 15:59:13','2023-10-04 15:59:13','yod3a2XdyMmCYFf7d6QLng==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1696406352,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5aTlP_pPDRPZ5tB-LBuoUIY\"}');
INSERT INTO `csessioninfo` (`open_id`,`uuid`,`skey`,`create_time`,`last_visit_time`,`session_key`,`user_info`) VALUES ('oWA6a5atZvkKGmRr-Ae4_wVxra0w','98ad1a30-39c2-4080-9b1b-b9ba1b9be2e6','665421467c72a9aae33bf817013131f87d0dffb9','2023-11-25 19:17:31','2024-03-04 12:55:02','mSmviiSCEc0wNR0Ap/5rlA==','{\"nickName\":\"微信用户\",\"gender\":0,\"language\":\"\",\"city\":\"\",\"province\":\"\",\"country\":\"\",\"avatarUrl\":\"https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132\",\"watermark\":{\"timestamp\":1709528101,\"appid\":\"wx10456ccd8ac36129\"},\"is_demote\":true,\"openId\":\"oWA6a5atZvkKGmRr-Ae4_wVxra0w\"}');
-- ----------------------------
-- Table structure for cshare
-- ----------------------------
    
CREATE TABLE `cshare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL COMMENT '分享者ID',
  `type` int(11) NOT NULL COMMENT '分享类型',
  `value` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '分享标识',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `count` int(11) NOT NULL DEFAULT '0' COMMENT '邀请进来的人数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
      
INSERT INTO `cshare` (`id`,`cid`,`type`,`value`,`create_time`,`count`) VALUES (1,34,1,'GFE1r5aTqTF4hrAfQf5AJh0l6rCk','2018-09-12 23:05:51',1);
-- ----------------------------
-- Table structure for cshareinfo
-- ----------------------------
    
CREATE TABLE `cshareinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分享详情id',
  `share_customer_id` bigint(20) NOT NULL COMMENT '分享者ID',
  `enter_customer_id` bigint(20) NOT NULL COMMENT '分享入口进入的用户',
  `type` int(11) NOT NULL COMMENT '分享类型(1-群分享)',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sid` bigint(20) NOT NULL COMMENT '分享Id',
  `flag` tinyint(1) DEFAULT NULL COMMENT '是否被算过积分',
  `enter_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
      
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`,`flag`,`enter_name`) VALUES (2,34,3458,1,'2023-12-19 14:28:11',34,1,'魏海芝');
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`) VALUES (3,34,2739,1,'2023-12-21 15:46:19',34);
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`,`flag`,`enter_name`) VALUES (4,34,3538,1,'2024-02-22 10:03:17',34,1,'郝好');
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`) VALUES (5,125,3555,1,'2024-03-05 14:17:02',125);
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`,`flag`,`enter_name`) VALUES (6,2315,3574,1,'2024-04-02 22:42:17',2315,1,'赵丽瑞');
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`,`flag`,`enter_name`) VALUES (7,3257,3606,1,'2024-04-23 21:09:40',3257,1,'王淑玲');
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`,`flag`,`enter_name`) VALUES (8,3257,3523,1,'2024-04-23 23:58:44',3257,1,'朱金兰');
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`,`flag`,`enter_name`) VALUES (9,3257,3613,1,'2024-04-25 13:31:36',3257,1,'吴菲');
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`,`flag`,`enter_name`) VALUES (10,3257,3614,1,'2024-04-25 14:07:34',3257,1,'方丽娟');
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`,`flag`,`enter_name`) VALUES (11,3257,3615,1,'2024-04-26 17:33:52',3257,1,'钱波');
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`,`flag`,`enter_name`) VALUES (12,3257,3616,1,'2024-04-26 17:38:53',3257,1,'蒋琴');
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`,`flag`,`enter_name`) VALUES (13,3257,3618,1,'2024-04-28 15:50:55',3257,1,'周银芳');
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`) VALUES (14,2412,3636,1,'2024-06-04 13:36:02',2412);
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`,`flag`,`enter_name`) VALUES (15,1586,3640,1,'2024-06-06 22:53:00',1586,1,'姜江');
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`) VALUES (16,2650,3644,1,'2024-06-13 21:37:00',2650);
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`) VALUES (17,1677,3649,1,'2024-07-10 12:20:42',1677);
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`,`flag`,`enter_name`) VALUES (18,3257,3651,1,'2024-07-11 11:26:02',3257,1,'陈义娟');
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`) VALUES (19,3375,3489,1,'2024-07-19 12:22:59',3375);
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`,`flag`,`enter_name`) VALUES (20,3375,3654,1,'2024-07-19 12:34:14',3375,1,'王聿铎');
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`) VALUES (21,2962,3658,1,'2024-07-25 06:36:16',2962);
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`,`flag`,`enter_name`) VALUES (22,3257,3660,1,'2024-08-03 14:47:44',3257,1,'孙叶芳');
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`) VALUES (23,2868,3664,1,'2024-08-14 21:45:20',2868);
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`,`flag`,`enter_name`) VALUES (24,3025,3669,1,'2024-08-26 10:46:56',3025,1,'俞杭瑛');
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`) VALUES (25,122,3674,1,'2024-09-10 11:52:46',122);
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`) VALUES (26,122,3676,1,'2024-09-11 21:35:06',122);
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`,`flag`,`enter_name`) VALUES (27,2490,3679,1,'2024-09-15 19:03:25',2490,1,'章燕');
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`,`flag`,`enter_name`) VALUES (28,3422,3737,1,'2024-10-17 21:20:04',3422,1,'姚玉珠');
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`) VALUES (29,2396,3066,1,'2024-11-08 10:36:39',2396);
INSERT INTO `cshareinfo` (`id`,`share_customer_id`,`enter_customer_id`,`type`,`create_time`,`sid`,`flag`,`enter_name`) VALUES (30,3199,3806,1,'2024-12-19 13:27:10',3199,1,'邬梦婕');
-- ----------------------------
-- Table structure for cuploadinfo
-- ----------------------------
    
CREATE TABLE `cuploadinfo` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `imgUrl` varchar(256) NOT NULL,
  `size` bigint(20) NOT NULL,
  `uploadFolder` varchar(100) NOT NULL,
  `type` int(11) NOT NULL,
  `fileBucket` varchar(100) NOT NULL,
  `qcloudAppId` int(11) DEFAULT NULL,
  `imgUrlv4` varchar(256) NOT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `imgKey` varchar(100) NOT NULL,
  `cid` bigint(20) NOT NULL COMMENT '用户id',
  `bonusFlag` tinyint(1) DEFAULT '0' COMMENT '状态0-审核中 1-已兑换 2-无效',
  `reason` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`),
  KEY `search` (`cid`,`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6616 DEFAULT CHARSET=utf8;
      
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (13,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1536671007294-rmphu1jrF.jpg',234871,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1536671007294-rmphu1jrF.jpg','2018-09-11 13:03:27','1536671007294-rmphu1jrF.jpg',20,1,'2018-09-11 21:03:27');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (14,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1536671019469-ZcSst6Mub.jpg',120322,'',3,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1536671019469-ZcSst6Mub.jpg','2018-09-11 13:03:40','1536671019469-ZcSst6Mub.jpg',20,2,'要洗牙证明，不是刷牙证明~','2018-09-11 21:03:40');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (15,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1536766585308-koySPTAri.jpg',87293,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1536766585308-koySPTAri.jpg','2018-09-12 15:36:27','1536766585308-koySPTAri.jpg',34,1,'2018-09-12 23:36:27');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (16,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1536766596042-n0ZU7QAlQ.jpg',87293,'',3,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1536766596042-n0ZU7QAlQ.jpg','2018-09-12 15:36:36','1536766596042-n0ZU7QAlQ.jpg',34,2,'亲~是在测试么','2018-09-12 23:36:36');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (17,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1539346240003-9IgVX3F3c.jpg',336692,'',3,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1539346240003-9IgVX3F3c.jpg','2018-10-12 12:10:40','1539346240003-9IgVX3F3c.jpg',77,1,'2018-10-12 20:10:40');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (18,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1539346428288-A4lrqSGOT.jpg',74761,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1539346428288-A4lrqSGOT.jpg','2018-10-12 12:13:49','1539346428288-A4lrqSGOT.jpg',77,1,'2018-10-12 20:13:49');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (19,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1539346437158-Pu10Et6P4.jpg',66417,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1539346437158-Pu10Et6P4.jpg','2018-10-12 12:13:57','1539346437158-Pu10Et6P4.jpg',77,2,'本年度已上传过','2018-10-12 20:13:57');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (20,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1539346444835-T6v4O25Bc.jpg',62649,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1539346444835-T6v4O25Bc.jpg','2018-10-12 12:14:05','1539346444835-T6v4O25Bc.jpg',77,2,'本年度已上传过','2018-10-12 20:14:05');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (21,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1539346455874-fYUhGXjd1.jpg',59164,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1539346455874-fYUhGXjd1.jpg','2018-10-12 12:14:16','1539346455874-fYUhGXjd1.jpg',77,2,'本年度已上传过','2018-10-12 20:14:16');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (22,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1542162672854-9figrdKp7.jpg',185507,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1542162672854-9figrdKp7.jpg','2018-11-14 02:31:13','1542162672854-9figrdKp7.jpg',87,1,'2018-11-14 10:31:13');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (23,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1545889057120-97UuXA6dr.jpg',269705,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1545889057120-97UuXA6dr.jpg','2018-12-27 05:37:38','1545889057120-97UuXA6dr.jpg',137,1,'2018-12-27 13:37:38');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (24,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1546505887669-ZSrAGKNbM.jpg',43768,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1546505887669-ZSrAGKNbM.jpg','2019-01-03 08:58:08','1546505887669-ZSrAGKNbM.jpg',172,1,'2019-01-03 16:58:08');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (25,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1546858947614-nj8wapNTo.jpg',54795,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1546858947614-nj8wapNTo.jpg','2019-01-07 11:02:28','1546858947614-nj8wapNTo.jpg',125,1,'2019-01-07 19:02:28');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (28,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1546872968106--sfq8vRJf.jpg',325044,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1546872968106--sfq8vRJf.jpg','2019-01-07 14:56:08','1546872968106--sfq8vRJf.jpg',193,1,'2019-01-07 22:56:08');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (29,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1546907946721-gzmzrL3Op.jpg',157268,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1546907946721-gzmzrL3Op.jpg','2019-01-08 00:39:07','1546907946721-gzmzrL3Op.jpg',260,1,'2019-01-08 08:39:07');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (30,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1546915915246-yG2-lCpvM.jpg',327876,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1546915915246-yG2-lCpvM.jpg','2019-01-08 02:51:56','1546915915246-yG2-lCpvM.jpg',354,1,'2019-01-08 10:51:56');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (31,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1546915923649-HGgOixhGj.jpg',421275,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1546915923649-HGgOixhGj.jpg','2019-01-08 02:52:04','1546915923649-HGgOixhGj.jpg',354,2,'已更新积分数据','2019-01-08 10:52:04');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (32,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1546915935180-uvpSsOomg.jpg',83868,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1546915935180-uvpSsOomg.jpg','2019-01-08 02:52:15','1546915935180-uvpSsOomg.jpg',354,2,'已更新积分数据','2019-01-08 10:52:15');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (33,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1546915941098-aVU9Ssr_b.jpg',238889,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1546915941098-aVU9Ssr_b.jpg','2019-01-08 02:52:21','1546915941098-aVU9Ssr_b.jpg',354,2,'已更新积分数据','2019-01-08 10:52:21');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (34,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1547006516197-PO0FRCBWc.jpg',340393,'',3,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1547006516197-PO0FRCBWc.jpg','2019-01-09 04:01:56','1547006516197-PO0FRCBWc.jpg',134,1,'2019-01-09 12:01:56');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (35,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1547184804767-XJE11R5bi.jpg',167987,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1547184804767-XJE11R5bi.jpg','2019-01-11 05:33:25','1547184804767-XJE11R5bi.jpg',146,1,'2019-01-11 13:33:25');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (36,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1547214631290-K8xJnUIRV.jpg',113490,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1547214631290-K8xJnUIRV.jpg','2019-01-11 13:50:31','1547214631290-K8xJnUIRV.jpg',134,1,'2019-01-11 21:50:31');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (37,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1547442400169-8_AYrpGcA.jpg',302756,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1547442400169-8_AYrpGcA.jpg','2019-01-14 05:06:41','1547442400169-8_AYrpGcA.jpg',428,1,'2019-01-14 13:06:41');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (38,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1549724641978-9lnQ-e86l.jpg',115124,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1549724641978-9lnQ-e86l.jpg','2019-02-09 15:04:02','1549724641978-9lnQ-e86l.jpg',177,1,'2019-02-09 23:04:02');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (39,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1549952521653-jHpZdmj7r.jpg',88016,'',3,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1549952521653-jHpZdmj7r.jpg','2019-02-12 06:22:02','1549952521653-jHpZdmj7r.jpg',510,1,'2019-02-12 14:22:02');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (40,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1550734674809-_z3ZGMMPZ.jpg',350621,'',3,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1550734674809-_z3ZGMMPZ.jpg','2019-02-21 07:37:55','1550734674809-_z3ZGMMPZ.jpg',332,1,'2019-02-21 15:37:55');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (41,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1550734827793-CUZHjUth1.jpg',174115,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1550734827793-CUZHjUth1.jpg','2019-02-21 07:40:28','1550734827793-CUZHjUth1.jpg',218,1,'2019-02-21 15:40:28');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (42,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1550734921910-1eWaB0dIO.jpg',181319,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1550734921910-1eWaB0dIO.jpg','2019-02-21 07:42:02','1550734921910-1eWaB0dIO.jpg',332,1,'2019-02-21 15:42:02');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (43,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1550734939112-u79YEiNxa.jpg',201993,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1550734939112-u79YEiNxa.jpg','2019-02-21 07:42:19','1550734939112-u79YEiNxa.jpg',332,2,'已提交','2019-02-21 15:42:19');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (44,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1550734953928-FCP9XFE9V.jpg',124273,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1550734953928-FCP9XFE9V.jpg','2019-02-21 07:42:34','1550734953928-FCP9XFE9V.jpg',332,2,'已提交','2019-02-21 15:42:34');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (45,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1550734959963-EfKJQtIxN.jpg',133016,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1550734959963-EfKJQtIxN.jpg','2019-02-21 07:42:40','1550734959963-EfKJQtIxN.jpg',332,2,'已提交','2019-02-21 15:42:40');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (46,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1550735272464-lfszOhy-u.jpg',475656,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1550735272464-lfszOhy-u.jpg','2019-02-21 07:47:53','1550735272464-lfszOhy-u.jpg',165,1,'2019-02-21 15:47:53');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (47,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1550735293664-OP6MAe4Q7.jpg',374667,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1550735293664-OP6MAe4Q7.jpg','2019-02-21 07:48:14','1550735293664-OP6MAe4Q7.jpg',533,1,'2019-02-21 15:48:14');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (48,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1550735299617-7XyGepMcR.jpg',464709,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1550735299617-7XyGepMcR.jpg','2019-02-21 07:48:20','1550735299617-7XyGepMcR.jpg',533,2,'本年度已上传过','2019-02-21 15:48:20');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (49,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1550735303890-dx2aPXefl.jpg',418601,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1550735303890-dx2aPXefl.jpg','2019-02-21 07:48:24','1550735303890-dx2aPXefl.jpg',533,2,'本年度已上传过','2019-02-21 15:48:24');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (50,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1550735307790-x9h6_RWJZ.jpg',329069,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1550735307790-x9h6_RWJZ.jpg','2019-02-21 07:48:28','1550735307790-x9h6_RWJZ.jpg',533,2,'本年度已上传过','2019-02-21 15:48:28');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (51,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1550735311228-HUA2IpL_u.jpg',296189,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1550735311228-HUA2IpL_u.jpg','2019-02-21 07:48:31','1550735311228-HUA2IpL_u.jpg',533,2,'本年度已上传过','2019-02-21 15:48:31');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (52,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1550735572517-c709GYck1.jpg',226915,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1550735572517-c709GYck1.jpg','2019-02-21 07:52:52','1550735572517-c709GYck1.jpg',535,1,'2019-02-21 15:52:52');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (53,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1551857988408-iMuv7lXpH.jpg',189781,'',3,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1551857988408-iMuv7lXpH.jpg','2019-03-06 07:39:49','1551857988408-iMuv7lXpH.jpg',516,1,'2019-03-06 15:39:49');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (54,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1551924373675-8ZEl4zcW9.jpg',342664,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1551924373675-8ZEl4zcW9.jpg','2019-03-07 02:06:14','1551924373675-8ZEl4zcW9.jpg',602,1,'2019-03-07 10:06:14');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (55,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1552216512653-URbOhRTko.jpg',71760,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1552216512653-URbOhRTko.jpg','2019-03-10 11:15:13','1552216512653-URbOhRTko.jpg',498,1,'2019-03-10 19:15:13');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (56,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1552216525959-4tz8iTmaG.jpg',56357,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1552216525959-4tz8iTmaG.jpg','2019-03-10 11:15:26','1552216525959-4tz8iTmaG.jpg',498,2,'本年度已上传过','2019-03-10 19:15:26');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (57,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1552216543754-qDV2-dmJZ.jpg',54850,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1552216543754-qDV2-dmJZ.jpg','2019-03-10 11:15:44','1552216543754-qDV2-dmJZ.jpg',498,2,'本年度已上传过','2019-03-10 19:15:44');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (58,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1552216561663-qOHJwYDXW.jpg',65725,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1552216561663-qOHJwYDXW.jpg','2019-03-10 11:16:02','1552216561663-qOHJwYDXW.jpg',498,2,'本年度已上传过','2019-03-10 19:16:02');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (59,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1552216580158-VuHf_PDyu.jpg',59884,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1552216580158-VuHf_PDyu.jpg','2019-03-10 11:16:20','1552216580158-VuHf_PDyu.jpg',498,2,'本年度已上传过','2019-03-10 19:16:20');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (60,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1552216588157-_gXRZ1PFE.jpg',51882,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1552216588157-_gXRZ1PFE.jpg','2019-03-10 11:16:29','1552216588157-_gXRZ1PFE.jpg',498,2,'本年度已上传过','2019-03-10 19:16:29');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (61,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1552310956915-2oKL1wmLt.jpg',46399,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1552310956915-2oKL1wmLt.jpg','2019-03-11 13:29:17','1552310956915-2oKL1wmLt.jpg',553,1,'2019-03-11 21:29:17');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (62,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1552803570801-bi8WUXMkV.png',39302,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1552803570801-bi8WUXMkV.png','2019-03-17 06:19:31','1552803570801-bi8WUXMkV.png',122,2,'本年度已上传过','2019-03-17 14:19:31');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (67,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1553262960962-lrzOFf-Dc.jpg',81868,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1553262960962-lrzOFf-Dc.jpg','2019-03-22 13:56:01','1553262960962-lrzOFf-Dc.jpg',131,1,'2019-03-22 21:56:01');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (68,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1553585173739-UrMhMYxtd.jpg',94132,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1553585173739-UrMhMYxtd.jpg','2019-03-26 07:26:14','1553585173739-UrMhMYxtd.jpg',644,1,'2019-03-26 15:26:14');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (69,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1555311933622-NsoKUZjIP.jpg',243304,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1555311933622-NsoKUZjIP.jpg','2019-04-15 07:05:34','1555311933622-NsoKUZjIP.jpg',91,1,'2019-04-15 15:05:34');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (70,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1555323447553-b9zdA5ZRV.jpg',146727,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1555323447553-b9zdA5ZRV.jpg','2019-04-15 10:17:28','1555323447553-b9zdA5ZRV.jpg',106,1,'2019-04-15 18:17:28');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (71,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1555598308583-QO-dMBo2s.jpg',120792,'',3,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1555598308583-QO-dMBo2s.jpg','2019-04-18 14:38:29','1555598308583-QO-dMBo2s.jpg',131,1,'2019-04-18 22:38:29');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (72,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1555926340469-hLf0qJjwf.jpg',55363,'',3,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1555926340469-hLf0qJjwf.jpg','2019-04-22 09:45:41','1555926340469-hLf0qJjwf.jpg',172,1,'2019-04-22 17:45:41');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (73,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1556166024710-Lq54pys8w.jpg',40208,'',3,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1556166024710-Lq54pys8w.jpg','2019-04-25 04:20:25','1556166024710-Lq54pys8w.jpg',573,1,'2019-04-25 12:20:25');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (74,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1556604864016-yLF4uMO0Z.jpg',264047,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1556604864016-yLF4uMO0Z.jpg','2019-04-30 06:14:24','1556604864016-yLF4uMO0Z.jpg',108,1,'2019-04-30 14:14:24');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (75,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1556605111269-9shhJXnZp.jpg',163137,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1556605111269-9shhJXnZp.jpg','2019-04-30 06:18:32','1556605111269-9shhJXnZp.jpg',674,1,'2019-04-30 14:18:32');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (76,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1556605119494-_SvxGt99f.jpg',183134,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1556605119494-_SvxGt99f.jpg','2019-04-30 06:18:40','1556605119494-_SvxGt99f.jpg',674,2,'本年度已上传过','2019-04-30 14:18:40');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (77,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1557237114513-NrhxhSPFr.jpg',314428,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1557237114513-NrhxhSPFr.jpg','2019-05-07 13:51:55','1557237114513-NrhxhSPFr.jpg',682,1,'2019-05-07 21:51:55');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (78,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1557237144619-Hty6hfI0r.jpg',305070,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1557237144619-Hty6hfI0r.jpg','2019-05-07 13:52:25','1557237144619-Hty6hfI0r.jpg',682,2,'本年度已上传过','2019-05-07 21:52:25');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (79,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1557415525715-4yQZaLTJ6.jpg',71323,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1557415525715-4yQZaLTJ6.jpg','2019-05-09 15:25:26','1557415525715-4yQZaLTJ6.jpg',717,1,'2019-05-09 23:25:26');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (80,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1557478026122-ka6Gtd8aA.jpg',285193,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1557478026122-ka6Gtd8aA.jpg','2019-05-10 08:47:06','1557478026122-ka6Gtd8aA.jpg',725,1,'2019-05-10 16:47:06');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (81,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1557987623211-7Sw5GQ9yT.jpg',44845,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1557987623211-7Sw5GQ9yT.jpg','2019-05-16 06:20:23','1557987623211-7Sw5GQ9yT.jpg',496,1,'2019-05-16 14:20:23');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (82,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1558491943458-GWirdjCsc.jpg',63850,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1558491943458-GWirdjCsc.jpg','2019-05-22 02:25:44','1558491943458-GWirdjCsc.jpg',723,1,'2019-05-22 10:25:44');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (83,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1562642496076-dr4j1G6eC.jpg',860451,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1562642496076-dr4j1G6eC.jpg','2019-07-09 03:21:36','1562642496076-dr4j1G6eC.jpg',755,1,'2019-07-09 11:21:36');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (84,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1562770454536-DGD3m8Z8V.jpg',444816,'',3,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1562770454536-DGD3m8Z8V.jpg','2019-07-10 14:54:15','1562770454536-DGD3m8Z8V.jpg',122,2,'非检查报告','2019-07-10 22:54:15');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (85,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1562908659082-jzpemW3hJ.jpg',266914,'',3,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1562908659082-jzpemW3hJ.jpg','2019-07-12 05:17:39','1562908659082-jzpemW3hJ.jpg',390,1,'2019-07-12 13:17:39');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (86,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1562908745921-jmWYl6-kc.jpg',87601,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1562908745921-jmWYl6-kc.jpg','2019-07-12 05:19:06','1562908745921-jmWYl6-kc.jpg',390,1,'2019-07-12 13:19:06');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (87,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563348086001-vQnaTPoX6.jpg',82584,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563348086001-vQnaTPoX6.jpg','2019-07-17 07:21:26','1563348086001-vQnaTPoX6.jpg',131,1,'2019-07-17 15:21:26');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (88,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563541804996-vpV5i8XYi.jpg',127334,'',3,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563541804996-vpV5i8XYi.jpg','2019-07-19 13:10:05','1563541804996-vpV5i8XYi.jpg',306,1,'2019-07-19 21:10:05');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (89,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563765579732-nbMZEz-y1.jpg',124011,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563765579732-nbMZEz-y1.jpg','2019-07-22 03:19:40','1563765579732-nbMZEz-y1.jpg',306,1,'2019-07-22 11:19:40');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (90,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563778061473-v1UjMaY1K.jpg',49082,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563778061473-v1UjMaY1K.jpg','2019-07-22 06:47:42','1563778061473-v1UjMaY1K.jpg',559,1,'2019-07-22 14:47:42');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (91,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563778364043-h-RiPfkSq.jpg',205565,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563778364043-h-RiPfkSq.jpg','2019-07-22 06:52:44','1563778364043-h-RiPfkSq.jpg',609,1,'2019-07-22 14:52:44');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (92,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563778450766-a5RfwGaSg.jpg',47686,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563778450766-a5RfwGaSg.jpg','2019-07-22 06:54:11','1563778450766-a5RfwGaSg.jpg',580,1,'2019-07-22 14:54:11');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (93,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563778464666-Uv0ZS9RjK.jpg',50169,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563778464666-Uv0ZS9RjK.jpg','2019-07-22 06:54:25','1563778464666-Uv0ZS9RjK.jpg',563,1,'2019-07-22 14:54:25');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (94,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563778495727-b_BVC6Eqa.jpg',284332,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563778495727-b_BVC6Eqa.jpg','2019-07-22 06:54:56','1563778495727-b_BVC6Eqa.jpg',817,1,'2019-07-22 14:54:56');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (95,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563778505244-PsfrhEtVd.jpg',262885,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563778505244-PsfrhEtVd.jpg','2019-07-22 06:55:05','1563778505244-PsfrhEtVd.jpg',817,2,'本年度已上传过','2019-07-22 14:55:05');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (96,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563778514371-LgViXm62s.jpg',268911,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563778514371-LgViXm62s.jpg','2019-07-22 06:55:14','1563778514371-LgViXm62s.jpg',817,2,'本年度已上传过','2019-07-22 14:55:14');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (97,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563778521152-RubNXI2F0.jpg',271507,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563778521152-RubNXI2F0.jpg','2019-07-22 06:55:21','1563778521152-RubNXI2F0.jpg',817,2,'本年度已上传过','2019-07-22 14:55:21');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (98,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563778527980-69pzioHXr.jpg',276676,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563778527980-69pzioHXr.jpg','2019-07-22 06:55:28','1563778527980-69pzioHXr.jpg',817,2,'本年度已上传过','2019-07-22 14:55:28');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (99,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563778534075-PYS8s00tn.jpg',243089,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563778534075-PYS8s00tn.jpg','2019-07-22 06:55:34','1563778534075-PYS8s00tn.jpg',817,2,'本年度已上传过','2019-07-22 14:55:34');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (100,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563778760071-dN0Mu0Kwx.jpg',36856,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563778760071-dN0Mu0Kwx.jpg','2019-07-22 06:59:20','1563778760071-dN0Mu0Kwx.jpg',577,1,'2019-07-22 14:59:20');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (101,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563779677456-xkOOb8dYC.jpg',704048,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563779677456-xkOOb8dYC.jpg','2019-07-22 07:14:38','1563779677456-xkOOb8dYC.jpg',591,1,'2019-07-22 15:14:38');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (102,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563779865456-S8b8bkZOd.jpg',253499,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563779865456-S8b8bkZOd.jpg','2019-07-22 07:17:46','1563779865456-S8b8bkZOd.jpg',567,1,'2019-07-22 15:17:46');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (103,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563780676100-rl18ozJGI.jpg',243617,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563780676100-rl18ozJGI.jpg','2019-07-22 07:31:16','1563780676100-rl18ozJGI.jpg',583,1,'2019-07-22 15:31:16');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (104,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563780706690-FL3v7A9Hf.jpg',278713,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563780706690-FL3v7A9Hf.jpg','2019-07-22 07:31:47','1563780706690-FL3v7A9Hf.jpg',569,2,'本年度已上传过','2019-07-22 15:31:47');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (105,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563780732679-MYQzCEGVR.jpg',307019,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563780732679-MYQzCEGVR.jpg','2019-07-22 07:32:13','1563780732679-MYQzCEGVR.jpg',569,2,'本年度已上传过','2019-07-22 15:32:13');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (106,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563780747881-1yLG8pzKv.jpg',266006,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563780747881-1yLG8pzKv.jpg','2019-07-22 07:32:28','1563780747881-1yLG8pzKv.jpg',569,1,'2019-07-22 15:32:28');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (107,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563784284232-qQgVt6aQQ.jpg',56990,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563784284232-qQgVt6aQQ.jpg','2019-07-22 08:31:24','1563784284232-qQgVt6aQQ.jpg',576,1,'2019-07-22 16:31:24');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (108,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563784301497-xrfpeQAd-.jpg',311602,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563784301497-xrfpeQAd-.jpg','2019-07-22 08:31:42','1563784301497-xrfpeQAd-.jpg',585,1,'2019-07-22 16:31:42');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (109,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563786399044-_r9l4k5PL.jpg',33236,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563786399044-_r9l4k5PL.jpg','2019-07-22 09:06:39','1563786399044-_r9l4k5PL.jpg',568,1,'2019-07-22 17:06:39');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (110,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563789785530-OZqTA1SoG.jpg',273454,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563789785530-OZqTA1SoG.jpg','2019-07-22 10:03:06','1563789785530-OZqTA1SoG.jpg',587,1,'2019-07-22 18:03:06');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (111,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563798440550-gR3PrwM-b.jpg',165748,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563798440550-gR3PrwM-b.jpg','2019-07-22 12:27:21','1563798440550-gR3PrwM-b.jpg',581,1,'2019-07-22 20:27:21');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (112,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1563938327863-o2x6J-2av.jpg',161674,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1563938327863-o2x6J-2av.jpg','2019-07-24 03:18:48','1563938327863-o2x6J-2av.jpg',556,1,'2019-07-24 11:18:48');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (113,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1564040204446-vm56vy0-5.jpg',28988,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1564040204446-vm56vy0-5.jpg','2019-07-25 07:36:45','1564040204446-vm56vy0-5.jpg',549,1,'2019-07-25 15:36:45');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (114,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1564042183809-2epMnfpOS.jpg',43154,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1564042183809-2epMnfpOS.jpg','2019-07-25 08:09:44','1564042183809-2epMnfpOS.jpg',570,1,'2019-07-25 16:09:44');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (115,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1564062496003-PPiUUoyV8.jpg',142481,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1564062496003-PPiUUoyV8.jpg','2019-07-25 13:48:16','1564062496003-PPiUUoyV8.jpg',579,1,'2019-07-25 21:48:16');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (116,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1564455756827-s6-qapqUU.jpg',236222,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1564455756827-s6-qapqUU.jpg','2019-07-30 03:02:37','1564455756827-s6-qapqUU.jpg',391,1,'2019-07-30 11:02:37');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`create_time`) VALUES (117,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1564544510350-YHn2x9OjF.jpg',71791,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1564544510350-YHn2x9OjF.jpg','2019-07-31 03:41:51','1564544510350-YHn2x9OjF.jpg',522,1,'2019-07-31 11:41:51');
INSERT INTO `cuploadinfo` (`uid`,`imgUrl`,`size`,`uploadFolder`,`type`,`fileBucket`,`qcloudAppId`,`imgUrlv4`,`modify_time`,`imgKey`,`cid`,`bonusFlag`,`reason`,`create_time`) VALUES (118,'https://qcloudtest-1257296211.cos.ap-guangzhou.myqcloud.com/1564548143184-lotWUY2Ry.jpg',282769,'',1,'qcloudtest',1257296211,'http://qcloudtest-1257296211.cosgz.myqcloud.com/1564548143184-lotWUY2Ry.jpg','2019-07-31 04:42:24','1564548143184-lotWUY2Ry.jpg',282,2,'本年度已上传过','2019-07-31 12:42:24');
-- ----------------------------
-- Table structure for cuserinfo
-- ----------------------------
    
CREATE TABLE `cuserinfo` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `openId` varchar(100) NOT NULL,
  `nickName` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `avatarUrl` varchar(300) NOT NULL,
  `realName` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `gender` tinyint(1) NOT NULL,
  `province` varchar(64) NOT NULL,
  `country` varchar(64) NOT NULL,
  `city` varchar(64) NOT NULL,
  `companyName` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `companyid` bigint(20) DEFAULT NULL,
  `bonus` int(11) DEFAULT '0' COMMENT '积分',
  `total_bonus` int(11) DEFAULT '0' COMMENT '累计积分',
  `last_upload_run_time` bigint(16) DEFAULT NULL COMMENT '最近一次上传跑步路基时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aid` bigint(20) DEFAULT NULL,
  `phone` varchar(16) NOT NULL COMMENT '手机号',
  `member` int(11) DEFAULT '0' COMMENT '会员积分',
  `member_update` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '会员积分更新日期',
  `member_level` int(45) DEFAULT NULL COMMENT '会员等级',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `open_id` (`openId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3827 DEFAULT CHARSET=utf8 COMMENT='用户表';
      
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (16,'oFE1r5Q5MwKwJmWi5_xGb9nQLlBQ','Karlie Wang','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKpdTrEkO9Y8YfV0XYiaEeNiaAQDqducicoEb8at9vibLVRvc5Nqhn1TK2EMeCYLpribibk9ibrb7NIZ5u1Q/132','Karlie ',2,'','圣基茨和尼维斯','','二十一世纪保险经纪',3,0,0,'2018-09-10 14:06:49',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (17,'oFE1r5WIB0gib6BYdQCChriwadtU','曹敏琦-2','https://wx.qlogo.cn/mmopen/vi_32/w97S4PCJcNw7mC9eJqXBot18rs5aOSoYzAfAQUA5LicQT4ZYiaj2o706oPZkkW5NK7TMwgsVGMRicuxGgibf9sfsibQ/132','曹敏琦',1,'上海','中国','浦东新区','二十一世纪保险经纪',3,0,0,'2018-09-10 20:10:46',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (18,'oFE1r5X3-BXrupvAcEA1xAARiaeY','呼延灼','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLUr1R4JGUdaPfhjy76pIXTBBKib1RSVvy5VAIcQxpzFBglWCFt8S1ueKDFibck52iatArNbIoIoyVlw/132',0,'','','',20,0,'2018-09-11 01:14:12',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (19,'oFE1r5Z7ptWS8Scs5NuWDSGKf9Gk','佘','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epRtVUDWaKWQ1licIAia3DkymlkSicIR7ibjAepehUpick7QwQJJ5UUgmbvl73fwndqZotup8sXbVzPtQQ/132','佘伟春',1,'上海','中国','浦东新区','阿里巴巴',2,0,0,1547887476761,'2018-09-11 19:31:15',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (20,'oWA6a5QSEpcNiTlftbTUCfPjmNh4','Chris','https://wx.qlogo.cn/mmopen/vi_32/lydZ5NqQUTiapJhQW4KjQFMmmBdPJqKTibn7khXmLNK82hqSlcfmElDtBJrFZWwpR0MYXIsTD9T5ar8fTVHbicodg/132','许丕婧',2,'上海','中国','静安','瀚晖制药有限公司',11,0,0,1566196433816,'2018-09-11 20:11:30',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (22,'oWA6a5VBdxyi-IHeHL1C1EzRZXzw','Natasha','https://thirdwx.qlogo.cn/mmopen/vi_32/U6Ez5x82CU6qkeekOrFv0xSKB2QfeGVKQ3Xe0Xl6Syib6lHhaRV13viaddKW98eCBRWMuDn5Nxc6Ah1hvvfp024w/132','Natasha',1,'','玻利维亚','','Chris的朋友们^_^',8,0,0,1633613214540,'2018-09-11 23:09:25',2,'15618091931',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`,`member_level`) VALUES (23,'oWA6a5TCZ1PNAP9K0TzWItp7LH1s','微信用户','https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132','袁晓琳',2,'','中国','','瀚晖制药有限公司',11,1025,2125,1730212183115,'2018-09-11 23:13:02',2,'18516375753',0,'2022-11-25 15:08:28',1);
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (24,'oFE1r5S5NnYSaPEW3f42-WKft7hM','Emma 陈小戈','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ4B2v1bIzAfYqHDdH7JZrkggOcZndtavbYZlsF1pF8ibHl4icfhBH02SFuBaXr94SMU3yIoPAygF0g/132','陈戈',2,'上海','中国','浦东新区','二十一世纪保险经纪',3,0,0,'2018-09-11 23:26:58',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (25,'oFE1r5Qp0pVhygsBhymhSB7n6d5U','like','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erPAFkJSJKPRCCbeKmdVgbNKmSuLxoG9yLo0qydW5uer1OUP32KibO07RAHu2o3xibPEU71cSXqaJSw/132',2,'上海','中国','浦东新区',0,0,'2018-09-11 23:39:37',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (26,'oFE1r5Zes8WfZtW_TRYxtkCABpfo','杨志','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJRWJXOGxs9Sic29Bm4uNiaTcHKxTTLnR0ViacW70G3mP6YDcXIWibSeeediaY653EILyv59UDLicXIHLjw/132',0,'','','',0,0,'2018-09-12 01:54:33',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (27,'oFE1r5QNN9h-4r2iZrSLFN9C9jhI','__love to me.','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epIAic7nBXtsBuZfkGerXGLXTbeRQEEsPTwVYelZWp18w1e5pq12sEFttymLtjjvFlibAvjhFdo9X3A/132',2,'','丹麦','',0,0,'2018-09-12 11:40:53',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (28,'oWA6a5Qe3j5nHB8tC1Mv7XIdUnVA','顾容','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKt9UkQ9u8WnJCk01kGA2vLX3HpEa2hApoKz7SloxEIne9ohMBtON7Ug3p3N5GFKEa9leff7UfJpg/132',2,'上海','中国','',0,0,'2018-09-12 12:53:07',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (29,'oFE1r5dfEcfEqXHwRDn_5MFGK6Bo','大牛嗷嗷叫','https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEJK2GpYoumibiaESOemrn48A12u3O7IicrypuicziaibSed6F05HCOF3CI1QfmTib4RbbZwsJn6vlUj1wFeQ/132',1,'','新喀里多尼亚','',0,0,'2018-09-12 18:21:04',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (30,'oFE1r5YxkmOW68NO3o26jCEWPV-c','柴进','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLDvTgMUFfCweTGZ5ujMeH7UpbdEOVTmQGhKGictaPg9aZgRkloEBI0zXMjB63qw1AxRsMribicthFAw/132',0,'','','',0,0,'2018-09-12 22:17:36',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (31,'oFE1r5Qo1iFEgv2m4-Fq-73M_Lec','追光的豆子','https://wx.qlogo.cn/mmopen/vi_32/qr2O69Gib11yMjjjQzfYFlp3jicUH2AY1DRKfoTARrqAq6Jib1oWW5CqcpbhdLtnVcCGchl33tOF33r2tmS1pbjmw/132','袁晓琳',2,'天津','中国','西青','瀚晖制药有限公司',11,0,0,1686710327027,'2018-09-12 22:19:43',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (32,'oFE1r5QkEl93J9ZRpnNcqR3UhHd0','秦明','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJIVdI6ZHG1eyRV7fRu08676wVKxUuFChCThLT5PS50WZKXo65mkhGgXXLkK46NiaQdh0oDkQfzFeQ/132',0,'','','',0,0,'2018-09-12 22:35:51',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (33,'oFE1r5ZDBppR_IeuFBgkZMRBGrMc','DYF','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTII1iaAxdmus2XXUsChk338DKb7lLVm3BH1g7PC2ibwWMicolVysGvBibpkN2ahe49We4KouwjxWpE1Yw/132',2,'上海','中国','浦东新区',0,0,'2018-09-12 22:50:42',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`,`member_level`) VALUES (34,'oWA6a5ZI9VveBWhrQHOsLTJqI3Tk','微信用户','https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132','吱吱',2,'','','','H2健康促进计划',17,10075,10085,1726098380450,'2018-09-12 23:05:18',2,'13524050272',159990,'2024-04-22 11:02:36',8);
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (35,'oFE1r5ZPtE0SI0LjSbsfUdOzQZAQ','周洁','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ep7zPCtSjD5AXeu3CI8n9UA9w8eTr5kO94hxCw38xV9AL0oxaAL29P8VerpchapwtMwNtLby6FPVg/132','周洁',2,'上海','中国','','Chris的朋友们^_^',8,0,0,'2018-09-12 23:53:11',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (36,'oFE1r5fWeD6uG7Zvy7YB7Cb8pCTc','李彬Lax','https://wx.qlogo.cn/mmopen/vi_32/yoJgOYrAmJljqLRWRfeRibp1GCYwB74ZDZU0RSk2H8KxRkGYlRU4aGTdPVghsP566gRcTdPInv16VZ0YAYRrbBg/132','李彬',1,'','乔治亚','','二十一世纪保险经纪',3,0,0,1536810702878,'2018-09-12 23:57:09',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (37,'oFE1r5QEauhCjPPur3M7DWhJ6CIg','淼哈哈','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertDUNu9GHcGC3kTcWicASIyVERicsI3F0FRicXT4pfpkQXUzYs7A3nfZqHDVzAh4Fj3U6elosPLS76g/132',2,'','中国','',0,0,'2018-09-13 07:55:44',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (38,'oFE1r5foXnww0ibqlOEMRFfFd8ys','易网情深','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epsBEJEvhvGyLAB6tX2JNAE6MIHzJoniccW777MWDJT0DB2aSCvKadgIKgLzy9v6KNsHvj33myib00g/132',1,'浙江','中国','杭州',0,0,'2018-09-13 08:22:16',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (39,'oFE1r5bHv6M4gRpaq341RYD0dEcM','方小如','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epzPAPgmU7pO59oImErauZZG5WrDrc4IjyMdzcdAS6sVIHjY4LJrr88IXmxMwqgsLktXrj8dHOCnw/132','方小如',2,'上海','中国','杨浦','Chris的朋友们^_^',8,0,0,'2018-09-13 08:53:19',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (40,'oFE1r5Yh6VRum8LA0H5R8oah7U-Q','米奇','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKoHeWKItjbbMx4oVspQgPFxDytrxxhAuqsomwYe4mP6pNUjObJibYLibS8NiaXciaHKH7uX3f2bMErGw/132','杨文琴',2,'上海','中国','静安','上海百盈医药科技',5,0,0,'2018-09-13 09:34:34',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`,`member_level`) VALUES (41,'oWA6a5etb1t-feY1E8UbbZ2guKJs','微信用户','https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132','朱虹',2,'','刚果民主共和国','','H2健康促进计划',17,15,15,1686288462214,'2018-09-13 10:02:48',2,'18217439615',0,'2023-05-10 11:00:46',1);
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (42,'oFE1r5XDAQn4y3W0VFVtO6eKPoss','AL','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ5pCKHmOLtIINZ8KniaJqfgWxgb9DHglcpIr74Rtz8xgicLfib8ejICrspmRYV1qhD2QF9dskrnfUag/132',2,'上海','中国','卢湾',0,0,'2018-09-13 10:36:44',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (43,'oFE1r5Y9PA__lHs5Ci1sWoiyqCUI','孫爸爸','https://wx.qlogo.cn/mmopen/vi_32/ajNVdqHZLLCPEjB6WLSKOZGicuHw94xMDJibdrmTQT2Fr7Kia6Z7PFCpKmAwlzj0M6gbGJx7XruZBL2WB09QFaupw/132',1,'江苏','中国','无锡',0,0,'2018-09-13 16:03:54',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (44,'oWA6a5Xcn0LYfvJLhN37Gdfh-Cm4','溏姬瞌de','https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEIUkr9H3qoIIE1r95lld4jmP77vGEpZm5iax5icqojfUm2Qb3cibtAYHlPj0Xj8m5IWS1RXYKNf70kRg/132','张丽英',2,'上海','中国','浦东新区','安道拓（上海）座椅',7,0,100,1575269457999,'2018-09-13 16:18:15',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (45,'oWA6a5XqvCHh1U6V6WH-HtiqJzc8','刘伟男','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJE7gtD6o1MicUlmNvTOFBGvxIVy57EwnuHPejGlrCGV2nArrlMQGLc0Z7pg9IEJ13lxgtKQoIXevQ/132','刘伟男',1,'上海','中国','松江','安道拓（上海）座椅',7,4,46,1551604201105,'2018-09-13 16:26:04',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (46,'oFE1r5RXOQRukeZw90Ti9ZlNfrI0','彼得桃子','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKYBLEEnL1G8Qml8M8icHbASM93sF5g514xQS7DHTOxkmmmKN7YGBazyYfZSdX0Pn1n3NdH3t7iaG5w/132','蒋天放',2,'','斐济','','安道拓（上海）座椅',7,0,40,1551604208266,'2018-09-13 16:33:09',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (47,'oFE1r5WlLFqsVqkvo3zhkrYTnYR8','夏末初秋','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKOt2j7LxXLcmnj9Hic2QgRiaCLAnWHNptQusw5rM47mDaGkrnNOpVbPwSTib6JGW5iavJsiaMaNfubBOQ/132','王庆英',2,'上海','中国','青浦','Chris的朋友们^_^',8,0,0,1551604244785,'2018-09-13 16:39:14',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (48,'oFE1r5exTxUK_171Jm5XYqSeIun4','甘遂','https://wx.qlogo.cn/mmopen/vi_32/vWnXKwcygM7qRGmkUdZoBaRNk3LFZemR68vRGMBdhBDSZ5AFwVFRDwDu32EkaPlBHiaIy6IJPXjXibCibPZsmBYzw/132','钟蓓蓓',2,'上海','中国','','Chris的朋友们^_^',8,0,0,1551604267365,'2018-09-13 16:46:42',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (49,'oFE1r5cEGrNSVz3hROmijYvvbszw','Sienna','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eraDATzYkJlM7ibyFcaJYiakFfLODHibRueeNOTDSH3xNrQ4WDfaWYU9jN8Qsbqm5ustJIp2RVc8UFiag/132','Sienna',2,'上海','中国','','Santander',4,0,0,1558430181723,'2018-09-14 15:04:57',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (50,'oFE1r5bcwivU7yCYNGfzfwIP_5NI','Olivia','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLIWF8Z6OAFichEu7OmAgoNgwaSrZt7fkhszqQ6FqHZjwDLT68oxqweAicl18MIEwuLnnbtTcmyRucQ/132','olivia',2,'上海','中国','闸北','Chris的朋友们^_^',8,0,0,'2018-09-14 15:07:15',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (51,'oFE1r5cP2sjN9vw6wIViPNBDBe5U','Howard','https://wx.qlogo.cn/mmopen/vi_32/SSPl9iaPiafMDpicibSTGQpAo5PNKrcFoQhOt5VdkNJxa1A0RoYhZcqajMl0xqoQHnNPAnwrF408quRHCnt3QxiaWUQ/132','Howard',1,'上海','中国','黄浦','Santander',4,0,0,'2018-09-14 15:07:23',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (52,'oWA6a5XEDG79hN5kriWSaXj9Cbzg','Vivian Huang','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eol4piapPgyMSOrhNeU84ibPicVqm1PB8x0vicTAsRJnGblribC0sGjIRPo63dQGSgceahmgEAzubicpgyw/132','黄致蔚',2,'上海','中国','闵行','Santander',4,0,0,1550724297811,'2018-09-14 15:30:57',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (53,'oFE1r5bDtMbQ4jYrxR9edowTrDbE','懒人Cice','https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEI4sS14PW8ZYcIiacPtuam6xEHelLV8gPINazCwVu1pI0GfOO40aBm6cTXSzW6777GxTeicciaVxRDTg/132','曹曦',0,'','','','Chris的朋友们^_^',8,0,0,1536916252756,'2018-09-14 17:10:00',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (54,'oFE1r5T61iKj7QCuR60QekBH1ciM','王缘','https://wx.qlogo.cn/mmopen/vi_32/WhoLIb4HZttQ4iaCpe7icnb5N7lLWB2Wpb0bC0CcUzdKSDU9pa4ZvX00acvBFWdZDQtaAJqxoMrNqYRv58chJ3dA/132',2,'上海','中国','长宁',0,0,'2018-09-16 16:47:33',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (55,'oFE1r5WFt6U1ZIzQ4ithFCJqK2Bc','苏小桃','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epRr45TKuZXyHyHicjfZZX8HibMliaFaWr7iaF4PEPZOZPEIqshTp8JIDpElduyGbnsUBwGtfiaVCBqYcA/132',2,'上海','中国','黄浦',0,0,'2018-09-17 16:57:27',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (56,'oWA6a5cX0VPR6LfUmtMuJdx7b194','Marc','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqtT4qRYhJ9V0CBuL1ElNezvWTONuZyviaJMDIqfuBbSa9ic00yiaBqxZBjkia4p41bceuRvBHmx5fYXg/132',1,'上海','中国','徐汇',0,0,'2018-09-25 23:29:35',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (57,'oFE1r5StKVTq5zAI1ovyUIiGU-o8','黄小鱼','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJb1sZSVUiaA6Ad5kXpllKGmsDc0rXOYmuyyZSZBxnR1gmkO96iboskEs7CynMmHbWw86ia8ua8SJAdg/132','黄钰',2,'上海','中国','虹口','上海环境能源交易所',10,0,0,1539141141184,'2018-10-10 11:09:52',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (58,'oFE1r5WUx-b43i382NZSsFnx4xxE','小猪妞妞','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTICicbQa64qEbCowiaszkmm1xrhibfOtGnXkavcpsUo4NAR2UnfgqQbEcWsouh9eQ2JB1K1YtXBzjnnA/132','方敏',2,'上海','中国','虹口','上海环境能源交易所',10,0,0,'2018-10-10 11:09:53',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (59,'oFE1r5WmIhJMBymgYtz8slPhrX10','pm','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIR9JseR1HHRGKkvbWBOJEtK9diaKD0A6z0cRgfyNCuvkCIfFQnxHtOBiaPib4Dgv9CyN3loTNjuKrsA/132','pm',2,'','中国','','上海环境能源交易所',10,0,0,'2018-10-10 11:09:59',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (60,'oFE1r5WkXN26zR7Jk1vJJyVcP43s','Teenyz','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJcG0yd2PNuZx7mSJf0d6ZP2ibEdYCHZ1icFibbFHLrGNMdRmxO2WYlibia0fdAkPibZEg0iafuP7Ag2tGOg/132','郑盈',2,'上海','中国','长宁','上海环境能源交易所',10,0,0,'2018-10-10 11:10:01',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (61,'oFE1r5RMOwIjKg9AtX1kqVJM56Ds','Michelle蜜雪儿','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIq0kariaSepT8SB9eIk3p2wkgDiaEx13ThuQMtbMpbWJ3uc2pskRjfETPTvlrt4yFJJ3sUVrhib08Uw/132','姚燕萍',2,'上海','中国','杨浦','Chris的朋友们^_^',8,0,0,1558355780083,'2018-10-12 14:25:41',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (62,'oFE1r5emdKPijk3p1OHz3NCfkilk','韩洁','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erRhP9rMOEABZcAzg61sk1vaxMEDiajicprUFoyryUdTmogiacBtqBS2cvLkcTXmgMR2FQ3jkWHQRDqQ/132','韩婕',2,'北京','中国','朝阳','澳大利亚西太平洋银行',9,0,200,1607242802412,'2018-10-12 14:25:41',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (63,'oFE1r5biOIJNExg5KczdrpsmjV9E','程子步丁','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLoYrYX513mNoF2mBDAC5JTDWRDFGq1nlMuhFf7ibWASaGCUbN35OYXoRf8hVoI0iaPUiciaR0o8iaSvMA/132','程步云',2,'蒙特利尔','加拿大','','澳大利亚西太平洋银行',9,0,150,1607242879063,'2018-10-12 14:25:42',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (64,'oFE1r5XdSokLSS_Eir16O0Dw3bbQ','ElizaChow','https://wx.qlogo.cn/mmopen/vi_32/8S6taiaF2Qqzyz7dSLMRNelticSVesRjaEplpcmXAAnukgI6WDBcMKtQl2C9DP6BTEksf0kg5No7fQkn5FQD9aWA/132','周珂伊',2,'','中国','','Chris的朋友们^_^',8,0,0,'2018-10-12 14:25:53',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (65,'oFE1r5cOCmdR_qr5-dxzHPUlgYUE','邵峥嵘（Stella)','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83errn6iayXCzhZxEOgyNSTMYIcxkrx6d3HGfGh8MRrBUvsM10gDxvrsb9IjIMShTGMiaia43PHibT7Eyww/132','邵峥嵘',2,'上海','中国','','澳大利亚西太平洋银行',9,0,150,1607242883382,'2018-10-12 14:25:53',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (66,'oFE1r5YR-Aa1WqETxFSmxGhNSWgU','埃銤','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erNBvPRWxKdCMpxZCkBCWJeanJMSm1l9sAt7Wk94OiaP7qq8eaMQ4LFjCOzqFa8vlLvUvfg2SwZVFw/132','李春艳',2,'Kanagawa-ken','JP','Kamakura-shi','澳大利亚西太平洋银行',9,0,0,'2018-10-12 14:25:54',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (67,'oFE1r5SUHWyZHtb2tI3PEGQyQv38','agnes','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ92jWy9GHdHASia4SdgXTn1R7iajDLdZajR63LfD21b4OsR3w8Cs94CliaSQC77oIrrKoMInibRzzicgw/132','黄玮',2,'上海','中国','闸北','澳大利亚西太平洋银行',9,0,200,1607242869192,'2018-10-12 14:25:56',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (68,'oFE1r5YrP9r5-a8egZD2yPNSHFjs','车璎','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJFZvpO9t5Nh639bGjliannPq0ItNUvNB0sLQvlo5xXxIAKfgedxpPHzRjLyTe7g821myFCOBkxHjA/132','车璎',2,'上海','中国','长宁','澳大利亚西太平洋银行',9,0,150,1607242887690,'2018-10-12 14:26:02',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (69,'oFE1r5X0XV6iEpjOznT91VrZLL7c','张曦','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKZaKhG8IHFjTuxMj4dFcqgaZLQWZSXS7Qicwe1okOyfZCV9E5g5l8cp1YXaia1gxca1tVFiaiaoZQang/132','张曦',2,'北京','中国','朝阳','澳大利亚西太平洋银行',9,0,100,1607242857716,'2018-10-12 14:26:29',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (70,'oFE1r5V5FGCYiA78dOrePPV27FUc','朵拉 Dora','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIIcANiaL9eJpriaXnKNy2220icen8rZibetFNQG9DpEJQqY94BQ3murKczkT6DN03yrPJJaaonVnuGEA/132',2,'上海','中国','长宁',0,0,'2018-10-12 14:26:44',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (71,'oWA6a5b2gKE6c8Ge9_FY7PlUhRK8','Jamie','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIfg3YljgbfFpd3Lx7fMHu7hA8w1Uzym77ic8olibbCWKFXNbZQOCwqnVQVeKk4QHAn32ELyiapBwKSg/132',1,'上海','中国','',0,0,'2018-10-12 14:26:49',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (72,'oWA6a5T1z1tUQVrbPyIxAHxAkE_s','helen 肖慧','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoraPdR3cZWAyUyOwDwUwkXcSk2b47nKIHzFC5ibP0aIQLWib2mm4xt0HLmNcmHp0nMR7RuuxN96qVw/132','肖慧',2,'上海','中国','浦东新区','澳大利亚西太平洋银行',9,0,200,1607242827881,'2018-10-12 14:26:54',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (73,'oFE1r5exNJj-iWnYYqcBuxAEwT84','郭雁燕','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKjIKcm6rjoSqtCq3zE6KnmmbnCGxCCbLlAdicJmXuMgAvo8x0sK7UvxiacR922sAyhjSCcia2bBEQPw/132','郭雁燕',2,'上海','中国','浦东新区','Chris的朋友们^_^',8,0,0,1558356246152,'2018-10-12 14:27:00',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (74,'oFE1r5ff8QkyRJxaVpwinZCjs2mQ','Li','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLsLBibGjP4JZL7UebmC2V0myFBqsAv0BawCicibZaSLdnWZYpXoAFCb8o3m00SLNyQeTg0721rIlIfw/132',2,'上海','中国','',0,0,'2018-10-12 14:27:05',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (75,'oFE1r5W52DS_b3ItBYjsBxQ3uD0E','李宗源','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLrzRsZ8R5YXh1BhMSHBwGBuYHMfuOx6Kj83Lnz7ibv2XSicrt2V0hByKtS1SknD88U16VpXgGJS9icw/132','ZY',1,'上海','中国','长宁','澳大利亚西太平洋银行',9,0,100,1607242823172,'2018-10-12 14:31:58',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (76,'oFE1r5b-q__V1sXfw1S-F9v9LtZY','Ivy_DDDD','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJcyuDLmZ5bbK8BSictvV28PykgPNic0rMSwTR5CwK1IYFTOMqsqYaD8S4LNkRhGvicbYxRy2vxZeeWA/132',2,'上海','中国','普陀',0,0,'2018-10-12 18:44:27',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (77,'oFE1r5eVWCRbCAFGWObqQG63SFRI','阿华','https://wx.qlogo.cn/mmopen/vi_32/TObuLEqMInBkVicGMPfb5g2icpHujpnriclZBR0c68pPibq9g3EdJiaUQibeRd2StcfeKQ8KJIsg7wJQlMDBZJfWJibgA/132','李春艳',2,'上海','中国','','澳大利亚西太平洋银行',9,0,0,1558355752247,'2018-10-12 19:33:51',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (78,'oWA6a5fGi6Z_eFShVSrshiT0Ongc','Steven Wang','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLwicEvGuBSINhH3hzq6oCOpzsUYkZxYaic1I4SiaWzRFQiaoHTxUYhCEhp7RjY49xzpwRIErHHusUTxg/132','王艇',1,'上海','中国','静安','澳大利亚西太平洋银行',9,0,340,1607242864929,'2018-10-17 14:55:15',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (79,'oFE1r5fL4i3PWg6iRs5RZR2murrE','NikiXia','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTK6YJfOQFCQ6ZGdUcbITWKjE328Fx50Z6iaRnDibjIWEiazPnC1dHSiaPmchEoib6tZK6vygho6FhvBv7Q/132',2,'上海','中国','徐汇',0,0,'2018-10-18 10:40:34',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (80,'oFE1r5QneyTO_huARaxe9qe58CaQ','DotQ','https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEKKuM62xM7XhSQeqoAhGpKCichehaS445hRnnAEvH7wC4lDicwDwgJltCWGs1hK91REG6JxicMqO5Flg/132','张铎千',2,'上海','中国','','澳大利亚西太平洋银行',9,0,200,1607242814260,'2018-10-20 22:12:47',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (81,'oFE1r5RGkc7O71qS5KaRFVJTWUEw','薇薇ivy','https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaELC1XOpv7LTOZDuwBQcfDLUZwkGFMD2e82C1YBfK706Q7YAskaE0RkSD0PdVBg3xhM4RiaTtjouGIg/132',2,'上海','中国','闸北',0,0,'2018-10-24 16:22:12',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (82,'oFE1r5UFRPjC-zvPKMaTqZ11FmQs','幸福密碼傷不起','https://wx.qlogo.cn/mmopen/vi_32/rlYTQpTV0NzyT4GrbXDEcocPFuvU3vsVjYgJLWtlFTaSfCBt6bz7Qg2PyORBnGngbNQ5tPPW7Ly1vM3SEkAxgQ/132',2,'广东','中国','深圳',0,0,'2018-11-03 10:51:04',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (83,'oFE1r5ecLMt6Bl8nKnh-h9a0tXH4','xdn','https://wx.qlogo.cn/mmopen/vi_32/MbyjAwic7eO2Qz6zRx9ku3B0Fw6XoAxAeias7M9dGOyq1fHJsicqYV5csxaQb06KMrGuRv1p0icZ5zqKuJ8pt7Eiaag/132','徐丹妮',2,'浙江','中国','嘉兴','上海环境能源交易所',10,0,0,'2018-11-06 16:03:29',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (84,'oWA6a5YskXZLFKqL_KvinvXgPhqU','7','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epfy7sruwrC1Jqn6NKdeU5PxCdPH6FPibAFBAODkhpfia4frBoTE1zIAJjas7MClugWD18Iibev4dMfQ/132','江剑涛',1,'江苏','中国','宿迁','游客',8,0,0,1555421090071,'2018-11-09 09:16:02',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (85,'oFE1r5ZifECUp0mL7U_Tf3AmwUt4','Dashing Hippo','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eruDmFz4oAB8mwCiadliap4elvR137ib2DFAlaKOHmUVCAaaYkV6nepF4b8iaxW4cOiaKd9qu3TMRblbhA/132','刘磊',1,'北京','中国','朝阳','Santander',4,0,0,1558430154043,'2018-11-13 17:08:18',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (86,'oFE1r5UwD98mt90uqqN2HenvCCFg','黄方','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLZiaosdpM8pSn6rjEC7ehVXJRYvVgWp1Z3Rvvbe21wDAaficm34LKDiakKzg9a77oWPbSLnHGoOpUhg/132','黄方',0,'上海','中国','','Santander',4,0,0,1558430161515,'2018-11-13 18:27:33',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (87,'oFE1r5UhUwdk2YbmRpShi0bXCdXE','苹果','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIaGK9Kwicd7q6KeHiccYbmeyfwQtaquAVCbxp6Zd92t4MHn9tb2jPtFibtpSuCk6jMJgkSAByJIIHiaQ/132','王昊杨',2,'英格兰','英国','曼彻斯特','Santander',4,0,0,1558430144669,'2018-11-14 10:24:35',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`,`member_level`) VALUES (88,'oWA6a5UFI9NpKQ6WrF9OlMEYpoc4','微信用户','https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132','李振梅',2,'上海','中国','浦东新区','Santander',4,4530,7630,1735687886948,'2018-11-15 14:09:02',2,'13901896122',0,'2023-01-12 18:36:18',1);
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (89,'oFE1r5WXnODaDJ6QRMdJkZQ1NKy8','木亥火暴弓单','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJfhcpyAQYCcrNQ5JpoIwoiaQrkvKPaDxuHV7E0KIPJ3HpJdlkibDvf534FbwSmjhib1osadwI0B9MZA/132','何斌伟',1,'上海','中国','杨浦','上海环境能源交易所',10,0,0,'2018-11-16 10:32:37',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`,`member_level`) VALUES (90,'oWA6a5XNnAMpzW35nWbxLQWtmqg4','微信用户','https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132','李长庆',1,'上海','中国','浦东新区','Santander',4,2920,4720,1735601130760,'2018-11-17 18:47:40',2,'13820371517',0,'2023-12-09 21:15:54',1);
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (91,'oWA6a5V9jN3csA1L8uqQgruyW63U','Lucy酱','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIpuibzKNmhug7yuKDFlpC3QzQC7Lbytoia5rjG8U2g8ia3o9RbVSJuNaYS3mnxq0aqxUeSAmvbx00Zg/132','卢愿',2,'','列支敦士登','','华泰保兴基金',6,0,0,1607325176532,'2018-11-26 17:23:13',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (92,'oFE1r5YPf6gwPnzsNp9unv5Z15M8','腾木','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJW1mt6zS8bNB6mgaBNozm2D5oesajt87SwGLNwN2dMcNkpZB6FUoRyTTViaFNgxJFeQnDppgzoqUQ/132','刘腾飞',1,'上海','中国','徐汇','华泰保兴基金',6,0,0,1547894204383,'2018-11-29 15:36:06',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (93,'oWA6a5UvL3vYuyj1y0yOU-ldpr3k','陳欢','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJSUbP1JSkYUMQfm3PkpgNJ0LKTxbKYhlOZ3KZ38TLPecsaHdtX2ibvIriamODyfqGBvJmuiaWGJnBaQ/132','陈欢',0,'','','','华泰保兴基金',6,0,0,1607325107149,'2018-11-29 15:36:07',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (94,'oWA6a5Wt_luymItWdAHu1EDKugVs','KanyeTing','https://wx.qlogo.cn/mmopen/vi_32/TNgicUjWOq55HWytzVj7MeUAKDicZmiaaaFNIE5QFEGXibyoYrdtG2eefwtkHoCaE8ORhPcibONnvmfXia9GRyzSsteA/132','汪烨婷',2,'上海','中国','浦东新区','华泰保兴基金',6,0,0,1547894248972,'2018-11-29 15:36:09',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (95,'oWA6a5RBolM96gOs_FZ_rjziZ-3k','吴征豪','https://wx.qlogo.cn/mmopen/vi_32/konCtjrtpEsR3oT1QyoZcTj1enhIUwOCknpbGicWRRx3gQrwnXagrib59rJFwr0hIsFOcAUPpGiaLXIPGbp7CYkEw/132','吴征豪',1,'','芬兰','','华泰保兴基金',6,0,0,1549965394172,'2018-11-29 15:36:10',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (96,'oWA6a5fDuEuGMF47k8atiMPuuViw','新','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIo6ZJLqmKkBpz7UGUK7SW0YoxaRV3iaiawn3Ij1fBN8Q7hacDMowZWIXFJXVPibMlBHJmbYibibKIia6NQ/132','李新',0,'江苏','中国','苏州','华泰保兴基金',6,0,0,1547894281123,'2018-11-29 15:36:11',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (97,'oFE1r5SaH1qAPCzvPwx6zky6tNSc','幸福从今个开始','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eouzsM2GQnSD8dwPXYc7EXtOpV77bZ11h45icdwib01wAxaELutLPmiaeC2qiccibLjyw0NGqO4b9GdwTg/132','wangshanshan',2,'上海','中国','宝山','华泰保兴基金',6,0,0,1547894288933,'2018-11-29 15:36:25',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (98,'oFE1r5dzGyM4eDqaq5ecwOYgI0Z8','刘怡君','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erx1bEGTGYeXmtf4QT9vv9dw1pYzPtkW7hpfhM0OWibe05spUCxhE73VRY75iasg0ZHTggQbHpVDQ0Q/132',2,'上海','中国','浦东新区',0,0,'2018-11-29 15:36:26',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (99,'oWA6a5fmWLbB8oAICI_jQd8BqUIU','殷学东','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIwj3IrcIKSDiaI1iaRibAb0VqrHVXUVfMrew9QtbPunT225d2skia8lJY2gnkCZxh2yfxQfKjqs4appA/132','殷学东',1,'上海','中国','杨浦','华泰保兴基金',6,0,0,1554382460448,'2018-11-29 15:36:27',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (100,'oWA6a5R2nbhVMntWVVq2Pq-Zzi34','AoO','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLyXh2DCqkOknTPzcVN0DvoxLQbLflziaWLbOKiasHQJdibtMywyGiaoOHfeic5xWibicjqREHmhLSRicrZEw/132','奥媛媛',2,'上海','中国','','华泰保兴基金',6,0,0,1547894305708,'2018-11-29 15:36:28',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (101,'oFE1r5Q49kDS9VjN9E2vRJqZ9YQA','QSY','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJa5M3miabZJr6V5RI4PmKoDSib4GA1TkZTV6VBfEkMq06a9UXBefAELBIKGKW3EaCmK9SrHamib0hug/132',0,'上海','中国','',0,0,'2018-11-29 15:36:31',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (102,'oWA6a5a7o8qTm_ylzV4cS4tzNSd8','勤劳的陈老师','https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLuT18s8rcmaChGm55zIUuU7GOQLVWVPgxpLrEQF3iaY75uwKvHA5lMXx6o4JRCqrw2M9t6HlKfBnA/132','陈杰',1,'上海','中国','杨浦','华泰保兴基金',6,0,0,1607324946007,'2018-11-29 15:36:32',2,'13472579778',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (103,'oFE1r5Qm-VhV-cTPV1Oa4QaDbn5c','Tang','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTK8QicvNyFFibYKfhcibp12YrWzD7vLD5h1jSAojwjO9t5ZleMgKm270R1Q1ERc9ab7YAsX19JOOTgibg/132','唐诚',1,'上海','中国','浦东新区','华泰保兴基金',6,0,0,1547894318928,'2018-11-29 15:36:41',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (104,'oFE1r5aK7nrrOQUK_MdfUIBGyTCU','77','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqFkGUMzB5a89KeceDVO9yxukBGJrdGHvHdlnaboBmeibgMG4IRqV7xibydvHnmZDqBdica1SSiaUyf5g/132','陈琪',2,'上海','中国','徐汇','Chris的朋友们^_^',8,0,0,'2018-11-29 15:36:44',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (105,'oWA6a5Ux7N_7XiF0u3LgcVyYlWLE','小猪','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTItNFERt7yZAGvCsPnhfrTuOKNnO6IDBiatI0qDfS6TXEaxP67DujJhezxS0FEEsnuJgpicvnMFcibzA/132','沈智汇',2,'上海','中国','长宁','华泰保兴基金',6,0,0,1547894326444,'2018-11-29 15:36:46',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (106,'oWA6a5XM9xEuRxWRbN7w5-k-6Ng0','jumbo','https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqtY4icGlCbPVws7LaHwJe0bjxkVg9I5IfQGPPKSJFcnAiaGOaj8lkW3Qicopn0tLpA2Bw1gzAl6Zicow/132','殷唯',1,'上海','中国','普陀','华泰保兴基金',6,2700,2700,1660776439898,'2018-11-29 15:36:47',2,'13661803931',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (107,'oWA6a5Uij0aQvBppdW5eFwB-pOrw','天涯之远','https://wx.qlogo.cn/mmopen/vi_32/P8XvIN9dt86JgBAnKlVAzbchVVo1S4CjHezWLh9ndXwRXzEicKmJWICxFuZmGIsT5tcWr52dB1PFt3CxHoxWeog/132','王乃女',2,'','安道尔','','华泰保兴基金',6,0,0,1557474095781,'2018-11-29 15:36:48',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`,`member_level`) VALUES (108,'oWA6a5SnYvmKVo0Tpd8Qbh4yFQbs','微信用户','https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132','俞林秀',2,'浙江','中国','宁波','华泰保兴基金',6,1180,1180,1735481954448,'2018-11-29 15:36:58',2,'17502187586',0,'2024-02-20 22:21:17',1);
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (109,'oWA6a5e66DVuj1P18ucfXBhAz2uc','郭海龙','https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLhC9eszKQqV3HfTStnwdePx6bEWDynKeXaVYpTda9IrEwIYCITvubBkkOIHSnmdsibDO53wdJJyyg/132','郭海龙',1,'上海','中国','虹口','华泰保兴基金',6,75,75,1642063355247,'2018-11-29 15:37:16',2,'15801892369',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (110,'oWA6a5cFcKOqbvPJKR6JsWvKZPgo','CC','https://wx.qlogo.cn/mmopen/vi_32/GuW1x1C8sjvzSPOzKG5LZWrLXoBQPDBVz3lxABBys37e6vicS1iaIt89YMx6Uv34xGwl1wYtJRicaC5EfmhrVnAiaQ/132','邱劼',2,'上海','中国','杨浦','华泰保兴基金',6,0,0,1607325118783,'2018-11-29 15:37:18',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (111,'oWA6a5TyYqQgTCRQBejNvoQhH6U4','黄佳丽','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI97SZd5Ew0ncS1AzjE6icCGVgm5Kv83rfK8hPxRuFbbrKXv1D9VYsUjU6oWdPIzapia33rJvIpdYHw/132','黄佳丽',2,'上海','中国','','华泰保兴基金',6,0,0,1607325147356,'2018-11-29 15:39:52',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (112,'oFE1r5Wjdk9fpGiHY_kj5TflOGOM','穷凶极恶云中鹤','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTITzlGFGPd4z0jD8oXQUvxQHnC9Q81n7YbkwicYMj6oF4QibfibCRB02spz9ArP51F2BfP3lduVEtrmA/132',1,'上海','中国','浦东新区',0,0,'2018-11-29 15:40:52',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (113,'oFE1r5c-W_FXcJhL1eEzADos-Glg','  勇-不可挡','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKKzgBDf1LbutKapYyREgeelKsR4E45yHOQiaF3GDranII7zII9wCW526GxO9hNw4BDibu2c7BcKDBw/132',1,'上海','中国','松江',0,0,'2018-11-29 15:41:38',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`last_upload_run_time`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (114,'oWA6a5Tjuf7P5O09uLrXAK5uEyec','夏','https://wx.qlogo.cn/mmopen/vi_32/2QAoSQcVFKOFiaOqJ8gPy5HFIvqM9TiahMiaJJ2mPm7pysu7PsOmoriaCFcibJ5ibBygiasQ6IpgWrQI8VBO6vtPiag8Dg/132','夏明',1,'上海','中国','','华泰保兴基金',6,0,0,1607325136587,'2018-11-29 15:47:35',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`gender`,`province`,`country`,`city`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (115,'oFE1r5RMIlq4aZJDr11vTszMxY0w','马文斌','https://wx.qlogo.cn/mmopen/vi_32/8ViaKSQeXwwvfLND6y4lf3PKXbWVpgxxdVGnvzZsz745GNHfySHIvIibhWdJ2V1bg1vtQyRtUZlmmcfiblVicwfQTw/132',1,'江苏','中国','苏州',0,0,'2018-11-29 18:48:12',2,'',0,'2022-07-18 00:12:42');
INSERT INTO `cuserinfo` (`uid`,`openId`,`nickName`,`avatarUrl`,`realName`,`gender`,`province`,`country`,`city`,`companyName`,`companyid`,`bonus`,`total_bonus`,`create_time`,`aid`,`phone`,`member`,`member_update`) VALUES (116,'oFE1r5UjziEWK4CSGckC85yfE_Kc','刘剑锋','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ1KSrs5Wf7VD6jg4o3cgwOWslkRXdBLxXtic5P4zcribyfKfz8gGy3nElzgttCKiblJLRw52VhEXgvg/132','刘剑锋',1,'上海','中国','浦东新区','华泰保兴基金',6,0,0,'2018-12-08 18:27:13',2,'',0,'2022-07-18 00:12:42');
-- ----------------------------
-- Table structure for cusermember
-- ----------------------------
    
CREATE TABLE `cusermember` (
  `uid` bigint(20) NOT NULL,
  `mid` bigint(20) NOT NULL,
  `rid` bigint(20) NOT NULL,
  `reserved_num` int(11) DEFAULT NULL COMMENT '当前可兑换权益总份额',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `display` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`,`mid`,`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
      
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (23,1,25,33,'2022-11-25 15:08:28',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (23,1,26,9999,'2022-11-25 15:08:28',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (23,1,27,9999,'2022-11-25 15:08:28',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (23,1,28,99,'2022-11-25 15:08:28',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (23,1,34,9999,'2022-11-25 15:08:28',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (23,1,36,9999,'2022-11-25 15:08:28',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,1,25,33,'2022-11-24 16:05:56',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,1,26,9997,'2022-11-24 16:05:56',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,1,27,9999,'2022-11-24 16:05:56',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,1,28,77,'2022-11-24 16:05:56',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,1,34,9999,'2022-11-24 16:05:56',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,1,36,9996,'2022-11-24 16:05:56',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,2,25,1,'2022-11-25 14:54:51',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,2,26,9997,'2022-11-25 14:54:51',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,2,27,9999,'2022-11-25 14:54:51',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,2,28,77,'2022-11-25 14:54:51',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,2,29,3,'2022-11-25 14:54:51',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,2,30,1,'2022-11-25 14:54:51',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,2,32,9999,'2022-11-25 14:54:51',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,2,34,9999,'2022-11-25 14:54:51',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,2,36,9996,'2022-11-25 14:54:51',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,2,37,1,'2022-11-25 14:54:51',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,2,38,99,'2022-11-25 14:54:51',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,3,25,2,'2022-11-25 14:57:06',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,3,26,9997,'2022-11-25 14:57:06',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,3,27,9999,'2022-11-25 14:57:06',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,3,28,77,'2022-11-25 14:57:06',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,3,29,3,'2022-11-25 14:57:06',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,3,30,2,'2022-11-25 14:57:06',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,3,31,1,'2022-11-25 14:57:06',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,3,32,9999,'2022-11-25 14:57:06',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,3,33,9999,'2022-11-25 14:57:06',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,3,34,9999,'2022-11-25 14:57:06',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,3,36,9996,'2022-11-25 14:57:06',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,3,37,1,'2022-11-25 14:57:06',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,3,38,99,'2022-11-25 14:57:06',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,8,25,5,'2022-11-25 14:57:21',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,8,26,9997,'2022-11-25 14:57:21',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,8,27,9999,'2022-11-25 14:57:21',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,8,28,77,'2022-11-25 14:57:21',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,8,29,8,'2022-11-25 14:57:21',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,8,30,5,'2022-11-25 14:57:21',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,8,31,5,'2022-11-25 14:57:21',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,8,32,9999,'2022-11-25 14:57:21',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,8,33,9999,'2022-11-25 14:57:21',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,8,34,9999,'2022-11-25 14:57:21',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,8,35,3,'2022-11-25 14:57:21',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,8,36,9996,'2022-11-25 14:57:21',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,8,37,5,'2022-11-25 14:57:21',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,8,38,99,'2022-11-25 14:57:21',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,8,39,3,'2022-11-25 14:57:21',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,8,40,3,'2022-11-25 14:57:21',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,8,41,3,'2022-11-25 14:57:21',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (34,8,42,4,'2023-04-27 10:27:22',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (41,1,25,33,'2023-05-10 11:00:46',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (41,1,26,9999,'2023-05-10 11:00:46',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (41,1,27,9999,'2023-05-10 11:00:46',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (41,1,28,99,'2023-05-10 11:00:46',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (41,1,34,9999,'2023-05-10 11:00:46',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (41,1,36,9999,'2023-05-10 11:00:46',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (88,1,25,33,'2023-01-12 18:36:18',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (88,1,26,9999,'2023-01-12 18:36:18',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (88,1,27,9999,'2023-01-12 18:36:18',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (88,1,28,99,'2023-01-12 18:36:18',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (88,1,34,9999,'2023-01-12 18:36:18',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (88,1,36,9999,'2023-01-12 18:36:18',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (90,1,25,33,'2023-12-09 21:15:54',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (90,1,26,9999,'2023-12-09 21:15:54',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (90,1,27,9999,'2023-12-09 21:15:54',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (90,1,28,99,'2023-12-09 21:15:54',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (90,1,34,9999,'2023-12-09 21:15:54',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (90,1,36,9999,'2023-12-09 21:15:54',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (108,1,25,33,'2024-02-20 22:21:17',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (108,1,26,9999,'2024-02-20 22:21:17',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (108,1,27,9999,'2024-02-20 22:21:17',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (108,1,28,99,'2024-02-20 22:21:17',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (108,1,34,9999,'2024-02-20 22:21:17',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (108,1,36,9999,'2024-02-20 22:21:17',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (122,1,25,33,'2022-11-24 16:02:01',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (122,1,26,9999,'2022-11-24 16:02:01',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (122,1,27,9999,'2022-11-24 16:02:01',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (122,1,28,99,'2022-11-24 16:02:01',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (122,1,34,9999,'2022-11-24 16:02:01',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (122,1,36,9999,'2022-11-24 16:02:01',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (122,3,25,2,'2022-11-25 19:50:01',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (122,3,26,9999,'2022-11-25 19:50:01',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (122,3,27,9999,'2022-11-25 19:50:01',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (122,3,28,99,'2022-11-25 19:50:01',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (122,3,29,3,'2022-11-25 19:50:01',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (122,3,30,2,'2022-11-25 19:50:01',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (122,3,31,1,'2022-11-25 19:50:01',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (122,3,32,9999,'2022-11-25 19:50:01',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (122,3,33,9999,'2022-11-25 19:50:01',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (122,3,34,9999,'2022-11-25 19:50:01',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (122,3,36,9999,'2022-11-25 19:50:01',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (122,3,37,4,'2022-11-25 19:50:01',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (122,3,38,99,'2022-11-25 19:50:01',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (125,1,25,33,'2022-11-24 21:23:34',0);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (125,1,26,9999,'2022-11-24 21:23:34',1);
INSERT INTO `cusermember` (`uid`,`mid`,`rid`,`reserved_num`,`create_time`,`display`) VALUES (125,1,27,9999,'2022-11-24 21:23:34',1);
-- ----------------------------
-- Table structure for cusermemberbonus
-- ----------------------------
    
CREATE TABLE `cusermemberbonus` (
  `uid` bigint(20) DEFAULT NULL,
  `bonus` int(11) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL COMMENT '积分说明',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pre_bonus` int(11) DEFAULT NULL COMMENT '上一次积分',
  `new_bonus` int(11) DEFAULT NULL COMMENT '最新积分'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
      
INSERT INTO `cusermemberbonus` (`uid`,`bonus`,`description`,`create_time`,`pre_bonus`,`new_bonus`) VALUES (34,10000,'测试','2022-11-25 14:54:51',0,10000);
INSERT INTO `cusermemberbonus` (`uid`,`bonus`,`description`,`create_time`,`pre_bonus`,`new_bonus`) VALUES (34,50000,'测试','2022-11-25 14:57:06',10000,60000);
INSERT INTO `cusermemberbonus` (`uid`,`bonus`,`description`,`create_time`,`pre_bonus`,`new_bonus`) VALUES (34,100000,'测试','2022-11-25 14:57:21',60000,160000);
INSERT INTO `cusermemberbonus` (`uid`,`bonus`,`description`,`create_time`,`pre_bonus`,`new_bonus`) VALUES (122,30005,'ceshi','2022-11-25 19:50:01',0,30005);
INSERT INTO `cusermemberbonus` (`uid`,`bonus`,`description`,`create_time`,`pre_bonus`,`new_bonus`) VALUES (3538,2000,'测试','2024-02-23 13:36:59',0,2000);
INSERT INTO `cusermemberbonus` (`uid`,`bonus`,`description`,`create_time`,`pre_bonus`,`new_bonus`) VALUES (34,-10,'测试','2024-04-22 11:02:36',160000,159990);
-- ----------------------------
-- Table structure for cusermemberexchange
-- ----------------------------
    
CREATE TABLE `cusermemberexchange` (
  `uid` bigint(20) DEFAULT NULL,
  `mid` bigint(20) DEFAULT NULL,
  `rid` bigint(20) DEFAULT NULL,
  `exchange_num` int(11) DEFAULT NULL COMMENT '兑换权益份额',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `prev_num` int(11) DEFAULT NULL COMMENT '变化前的份额',
  `new_num` int(11) DEFAULT NULL COMMENT '变化后的份额'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
      
INSERT INTO `cusermemberexchange` (`uid`,`mid`,`rid`,`exchange_num`,`create_time`,`prev_num`,`new_num`) VALUES (34,1,26,1,'2022-11-25 14:40:06',9999,9998);
INSERT INTO `cusermemberexchange` (`uid`,`mid`,`rid`,`exchange_num`,`create_time`,`prev_num`,`new_num`) VALUES (34,1,28,20,'2022-11-25 14:40:18',99,79);
INSERT INTO `cusermemberexchange` (`uid`,`mid`,`rid`,`exchange_num`,`create_time`,`prev_num`,`new_num`) VALUES (34,1,26,1,'2022-11-25 14:41:14',9998,9997);
INSERT INTO `cusermemberexchange` (`uid`,`mid`,`rid`,`exchange_num`,`create_time`,`prev_num`,`new_num`) VALUES (34,1,28,2,'2022-11-25 14:41:17',79,77);
INSERT INTO `cusermemberexchange` (`uid`,`mid`,`rid`,`exchange_num`,`create_time`,`prev_num`,`new_num`) VALUES (34,1,36,3,'2022-11-25 14:41:20',9999,9996);
INSERT INTO `cusermemberexchange` (`uid`,`mid`,`rid`,`exchange_num`,`create_time`,`prev_num`,`new_num`) VALUES (34,2,37,3,'2022-11-25 14:56:48',4,1);
INSERT INTO `cusermemberexchange` (`uid`,`mid`,`rid`,`exchange_num`,`create_time`,`prev_num`,`new_num`) VALUES (34,8,29,1,'2023-04-26 17:38:25',10,9);
INSERT INTO `cusermemberexchange` (`uid`,`mid`,`rid`,`exchange_num`,`create_time`,`prev_num`,`new_num`) VALUES (34,8,42,1,'2023-04-27 10:28:13',5,4);
INSERT INTO `cusermemberexchange` (`uid`,`mid`,`rid`,`exchange_num`,`create_time`,`prev_num`,`new_num`) VALUES (34,8,29,1,'2023-04-27 10:28:33',9,8);