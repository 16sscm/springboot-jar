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
# ��������ʹ��Java
FROM java:8
# ����
MAINTAINER lr
# VOLUME ָ������ʱ�ļ�Ŀ¼Ϊ/tmp��
# ��Ч���������� /var/lib/docker Ŀ¼�´�����һ����ʱ�ļ��������ӵ�������/tmp
VOLUME /tmp
# ��jar����ӵ������в�����Ϊapp.jar
ADD demo-pmsd.jar app.jar
# ����jar��
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
# ָ��������Ҫӳ�䵽�����Ķ˿�
EXPOSE 8080
--------------------- 
���ߣ����ϵ��� 
��Դ��CSDN 
ԭ�ģ�https://blog.csdn.net/qq_34997906/article/details/83094767 
��Ȩ����������Ϊ����ԭ�����£�ת���븽�ϲ������ӣ�