use dulich;

insert into role(mavaitro,vaitro) values('ADMIN','Quản trị');
insert into role(mavaitro,vaitro) values('USER','Người dùng');

insert into user(username,password,hoten,email,diachi,trangthai)
values('admin','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Lê Văn Minh','leminh3214789@gmail.com','Đà nẵng',1);
insert into user(username,password,hoten,email,diachi,trangthai)
values('levana','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Lê Văn A','alevan@gmail.com','Hải Châu, Đà Nẵng',1);
insert into user(username,password,hoten,email,diachi,trangthai)
values('levanb','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG','Lê Văn B','blevan@gmail.com','Hải Châu, Đà Nẵng',1);

INSERT INTO user_role(userid,roleid) VALUES (1,1);
INSERT INTO user_role(userid,roleid) VALUES (2,2);
INSERT INTO user_role(userid,roleid) VALUES (3,2);S