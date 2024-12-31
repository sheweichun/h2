const { mysql } = require('../qcloud')
const TABLE_NAME = 'cCollectionQue'

module.exports = {
    getList: function () {
        return mysql(TABLE_NAME).select().orderBy('create_time', 'desc')
    },
    addQue: async function (item) {
        if(!item) return
        const ret = await mysql(TABLE_NAME).select().where({
            phone: item.phone
        })
        if (ret && ret.length > 0) {
            return
        }
        return mysql(TABLE_NAME).insert(item)
    }
}

/*
CREATE TABLE `cAuth`.`cCollectionQue` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(128) NOT NULL COMMENT '姓名',
    `phone` VARCHAR(45) NOT NULL COMMENT '电话号码',
    `question` VARCHAR(128) NOT NULL COMMENT '要咨询的问题',
    PRIMARY KEY (`id`));
  
  
  ALTER TABLE `cAuth`.`cCollectionQue` 
  ADD COLUMN `create_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `question`,
  ADD COLUMN `flag` INT NOT NULL DEFAULT 0 AFTER `create_time`;
  */