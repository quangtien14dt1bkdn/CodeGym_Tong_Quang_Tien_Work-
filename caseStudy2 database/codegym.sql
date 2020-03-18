drop database if exists furama_resort;
create database furama_resort;
use furama_resort;

create table ViTri(
	IDViTri int primary key ,
	TenViTri varchar(45) 
);
insert into vitri(idvitri,tenvitri)  values(1,'dontiep'),(2,'buongphong'),(3,'nhahang'),(4,'ketoan'),(5,'nhansu'),(6,'kithuat'),(7,'baove'),(8,'banhang');
create table TrinhDo(
	IDTrinhDo int primary key ,
    TrinhDo varchar(45) 
);
insert into trinhdo(idtrinhdo,trinhdo)  values(1,'daihoc'),(2,'caodang'),(3,'trungcap'),(4,'phothong');
create table BoPhan(
	IDBoPhan int  primary key ,
    TenBoPhan varchar(45)
);
insert into bophan(idbophan,tenbophan) values(1,'sale'),(2,'marketing'),(3,'technical');

create table NhanVien(
	IDNhanVien int  primary key auto_increment,
	HoTen varchar(45),
	IDViTri int,
    foreign key(IDViTri) references ViTri(IDViTri),
    IDTrinhDo int,
    foreign key (IDTrinhDo) references TrinhDo(IDTrinhDO),
    IDBoPhan int,
    foreign key (IDBoPhan) references BoPhan(IDBoPhan),
    ngaysinh date null,
    soCMTND varchar(45) ,
    luong varchar(45)  ,
    SDT varchar(45) ,
    Email varchar(45) ,
    DiaChi varchar(45) 
);
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


create table LoaiKhach(
	IDLoaiKhach int primary key  ,
    TenLoaiKhach varchar(45)
);
insert into loaikhach(idloaikhach,tenloaikhach) values
(1,'diamond'),
(2,'platinum'),
(3,'gold'),
(4,'silver'),
(5,'menber');
create table KhachHang(
	IDKhachHang  int primary key auto_increment ,
    IDLoaiKhach int ,
    foreign key (IDLoaiKhach) references LoaiKhach(IDLoaiKhach),
    HoTen varchar(45) ,
    NgaySinh Date , 
    SoCMTND varchar(45) ,
    SDT varchar(45) ,
    Email varchar(45),
    DiaChi varchar(45)
);
insert into khachhang(idloaikhach,hoten,ngaysinh,socmtnd,sdt,email,diachi) values 
(1,'Lê Mạnh Thắng','1997-12-1','145389330','935447007','nnbphuong@hcmut.edu.vn','DN'),
(2,'Phan Thanh Xuân','1992-1-1','187078242','775522687','thuylinhpmt@gmail.com','QN'),
(3,'Nguyễn Như Hữu','1980-2-2','201662076','935892800','thuyhang@isb.edu.vn','H'),
(3,'Nguyễn Đình Chinh','1990-12-1','212746305','906573034','trung.nguyen@oude.edu.vn','HN'),
(2,'Nguyễn Trường Giang','2000-2-2','201795218','934654635','mltr99@gmail.com','SG'),
(5,'Nguyễn Ngọc Linh','1996-3-3','245355090','359174376','sulh@uel.edu.vn','TH'),
(4,'Bùi Quang Cường','2002-8-2','201822949','899912286','tuan.nguyen@icine.vn','NB'),
(3,'Nguyễn Hữu Hùng','1992-4-1','201793728','985360701','xthuy64@gmail.com','QN');


create table KieuThue(
	IDKieuThue int primary key ,
    TenKieuThue varchar(45),
    Gia float
);
insert into kieuthue (idkieuthue,tenkieuthue,gia) values (1,'nam',360),(2,'thang',30),(3,'ngay',1),(4,'gio',.1);
create table LoaiDichVu(
	IDLoaiDichVu int primary key ,
    TenLoaiDichVu varchar(45)
);
insert into loaidichvu(idloaidichvu,tenloaidichvu) values (1,'massage'),(2,'karaoke'),(3,'food'),(4,'thamquan');

create table DichVu(
	IDDichVu int primary key auto_increment, 
    TenDichVu varchar (45),
    DienTich int,
    SoTang int ,
    SoNguoiToiDa int,
    ChiPhiThue int,
    IDKieuThue int,
    foreign key (IDKieuThue) references KieuThue(IDKieuThue),
    IDLoaiDichVu int,
    foreign key (IDLoaiDichVu) references LoaiDichVu(IDLoaiDichVu),
    TrangThai varchar(45)
);
insert into dichvu(tendichvu,dientich,sotang,songuoitoida,chiphithue,idkieuthue,idloaidichvu,trangthai) values
('house',100,2,5,500,1,2,'hoanthanh'),
('villa',50,3,6,700,2,2,'hoanthanh'),
('house',100,2,4,500,3,3,'datcoc'),
('house',50,2,4,500,4,1,'datcoc'),
('room',200,1,2,200,2,4,'hoanthanh');

create table DichVuDiKem(
		IDDichVuDiKem int primary key,
        TenDichVuDiKem varchar(45) ,
        Gia int ,
        DonVi int ,
        TrangThaiKhachHang varchar(45)
);
create table HopDong(
	IDHopDong int primary key auto_increment ,
    IDNhanVien int ,
	foreign key (IDNhanVien) references NhanVien(IDNhanVien),
    IDKhachHang int ,
	foreign key (IDKhachHang) references KhachHang(IDKhachHang),
    IDDichVu int  ,
	foreign key (IDDichVu) references DichVu(IDDichVu),
    NgayLamHopDong Date,
    NgayKetThuc Date,
    TienDatCoc int,
    TongTien int
);
create table HopDongChiTiet(
	IDHopDongChiTiet int primary key auto_increment ,
	IDHopDong int ,
	foreign key (IDHopDong) references HopDong(IDHopDong),
	IDDichVuDiKem int ,
	foreign key (IDDichVuDiKem) references DichVuDiKem(IDDichVuDiKem),
	SoLuong int 
);

select * 
from nhanvien
where (HoTen like 'H%' or HoTen like 'T%' or HoTen like 'K%')  and length(HoTen)<=15;
/*Hien thi khach hang co que quan Da Nang hoac Quang Tri  va co tuoi tu 18 den 50*/

select * from khachhang
where (year(now())- year(ngaysinh)) between 18 and 50 and (diachi='DN'or diachi = 'QT');



