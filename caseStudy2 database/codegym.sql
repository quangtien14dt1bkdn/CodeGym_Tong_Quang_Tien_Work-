drop database if exists furama_resort;
create database furama_resort;
use furama_resort;
create table ViTri(
	IDViTri int primary key ,
	TenViTri varchar(45) 
);
create table TrinhDo(
	IDTrinhDo int primary key ,
    TrinhDo varchar(45) 
);
create table BoPhan(
	IDBoPhan int  primary key ,
    TenBoPhan varchar(45)
);
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
create table LoaiKhach(
	IDLoaiKhach int primary key  ,
    TenLoaiKhach varchar(45)
);
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
create table KieuThue(
	IDKieuThue int primary key ,
    TenKieuThue varchar(45),
    Gia float
);
create table LoaiDichVu(
	IDLoaiDichVu int primary key ,
    TenLoaiDichVu varchar(45)
);
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

create table DichVuDiKem(
		IDDichVuDiKem int primary key,
        TenDichVuDiKem varchar(45) ,
        Gia int ,
        DonVi int ,
        TrangThaiKhaDung varchar(45)
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

