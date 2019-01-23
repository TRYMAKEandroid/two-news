SET NAMES UTF8;
DROP DATABASE IF  EXISTS two ;
CREATE DATABASE two CHARSET=UTF8;
USE two;
CREATE TABLE kind(
    kid INT PRIMARY KEY,
    kname VARCHAR(32)
);
INSERT INTO kind VALUES(1,'ONESTARY');
INSERT INTO kind VALUES(2,'恋爱课');
INSERT INTO kind VALUES(3,'连载');
INSERT INTO kind VALUES(4,'问答');
INSERT INTO kind VALUES(5,'音乐');
INSERT INTO kind VALUES(6,'影视');

CREATE TABLE news(
    nid INT PRIMARY KEY AUTO_INCREMENT,
    kid INT ,
    title VARCHAR(128),
    img_url VARCHAR(256),
    author VARCHAR(32),
    content VARCHAR(100000),
    ntime DATETIME,
    lovecount INT
);
INSERT INTO news VALUES(null,1,'喀喀喀卡卡卡卡卡','http://123456789qwerty.png','xiaobu','qwertyuiiuytrewqasertyjkerty','2018-1-1',400);
INSERT INTO news VALUES(null,1,'喀喀喀卡卡卡卡卡','http://123456789qwerty.png','xiaobu','qwertyuiiuytrewqasertyjkerty','2018-1-1',400);
INSERT INTO news VALUES(null,1,'喀喀喀卡卡卡卡卡','http://123456789qwerty.png','xiaobu','qwertyuiiuytrewqasertyjkerty','2018-1-1',400);
INSERT INTO news VALUES(null,1,'喀喀喀卡卡卡卡卡','http://123456789qwerty.png','xiaobu','qwertyuiiuytrewqasertyjkerty','2018-1-1',400);
INSERT INTO news VALUES(null,1,'喀喀喀卡卡卡卡卡','http://123456789qwerty.png','xiaobu','qwertyuiiuytrewqasertyjkerty','2018-1-1',400);
INSERT INTO news VALUES(null,1,'喀喀喀卡卡卡卡卡','http://123456789qwerty.png','xiaobu','qwertyuiiuytrewqasertyjkerty','2018-1-1',400);
INSERT INTO news VALUES(null,1,'喀喀喀卡卡卡卡卡','http://123456789qwerty.png','xiaobu','qwertyuiiuytrewqasertyjkerty','2018-1-1',400);

CREATE TABLE comm(
    mid INT PRIMARY KEY AUTO_INCREMENT,
    nid INT,
    content VARCHAR(10000),
    zancount INT,
    mtime DATETIME
);
INSERT INTO comm VALUES(null,1,'12345678iuytrewsdfghjjhgfdsdfghjkl',1234,'2018-1-1');
INSERT INTO comm VALUES(null,1,'12345678iuytrewsdfghjjhgfdsdfghjkl',1234,'2018-1-1');
INSERT INTO comm VALUES(null,1,'12345678iuytrewsdfghjjhgfdsdfghjkl',1234,'2018-1-1');
INSERT INTO comm VALUES(null,1,'12345678iuytrewsdfghjjhgfdsdfghjkl',1234,'2018-1-1');
INSERT INTO comm VALUES(null,1,'12345678iuytrewsdfghjjhgfdsdfghjkl',1234,'2018-1-1');
INSERT INTO comm VALUES(null,1,'12345678iuytrewsdfghjjhgfdsdfghjkl',1234,'2018-1-1');


CREATE TABLE log_in(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    pwd VARCHAR(32)
);
INSERT INTO log_in VALUES(null,'halloworld1',md5('123456'));
INSERT INTO log_in VALUES(null,'halloworld2',md5('123456'));
INSERT INTO log_in VALUES(null,'halloworld3',md5('123456'));
INSERT INTO log_in VALUES(null,'halloworld4',md5('123456'));
INSERT INTO log_in VALUES(null,'halloworld5',md5('123456'));

