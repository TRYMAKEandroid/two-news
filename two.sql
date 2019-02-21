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
    kid INT,
    title VARCHAR(128),
    img_url VARCHAR(256),
    author VARCHAR(32),
    content VARCHAR(100000),
    ntime DATE,
    lovecount INT
);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-2-1',400);



INSERT INTO news VALUES(null,2,'冰川纪元','http://127.0.0.1:3000/kind_img/loveclass.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,2,'冰川纪元','http://127.0.0.1:3000/kind_img/loveclass.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-1-2',400);
INSERT INTO news VALUES(null,2,'冰川纪元','http://127.0.0.1:3000/kind_img/loveclass.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-2-3',400);
INSERT INTO news VALUES(null,2,'冰川纪元','http://127.0.0.1:3000/kind_img/loveclass.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-3-4',400);
INSERT INTO news VALUES(null,2,'冰川纪元','http://127.0.0.1:3000/kind_img/loveclass.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-4-5',400);
INSERT INTO news VALUES(null,2,'冰川纪元','http://127.0.0.1:3000/kind_img/loveclass.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-5-6',400);
INSERT INTO news VALUES(null,2,'冰川纪元','http://127.0.0.1:3000/kind_img/loveclass.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-6-7',400);


INSERT INTO news VALUES(null,3,'冰川纪元','http://127.0.0.1:3000/kind_img/text.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,3,'冰川纪元','http://127.0.0.1:3000/kind_img/text.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-1-2',400);
INSERT INTO news VALUES(null,3,'冰川纪元','http://127.0.0.1:3000/kind_img/text.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-2-3',400);
INSERT INTO news VALUES(null,3,'冰川纪元','http://127.0.0.1:3000/kind_img/text.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-3-4',400);
INSERT INTO news VALUES(null,3,'冰川纪元','http://127.0.0.1:3000/kind_img/text.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-4-5',400);
INSERT INTO news VALUES(null,3,'冰川纪元','http://127.0.0.1:3000/kind_img/text.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-5-6',400);
INSERT INTO news VALUES(null,3,'冰川纪元','http://127.0.0.1:3000/kind_img/text.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-6-7',400);


INSERT INTO news VALUES(null,4,'冰川纪元','http://127.0.0.1:3000/kind_img/question.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,4,'冰川纪元','http://127.0.0.1:3000/kind_img/question.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-3-2',400);
INSERT INTO news VALUES(null,4,'冰川纪元','http://127.0.0.1:3000/kind_img/question.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-4-3',400);
INSERT INTO news VALUES(null,4,'冰川纪元','http://127.0.0.1:3000/kind_img/question.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-5-4',400);
INSERT INTO news VALUES(null,4,'冰川纪元','http://127.0.0.1:3000/kind_img/question.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-6-5',400);
INSERT INTO news VALUES(null,4,'冰川纪元','http://127.0.0.1:3000/kind_img/question.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-7-6',400);
INSERT INTO news VALUES(null,4,'冰川纪元','http://127.0.0.1:3000/kind_img/question.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-8-7',400);


INSERT INTO news VALUES(null,5,'冰川纪元','http://127.0.0.1:3000/kind_img/music.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,5,'冰川纪元','http://127.0.0.1:3000/kind_img/music.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-9-2',400);
INSERT INTO news VALUES(null,5,'冰川纪元','http://127.0.0.1:3000/kind_img/music.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-11-3',400);
INSERT INTO news VALUES(null,5,'冰川纪元','http://127.0.0.1:3000/kind_img/music.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-10-4',400);
INSERT INTO news VALUES(null,5,'冰川纪元','http://127.0.0.1:3000/kind_img/music.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-6-5',400);
INSERT INTO news VALUES(null,5,'冰川纪元','http://127.0.0.1:3000/kind_img/music.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-3-6',400);
INSERT INTO news VALUES(null,5,'冰川纪元','http://127.0.0.1:3000/kind_img/music.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-1-7',400);


INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-4-2',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-2-3',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-5-4',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-6-5',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-7-6',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-8-7',400);

-- 
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2017-8-7',400);


INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-4-2',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-2-3',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-5-4',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-6-5',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-7-6',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-8-7',400);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);


INSERT INTO news VALUES(null,2,'冰川纪元','http://127.0.0.1:3000/kind_img/loveclass.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,2,'冰川纪元','http://127.0.0.1:3000/kind_img/loveclass.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-1-2',400);
INSERT INTO news VALUES(null,2,'冰川纪元','http://127.0.0.1:3000/kind_img/loveclass.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-2-3',400);
INSERT INTO news VALUES(null,2,'冰川纪元','http://127.0.0.1:3000/kind_img/loveclass.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-3-4',400);
INSERT INTO news VALUES(null,2,'冰川纪元','http://127.0.0.1:3000/kind_img/loveclass.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-4-5',400);
INSERT INTO news VALUES(null,2,'冰川纪元','http://127.0.0.1:3000/kind_img/loveclass.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-5-6',400);
INSERT INTO news VALUES(null,2,'冰川纪元','http://127.0.0.1:3000/kind_img/loveclass.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-6-7',400);


INSERT INTO news VALUES(null,3,'冰川纪元','http://127.0.0.1:3000/kind_img/text.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,3,'冰川纪元','http://127.0.0.1:3000/kind_img/text.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-1-2',400);
INSERT INTO news VALUES(null,3,'冰川纪元','http://127.0.0.1:3000/kind_img/text.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-2-3',400);
INSERT INTO news VALUES(null,3,'冰川纪元','http://127.0.0.1:3000/kind_img/text.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-3-4',400);
INSERT INTO news VALUES(null,3,'冰川纪元','http://127.0.0.1:3000/kind_img/text.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-4-5',400);
INSERT INTO news VALUES(null,3,'冰川纪元','http://127.0.0.1:3000/kind_img/text.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-5-6',400);
INSERT INTO news VALUES(null,3,'冰川纪元','http://127.0.0.1:3000/kind_img/text.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-6-7',400);


INSERT INTO news VALUES(null,4,'冰川纪元','http://127.0.0.1:3000/kind_img/question.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,4,'冰川纪元','http://127.0.0.1:3000/kind_img/question.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-3-2',400);
INSERT INTO news VALUES(null,4,'冰川纪元','http://127.0.0.1:3000/kind_img/question.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-4-3',400);
INSERT INTO news VALUES(null,4,'冰川纪元','http://127.0.0.1:3000/kind_img/question.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-5-4',400);
INSERT INTO news VALUES(null,4,'冰川纪元','http://127.0.0.1:3000/kind_img/question.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-6-5',400);
INSERT INTO news VALUES(null,4,'冰川纪元','http://127.0.0.1:3000/kind_img/question.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-7-6',400);
INSERT INTO news VALUES(null,4,'冰川纪元','http://127.0.0.1:3000/kind_img/question.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-8-7',400);


INSERT INTO news VALUES(null,5,'冰川纪元','http://127.0.0.1:3000/kind_img/music.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,5,'冰川纪元','http://127.0.0.1:3000/kind_img/music.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-9-2',400);
INSERT INTO news VALUES(null,5,'冰川纪元','http://127.0.0.1:3000/kind_img/music.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-11-3',400);
INSERT INTO news VALUES(null,5,'冰川纪元','http://127.0.0.1:3000/kind_img/music.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-10-4',400);
INSERT INTO news VALUES(null,5,'冰川纪元','http://127.0.0.1:3000/kind_img/music.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-6-5',400);
INSERT INTO news VALUES(null,5,'冰川纪元','http://127.0.0.1:3000/kind_img/music.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-3-6',400);
INSERT INTO news VALUES(null,5,'冰川纪元','http://127.0.0.1:3000/kind_img/music.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-1-7',400);


INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-4-2',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-2-3',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-5-4',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-6-5',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-7-6',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-8-7',400);
-- 



INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-4-2',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-2-3',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-5-4',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-6-5',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-7-6',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-8-7',400);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,1,'冰川纪元','http://127.0.0.1:3000/kind_img/onestory.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);


INSERT INTO news VALUES(null,2,'冰川纪元','http://127.0.0.1:3000/kind_img/loveclass.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,2,'冰川纪元','http://127.0.0.1:3000/kind_img/loveclass.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-1-2',400);
INSERT INTO news VALUES(null,2,'冰川纪元','http://127.0.0.1:3000/kind_img/loveclass.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-2-3',400);
INSERT INTO news VALUES(null,2,'冰川纪元','http://127.0.0.1:3000/kind_img/loveclass.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-3-4',400);
INSERT INTO news VALUES(null,2,'冰川纪元','http://127.0.0.1:3000/kind_img/loveclass.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-4-5',400);
INSERT INTO news VALUES(null,2,'冰川纪元','http://127.0.0.1:3000/kind_img/loveclass.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-5-6',400);
INSERT INTO news VALUES(null,2,'冰川纪元','http://127.0.0.1:3000/kind_img/loveclass.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-6-7',400);


INSERT INTO news VALUES(null,3,'冰川纪元','http://127.0.0.1:3000/kind_img/text.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,3,'冰川纪元','http://127.0.0.1:3000/kind_img/text.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-1-2',400);
INSERT INTO news VALUES(null,3,'冰川纪元','http://127.0.0.1:3000/kind_img/text.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-2-3',400);
INSERT INTO news VALUES(null,3,'冰川纪元','http://127.0.0.1:3000/kind_img/text.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-3-4',400);
INSERT INTO news VALUES(null,3,'冰川纪元','http://127.0.0.1:3000/kind_img/text.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-4-5',400);
INSERT INTO news VALUES(null,3,'冰川纪元','http://127.0.0.1:3000/kind_img/text.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-5-6',400);
INSERT INTO news VALUES(null,3,'冰川纪元','http://127.0.0.1:3000/kind_img/text.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-6-7',400);


INSERT INTO news VALUES(null,4,'冰川纪元','http://127.0.0.1:3000/kind_img/question.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,4,'冰川纪元','http://127.0.0.1:3000/kind_img/question.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-3-2',400);
INSERT INTO news VALUES(null,4,'冰川纪元','http://127.0.0.1:3000/kind_img/question.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-4-3',400);
INSERT INTO news VALUES(null,4,'冰川纪元','http://127.0.0.1:3000/kind_img/question.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-5-4',400);
INSERT INTO news VALUES(null,4,'冰川纪元','http://127.0.0.1:3000/kind_img/question.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-6-5',400);
INSERT INTO news VALUES(null,4,'冰川纪元','http://127.0.0.1:3000/kind_img/question.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-7-6',400);
INSERT INTO news VALUES(null,4,'冰川纪元','http://127.0.0.1:3000/kind_img/question.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-8-7',400);


INSERT INTO news VALUES(null,5,'冰川纪元','http://127.0.0.1:3000/kind_img/music.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,5,'冰川纪元','http://127.0.0.1:3000/kind_img/music.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-9-2',400);
INSERT INTO news VALUES(null,5,'冰川纪元','http://127.0.0.1:3000/kind_img/music.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-11-3',400);
INSERT INTO news VALUES(null,5,'冰川纪元','http://127.0.0.1:3000/kind_img/music.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-10-4',400);
INSERT INTO news VALUES(null,5,'冰川纪元','http://127.0.0.1:3000/kind_img/music.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-6-5',400);
INSERT INTO news VALUES(null,5,'冰川纪元','http://127.0.0.1:3000/kind_img/music.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-3-6',400);
INSERT INTO news VALUES(null,5,'冰川纪元','http://127.0.0.1:3000/kind_img/music.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-1-7',400);


INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-4-2',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-2-3',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-5-4',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-6-5',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-7-6',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-8-7',400);
-- 



INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.',now(),400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-4-2',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-2-3',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-5-4',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-6-5',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-7-6',400);
INSERT INTO news VALUES(null,6,'冰川纪元','http://127.0.0.1:3000/kind_img/movie.jpg','xiaobu','保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们,保护我所爱的一切，亲近他们，善待他们，最后珍惜他们.','2018-8-7',400);
-- INSERT INTO news VALUES(null,1,'喀喀喀卡卡卡卡卡','http://123456789qwerty.png','xiaobu','qwertyuiiuytrewqasertyjkerty','2018-1-2',400);
-- INSERT INTO news VALUES(null,1,'喀喀喀卡卡卡卡卡','http://123456789qwerty.png','xiaobu','qwertyuiiuytrewqasertyjkerty','2018-1-3',400);
-- INSERT INTO news VALUES(null,1,'喀喀喀卡卡卡卡卡','http://123456789qwerty.png','xiaobu','qwertyuiiuytrewqasertyjkerty','2018-1-4',400);
-- INSERT INTO news VALUES(null,1,'喀喀喀卡卡卡卡卡','http://123456789qwerty.png','xiaobu','qwertyuiiuytrewqasertyjkerty','2018-1-5',400);
-- INSERT INTO news VALUES(null,1,'喀喀喀卡卡卡卡卡','http://123456789qwerty.png','xiaobu','qwertyuiiuytrewqasertyjkerty','2018-1-6',400);
-- INSERT INTO news VALUES(null,1,'喀喀喀卡卡卡卡卡','http://123456789qwerty.png','xiaobu','qwertyuiiuytrewqasertyjkerty','2018-1-7',400);



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

CREATE TABLE dateY(
    yid INT PRIMARY KEY AUTO_INCREMENT,
    yname INT
);
INSERT INTO dateY VALUES(null,2011);
INSERT INTO dateY VALUES(null,2012);
INSERT INTO dateY VALUES(null,2013);
INSERT INTO dateY VALUES(null,2014);
INSERT INTO dateY VALUES(null,2015);

CREATE TABLE dateM(
    mid INT PRIMARY KEY AUTO_INCREMENT,
    yid INT,
    mname INT
);
INSERT INTO dateM VALUES(null,1,1);
INSERT INTO dateM VALUES(null,1,2);
INSERT INTO dateM VALUES(null,1,3);
INSERT INTO dateM VALUES(null,1,4);
INSERT INTO dateM VALUES(null,1,5);
INSERT INTO dateM VALUES(null,1,6);
INSERT INTO dateM VALUES(null,1,7);
INSERT INTO dateM VALUES(null,1,8);
INSERT INTO dateM VALUES(null,1,9);
INSERT INTO dateM VALUES(null,1,10);
INSERT INTO dateM VALUES(null,1,11);
INSERT INTO dateM VALUES(null,1,12);


INSERT INTO dateM VALUES(null,2,6);
INSERT INTO dateM VALUES(null,2,7);
INSERT INTO dateM VALUES(null,2,8);
INSERT INTO dateM VALUES(null,2,9);
INSERT INTO dateM VALUES(null,2,10);
INSERT INTO dateM VALUES(null,2,11);
INSERT INTO dateM VALUES(null,2,12);

CREATE TABLE dateD(
    did INT PRIMARY KEY AUTO_INCREMENT,
    mid INT,
    dname INT
);
INSERT INTO dateD VALUES(null,1,1);
INSERT INTO dateD VALUES(null,1,2);
INSERT INTO dateD VALUES(null,1,3);
INSERT INTO dateD VALUES(null,1,4);
INSERT INTO dateD VALUES(null,1,5);
INSERT INTO dateD VALUES(null,1,6);
INSERT INTO dateD VALUES(null,1,7);
INSERT INTO dateD VALUES(null,1,8);
INSERT INTO dateD VALUES(null,1,9);
INSERT INTO dateD VALUES(null,1,10);
INSERT INTO dateD VALUES(null,1,11);
INSERT INTO dateD VALUES(null,1,12);