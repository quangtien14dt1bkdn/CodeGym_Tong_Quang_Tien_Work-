select * 
from nhanvien
where (HoTen like 'H%' or HoTen like 'T%' or HoTen like 'K%')  and length(HoTen)<=15;

/*Hien thi khach hang co que quan Da Nang hoac Quang Tri  va co tuoi tu 18 den 50*/
select * from khachhang
where (year(now())- year(ngaysinh)) between 18 and 50 and (diachi='DN'or diachi = 'QT');

-- 4.	Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
select khachhang.HoTen,count(*) as SoLanDatPhong
from (hopdong  join khachhang  on hopdong.IDKhachHang=khachhang.IDKhachHang) join loaikhach  on loaikhach.IDLoaiKhach=khachhang.IDLoaiKhach
where loaikhach.TenLoaiKhach='Diamond'
group by khachhang.HoTen
order by SoLanDatPhong;

-- 5.	Hiển thị IDKhachHang, HoTen, TenLoaiKhach, IDHopDong, TenDichVu, NgayLamHopDong, NgayKetThuc, TongTien (Với TongTien được tính theo công thức như sau: ChiPhiThue + SoLuong*Gia, với SoLuong và Giá là từ bảng DichVuDiKem) cho tất cả các Khách hàng đã từng đặt phỏng. (Những Khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
select a.IDKhachHang,a.HoTen,b.IDHopDong,b.NgayLamHopDong,b.NgayKetThuc,(c.ChiPhiThue+d.SoLuong*e.Gia) as TongTien
from (((khachhang a left join hopdong b on a.IDKhachHang=b.IDKhachHang) left join dichvu c on c.IDDichvu=b.IDDichvu)left join hopdongchitiet d
      on d.IDHopDong=b.IDHopDong) left join dichvudikem e on e.IDDichVuDiKem=d.IDDichVuDiKem  ;

-- 6 6.	Hiển thị IDDichVu, TenDichVu, DienTich, ChiPhiThue, TenLoaiDichVu của tất cả các loại Dịch vụ chưa từng được Khách hàng thực hiện đặt từ quý 1 của năm 2019 (Quý 1 là tháng 1, 2, 3).
select IDDichVu,TenDichVu,DienTich,ChiPhiThue,TenLoaiDichVu
 from dichvu dv,loaidichvu ldv
 where dv.IDLoaiDichVu=ldv.IDLoaiDichVu  
and (IDDichVu not in (select IDDichVu from hopdong ) or (IDDichVu  in(select IDDichVu from hopdong where year(NgayLamHopDong)=2018))and(IDDichVu not in(select IDDichVu from hopdong where year(NgayLamHopDong)=2019)));


-- 7.7.	Hiển thị thông tin IDDichVu, TenDichVu, DienTich, SoNguoiToiDa, ChiPhiThue, TenLoaiDichVu của tất cả các loại dịch vụ đã từng được Khách hàng đặt phòng trong năm 2018 nhưng chưa từng được Khách hàng đặt phòng  trong năm 2019.
select IDDichVu,TenDichVu,DienTich,ChiPhiThue,TenLoaiDichVu
from dichvu dv,loaidichvu ldv
where (IDDichVu in(select IDDichVu from hopdong where NgayLamHopDong between '2018-01-01'and '2018-12-31'))
and (IDDichVu not in(select IDDichvu from hopdong where year(NgayLamHopDong)=2019))
and dv.IDLoaiDichVu=ldv.IDLoaiDichVu;

-- 8.	Hiển thị thông tin HoTenKhachHang có trong hệ thống, với yêu cầu HoTenKhachHang không trùng nhau.
select distinct hoten 
from khachhang;

-- 9.	Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2019 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.
select month(ngaylamhopdong) as thang , count(month(ngaylamhopdong)) as sokhachlamhopdong
from hopdong
where year(ngaylamhopdong ) =2019
group by thang
order by thang;

-- 10.	Hiển thị thông tin tương ứng với từng Hợp đồng thì đã sử dụng bao nhiêu Dịch vụ đi kèm. Kết quả hiển thị bao gồm IDHopDong, NgayLamHopDong, NgayKetthuc, TienDatCoc, SoLuongDichVuDiKem (được tính dựa trên việc count các IDHopDongChiTiet).
select a.IDHopDong,NgayLamHopDong,NgayKetThuc,TienDatCoc,SoLuong
from hopdong a,hopdongchitiet b
where a.IDHopDong=b.IDHopDong;


-- 11.	Hiển thị thông tin các Dịch vụ đi kèm đã được sử dụng bởi những Khách hàng có TenLoaiKhachHang là “Diamond” và có địa chỉ là “Vinh” hoặc “Quảng Ngãi”.
select *
from dichvudikem
where IDDichVuDiKem IN (select IDDichVuDiKem
                        from hopdongchitiet
                        where IDHopDong IN(select IDHopDong from hopdong where IDKhachHang IN(select IDKhachHang from khachhang a,loaikhach b
                                                                where (a.IDLoaiKhach=b.IDLoaiKhach) and ((b.TenLoaiKhach='Diamond') and (a.DiaChi='Vinh' or a.DiaChi='Quảng Ngãi'))))) ;
 -- 12. tat ca cac bang , dieu kien chi den ID dichvu
select hopdong.IDHopDong , nhanvien.hoten as tennhanvien, khachhang.HoTen as tenkhachhang,khachhang.SDT as SDT_khachhhang,tendichvu,hopdongchitiet.soluong as soluongdikem
from (((hopdong join nhanvien on hopdong.IDNhanVien=nhanvien.IDNhanVien) join khachhang on hopdong.IDKhachHang = khachhang.IDKhachHang)
join dichvu on hopdong.IDDichVu = dichvu.IDDichVu) join hopdongchitiet on hopdong.IDHopDong=hopdongchitiet.IDHopDong
where(hopdong.IDDichVu in(select dichvu.IDDichVu where(hopdong.IDDichVu = dichvu.IDDichVu) and ((month(NgayLamHopDong) in(10,11,12))and (year(NgayLamHopDong)=2019)))
and(hopdong.IDDichVu not in (select dichvu.IDDichVu where(hopdong.IDDichVu=dv.IDDichVu)and(month(ngaylamhopdong) in(1,2,3,4,5,6) and year(ngaylamhopdong)=2019))));

-- 13 Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng.
select *
 from dichvudikem
 where IDDichVuDiKem in(select IDDichVuDiKem from(
											select IDDichVuDiKem,count(IDDichVuDiKem) as SL from hopdongchitiet
											group by IDDichVuDiKem
											having SL= (select max(soluongDV)from(
													select IDDichVuDiKem,count(*) as soluongDV from hopdongchitiet group by IDDichVuDiKem) as S)) as B);
-- 14.	Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. Thông tin hiển thị bao gồm IDHopDong, TenLoaiDichVu, TenDichVuDiKem, SoLanSuDung.
select hd.IDHopDong,ldv.TenLoaiDichVu,TenDichVuDiKem
from (((hopdong hd join dichvu dv on hd.IDDichVu=dv.IDDichVu) join loaidichvu ldv on ldv.IDLoaiDichvu=dv.IDLoaiDichVu) 
      join hopdongchitiet hdct on hdct.IDHopDong=hd.IDHopDong)join dichvudikem dvdk on dvdk.IDDichVuDiKem=hdct.IDDichVuDiKem
where
   hdct.IDDichVuDiKem in(select IDDichVuDiKem
                    from hopdongchitiet
                    group by IDDichVuDiKem
                    having count(IDDichVuDiKem)=1);
                    
-- 	15.	Hiển thi thông tin của tất cả nhân viên bao gồm IDNhanVien, HoTen, TrinhDo, TenBoPhan, SoDienThoai, DiaChi mới chỉ lập được tối đa 3 hợp đồng từ năm 2018 đến 2019.
select nv.IDNhanVien,HoTen,td.TrinhDo,bp.TenBoPhan,nv.SDT as SoDienThoai,DiaChi 
from ((nhanvien nv join bophan bp on nv.IDBoPhan=bp.IDBoPhan) join hopdong hd on hd.IDNhanVien=nv.IDNhanVien)join trinhdo td on nv.IDTrinhDo=td.IDTrinhDo
where 
     hd.IDNhanVien in (select IDNhanVien
                       from
                       (select IDNhanVien,count(*) as SLNV
					    from hopdong
						where
                             year(NgayLamHopDong) between 2018 and 2019
						     group by IDNhanVien
						      Having SLNV<=3) as B1)
                            group by IDNhanVien ;
-- 16 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2017 đến năm 2019.
SET SQL_SAFE_UPDATES=0;  
delete from nhanvien  where IDNhanVien not in (select IDNhanVien
                                        from hopdong 
                                        where year(NgayLamHopDong) between 2017 and 2019 );
 SET SQL_SAFE_UPDATES=1; 
 -- 17