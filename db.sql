DROP DATABASE IF EXISTS app20230508__dev;
CREATE DATABASE app20230508__dev;
USE app20230508__dev;

CREATE TABLE `member` (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    createDate DATETIME NOT NULL,
    modifyDate DATETIME NOT NULL,
    username CHAR(30) UNIQUE NOT NULL,
    `password` VARCHAR(100) NOT NULL,
    nickname CHAR(50) NOT NULL
);

INSERT INTO `member`
SET createDate = NOW(),
modifyDate = NOW(),
username = 'admin',
`password` = '1234',
nickname = '관리자';

INSERT INTO `member`
SET createDate = NOW(),
modifyDate = NOW(),
username = 'user1',
`password` = '1234',
nickname = 'user1';

INSERT INTO `member`
SET createDate = NOW(),
modifyDate = NOW(),
username = 'user2',
`password` = '1234',
nickname = 'user2';

CREATE TABLE `article` (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    createDate DATETIME NOT NULL,
    modifyDate DATETIME NOT NULL,
    title VARCHAR(100) NOT NULL,
    `body` LONGTEXT NOT NULL,
    memberId INT UNSIGNED NOT NULL
);

INSERT INTO `article`
SET createDate = NOW(),
modifyDate = NOW(),
title = '제목 1',
`body` = '내용 1`',
memberId = 1;

INSERT INTO `article`
SET createDate = NOW(),
modifyDate = NOW(),
title = '제목 2',
`body` = '내용 2`',
memberId = 1;

INSERT INTO `article`
SET createDate = NOW(),
modifyDate = NOW(),
title = '제목 3',
`body` = '내용 3`',
memberId = 1;

INSERT INTO `article`
SET createDate = NOW(),
modifyDate = NOW(),
title = '제목 4',
`body` = '내용 4`',
memberId = 1;

INSERT INTO `article`
SET createDate = NOW(),
modifyDate = NOW(),
title = '제목 5',
`body` = '내용 5`',
memberId = 2;

INSERT INTO `article`
SET createDate = NOW(),
modifyDate = NOW(),
title = '제목 6',
`body` = '내용 6`',
memberId = 2;

SELECT * FROM `member`;
SELECT * FROM `article`;