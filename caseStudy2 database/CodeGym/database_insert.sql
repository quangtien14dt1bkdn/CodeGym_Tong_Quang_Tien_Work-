insert into vitri(idvitri,tenvitri)  values
(1,'dontiep'),
(2,'buongphong'),
(3,'nhahang'),
(4,'ketoan'),
(5,'nhansu'),
(6,'kithuat'),
(7,'baove'),
(8,'banhang');
insert into trinhdo(idtrinhdo,trinhdo)  values
(1,'daihoc'),
(2,'caodang'),
(3,'trungcap'),
(4,'phothong');
insert into bophan(idbophan,tenbophan) values(1,'sale'),(2,'marketing'),(3,'technical');
insert into nhanvien (hoten,idvitri,idtrinhdo,idbophan,ngaysinh,socmtnd,luong,sdt,email,diachi)values
('Bui Thi Duyen',1,2,1,'2014-1-6','23317654',2000000,935225725,'laiphuocan95@gmail.com','DN'),
('Nguyen Dinh Duy',1,1,2,'2017-2-14','11852470',1000000,935860528,'nguyentrunganh@gmail.com','DN'),
('Hoang Ngoc Thien',2,4,3,'2013-8-8','13410073',8000000,905123390,'supertna9x@gmail.com','QN'),
('Truong Thi Thuy Nhung',3,4,1,'2018-2-3','11938059',5000000,969926961,'damngod_9x@yahoo.com','QT'),
('Nguyen Thi Bich Chau',4,2,2,'2017-3-14','11440965',4000000,986514978,'ducsuperomen@gmail.com','H'),
('Tran Thi Tham',4,3,3,'2016-12-13','191372515',3000000,965067785,'nguyenlongthanh94@gmail.com','QT'),
('Le Thi Thao',6,4,1,'1998-11-8','200054192',2500000,905951250,'pompomhero@gmail.com','HN'),
('Hoang Bao Qui',5,4,2,'1996-3-3','121630654',2500000,935554774,'minhanhnguyen0310@gmail.com','SG')
;
insert into loaikhach(idloaikhach,tenloaikhach) values
(1,'diamond'),
(2,'platinum'),
(3,'gold'),
(4,'silver'),
(5,'menber');
insert into khachhang(idloaikhach,hoten,ngaysinh,socmtnd,sdt,email,diachi) values 
(1,'Lê Mạnh Thắng','1997-12-1','145389330','935447007','nnbphuong@hcmut.edu.vn','DN'),
(2,'Phan Thanh Xuân','1992-1-1','187078242','775522687','thuylinhpmt@gmail.com','QN'),
(3,'Nguyễn Như Hữu','1980-2-2','201662076','935892800','thuyhang@isb.edu.vn','H'),
(3,'Nguyễn Đình Chinh','1990-12-1','212746305','906573034','trung.nguyen@oude.edu.vn','HN'),
(2,'Nguyễn Trường Giang','2000-2-2','201795218','934654635','mltr99@gmail.com','SG'),
(5,'Nguyễn Ngọc Linh','1996-3-3','245355090','359174376','sulh@uel.edu.vn','TH'),
(4,'Bùi Quang Cường','2002-8-2','201822949','899912286','tuan.nguyen@icine.vn','NB'),
(3,'Nguyễn Hữu Hùng','1992-4-1','201793728','985360701','xthuy64@gmail.com','QN');
insert into kieuthue (idkieuthue,tenkieuthue,gia) values (1,'nam',360),(2,'thang',30),(3,'ngay',1),(4,'gio',.1);
insert into loaidichvu(idloaidichvu,tenloaidichvu) values (1,'villa'),(2,'house'),(3,'room');
insert into dichvu(tendichvu,dientich,sotang,songuoitoida,chiphithue,idkieuthue,idloaidichvu,trangthai) values
('house1',100,2,5,500,1,2,'hoanthanh'),
('villa1',200,2,3,400,1,2,'hoanthanh'),
('room1',300,3,1,400,1,2,'hoanthanh'),
('villa3',200,2,3,400,1,2,'hoanthanh');
insert into dichvudikem(iddichvudikem, tendichvudikem,gia,donvi,trangthaikhadung) values
(1,'massage',300,1,'con'),
(2,'karaoke',300,1,'con'),
(3,'food',300,1,'con'),
(4,'car',300,1,'con');
 insert into hopdong(idnhanvien,idkhachhang,iddichvu,ngaylamhopdong,ngayketthuc,tiendatcoc,tongtien)values
(1,1,1,null,null,20000,100000),
(2,2,2,null,null,20000,100000),
(3,2,3,null,null,20000,100000);