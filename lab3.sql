DROP TABLE IF EXISTS Article;
DROP TABLE IF EXISTS User;

CREATE TABLE IF NOT EXISTS user (
  userID INT(11) NOT NULL AUTO_INCREMENT,
  username VARCHAR(50) NOT NULL,
  password VARCHAR(50) NOT NULL,
  email VARCHAR(100) DEFAULT NULL,
  phone VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (UserID)
);

INSERT INTO user (userID, username, password, email, phone) VALUES
  (1, 'kaiyudai', '12345678', 'kydai@fudan.edu.cn', '13666666666'),
  (2, 'fanliu', '12345678', 'liufan@fudan.edu.cn', '13888888888'),
  (3, 'xingyuzhang', '12345678', NULL, NULL);
# 基础镜像使用Java
FROM java:8
# 作者
MAINTAINER lr
# VOLUME 指定了临时文件目录为/tmp。
# 其效果是在主机 /var/lib/docker 目录下创建了一个临时文件，并链接到容器的/tmp
VOLUME /tmp
# 将jar包添加到容器中并更名为app.jar
ADD demo-pmsd.jar app.jar
# 运行jar包
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
# 指定容器需要映射到主机的端口
EXPOSE 8080
--------------------- 
作者：弦上的梦 
来源：CSDN 
原文：https://blog.csdn.net/qq_34997906/article/details/83094767 
版权声明：本文为博主原创文章，转载请附上博文链接！