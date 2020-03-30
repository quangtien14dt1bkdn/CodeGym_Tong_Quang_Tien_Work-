-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: furama_resort
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bo_phan`
--

DROP TABLE IF EXISTS `bo_phan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bo_phan` (
  `id_bo_phan` int NOT NULL,
  `ten_bo_phan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_bo_phan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bo_phan`
--

LOCK TABLES `bo_phan` WRITE;
/*!40000 ALTER TABLE `bo_phan` DISABLE KEYS */;
/*!40000 ALTER TABLE `bo_phan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dich_vu`
--

DROP TABLE IF EXISTS `dich_vu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dich_vu` (
  `id_dich_vu` int NOT NULL AUTO_INCREMENT,
  `ten_dich_vu` varchar(45) DEFAULT NULL,
  `dien_tich` int DEFAULT NULL,
  `so_tang` int DEFAULT NULL,
  `so_nguoi_toi_da` int DEFAULT NULL,
  `chi_phi_thue` int DEFAULT NULL,
  `id_kieu_thue` int DEFAULT NULL,
  `id_loai_dich_vu` int DEFAULT NULL,
  `trang_thai` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_dich_vu`),
  KEY `id_kieu_thue` (`id_kieu_thue`),
  KEY `id_loai_dich_vu` (`id_loai_dich_vu`),
  CONSTRAINT `dich_vu_ibfk_1` FOREIGN KEY (`id_kieu_thue`) REFERENCES `kieu_thue` (`id_kieu_thue`),
  CONSTRAINT `dich_vu_ibfk_2` FOREIGN KEY (`id_loai_dich_vu`) REFERENCES `loai_dich_vu` (`id_loai_dich_vu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dich_vu`
--

LOCK TABLES `dich_vu` WRITE;
/*!40000 ALTER TABLE `dich_vu` DISABLE KEYS */;
/*!40000 ALTER TABLE `dich_vu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dich_vu_di_kem`
--

DROP TABLE IF EXISTS `dich_vu_di_kem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dich_vu_di_kem` (
  `id_dich_vu_di_kem` int NOT NULL,
  `ten_dich_vu_di_kem` varchar(45) DEFAULT NULL,
  `gia` int DEFAULT NULL,
  `don_vi` int DEFAULT NULL,
  `trnag_thai_kha_dung` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_dich_vu_di_kem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dich_vu_di_kem`
--

LOCK TABLES `dich_vu_di_kem` WRITE;
/*!40000 ALTER TABLE `dich_vu_di_kem` DISABLE KEYS */;
/*!40000 ALTER TABLE `dich_vu_di_kem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hop_dong`
--

DROP TABLE IF EXISTS `hop_dong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hop_dong` (
  `id_hop_dong` int NOT NULL AUTO_INCREMENT,
  `id_nhan_vien` int DEFAULT NULL,
  `id_khach_hang` int DEFAULT NULL,
  `id_dich_vu` int DEFAULT NULL,
  `ngay_lam_hop_dong` date DEFAULT NULL,
  `ngay_ket_thuc` date DEFAULT NULL,
  `tien_dat_coc` int DEFAULT NULL,
  `tong_tien` int DEFAULT NULL,
  PRIMARY KEY (`id_hop_dong`),
  KEY `id_nhan_vien` (`id_nhan_vien`),
  KEY `id_khach_hang` (`id_khach_hang`),
  KEY `id_dich_vu` (`id_dich_vu`),
  CONSTRAINT `hop_dong_ibfk_1` FOREIGN KEY (`id_nhan_vien`) REFERENCES `nhan_vien` (`id_nhan_vien`),
  CONSTRAINT `hop_dong_ibfk_2` FOREIGN KEY (`id_khach_hang`) REFERENCES `khach_hang` (`id_khach_hang`),
  CONSTRAINT `hop_dong_ibfk_3` FOREIGN KEY (`id_dich_vu`) REFERENCES `dich_vu` (`id_dich_vu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hop_dong`
--

LOCK TABLES `hop_dong` WRITE;
/*!40000 ALTER TABLE `hop_dong` DISABLE KEYS */;
/*!40000 ALTER TABLE `hop_dong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hop_dong_chi_tiet`
--

DROP TABLE IF EXISTS `hop_dong_chi_tiet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hop_dong_chi_tiet` (
  `id_hop_dong_chi_tiet` int NOT NULL AUTO_INCREMENT,
  `id_hop_dong` int DEFAULT NULL,
  `id_dich_vu_di_kem` int DEFAULT NULL,
  `so_luong` int DEFAULT NULL,
  PRIMARY KEY (`id_hop_dong_chi_tiet`),
  KEY `id_hop_dong` (`id_hop_dong`),
  KEY `id_dich_vu_di_kem` (`id_dich_vu_di_kem`),
  CONSTRAINT `hop_dong_chi_tiet_ibfk_1` FOREIGN KEY (`id_hop_dong`) REFERENCES `hop_dong` (`id_hop_dong`),
  CONSTRAINT `hop_dong_chi_tiet_ibfk_2` FOREIGN KEY (`id_dich_vu_di_kem`) REFERENCES `dich_vu_di_kem` (`id_dich_vu_di_kem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hop_dong_chi_tiet`
--

LOCK TABLES `hop_dong_chi_tiet` WRITE;
/*!40000 ALTER TABLE `hop_dong_chi_tiet` DISABLE KEYS */;
/*!40000 ALTER TABLE `hop_dong_chi_tiet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khach_hang`
--

DROP TABLE IF EXISTS `khach_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khach_hang` (
  `id_khach_hang` int NOT NULL AUTO_INCREMENT,
  `id_loai_khach` int DEFAULT NULL,
  `ho_ten` varchar(45) DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `so_cmtnd` varchar(45) DEFAULT NULL,
  `so_dien_thoai` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `dia_chi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_khach_hang`),
  KEY `id_loai_khach` (`id_loai_khach`),
  CONSTRAINT `khach_hang_ibfk_1` FOREIGN KEY (`id_loai_khach`) REFERENCES `loai_khach` (`id_loai_khach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khach_hang`
--

LOCK TABLES `khach_hang` WRITE;
/*!40000 ALTER TABLE `khach_hang` DISABLE KEYS */;
/*!40000 ALTER TABLE `khach_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kieu_thue`
--

DROP TABLE IF EXISTS `kieu_thue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kieu_thue` (
  `id_kieu_thue` int NOT NULL,
  `ten_kieu_thue` varchar(45) DEFAULT NULL,
  `gia` float DEFAULT NULL,
  PRIMARY KEY (`id_kieu_thue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kieu_thue`
--

LOCK TABLES `kieu_thue` WRITE;
/*!40000 ALTER TABLE `kieu_thue` DISABLE KEYS */;
/*!40000 ALTER TABLE `kieu_thue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai_dich_vu`
--

DROP TABLE IF EXISTS `loai_dich_vu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loai_dich_vu` (
  `id_loai_dich_vu` int NOT NULL,
  `ten_loai_dich_vu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_loai_dich_vu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai_dich_vu`
--

LOCK TABLES `loai_dich_vu` WRITE;
/*!40000 ALTER TABLE `loai_dich_vu` DISABLE KEYS */;
/*!40000 ALTER TABLE `loai_dich_vu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai_khach`
--

DROP TABLE IF EXISTS `loai_khach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loai_khach` (
  `id_loai_khach` int NOT NULL,
  `ten_loai_khach` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_loai_khach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai_khach`
--

LOCK TABLES `loai_khach` WRITE;
/*!40000 ALTER TABLE `loai_khach` DISABLE KEYS */;
/*!40000 ALTER TABLE `loai_khach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhan_vien`
--

DROP TABLE IF EXISTS `nhan_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhan_vien` (
  `id_nhan_vien` int NOT NULL AUTO_INCREMENT,
  `ho_ten` varchar(45) DEFAULT NULL,
  `id_vi_tri` int DEFAULT NULL,
  `id_trinh_do` int DEFAULT NULL,
  `id_bo_phan` int DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `so_cmtnd` varchar(45) DEFAULT NULL,
  `luong` varchar(45) DEFAULT NULL,
  `so_dien_thoai` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `dia_chi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_nhan_vien`),
  KEY `id_vi_tri` (`id_vi_tri`),
  KEY `id_trinh_do` (`id_trinh_do`),
  KEY `id_bo_phan` (`id_bo_phan`),
  CONSTRAINT `nhan_vien_ibfk_1` FOREIGN KEY (`id_vi_tri`) REFERENCES `vi_tri` (`id_vi_tri`),
  CONSTRAINT `nhan_vien_ibfk_2` FOREIGN KEY (`id_trinh_do`) REFERENCES `trinh_do` (`id_trinh_do`),
  CONSTRAINT `nhan_vien_ibfk_3` FOREIGN KEY (`id_bo_phan`) REFERENCES `bo_phan` (`id_bo_phan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhan_vien`
--

LOCK TABLES `nhan_vien` WRITE;
/*!40000 ALTER TABLE `nhan_vien` DISABLE KEYS */;
/*!40000 ALTER TABLE `nhan_vien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trinh_do`
--

DROP TABLE IF EXISTS `trinh_do`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trinh_do` (
  `id_trinh_do` int NOT NULL,
  `trinh_do` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_trinh_do`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trinh_do`
--

LOCK TABLES `trinh_do` WRITE;
/*!40000 ALTER TABLE `trinh_do` DISABLE KEYS */;
/*!40000 ALTER TABLE `trinh_do` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vi_tri`
--

DROP TABLE IF EXISTS `vi_tri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vi_tri` (
  `id_vi_tri` int NOT NULL,
  `ten_vi_tri` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_vi_tri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vi_tri`
--

LOCK TABLES `vi_tri` WRITE;
/*!40000 ALTER TABLE `vi_tri` DISABLE KEYS */;
/*!40000 ALTER TABLE `vi_tri` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-30 12:33:47
select * 
from nhan_vien
where (ho_ten like 'H%' or ho_ten like 'T%' or ho_ten like 'K%')  and length(ho_ten)<=15;

/*Hien thi khach hang co que quan Da Nang hoac Quang Tri  va co tuoi tu 18 den 50*/
select * from khach_hang
where (year(now())- year(ngay_sinh)) between 18 and 50 and (dia_chi='DN'or dia_chi = 'QT');

-- 4.	Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
select khach_hang.ho_ten,count(*) as so_lan_dat_phong
from (hop_dong  join khach_hang  on hop_dong.id_khach_hang=khach_hang.id_khach_hang) join loai_khach  on loai_khach.id_loai_khach=khach_hang.id_loai_khach
where loai_khach.ten_loai_khach='Diamond'
group by khach_hang.ho_ten
order by so_lan_dat_phong;

-- 5.	Hiển thị id_khach_hang, ho_ten, ten_loai_khach, id_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien (Với tong_tien được tính theo công thức như sau: chi_phi_thue + so_luong*gia, với so_luong và Giá là từ bảng dich_vu_di_kem) cho tất cả các Khách hàng đã từng đặt phỏng. (Những Khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
select a.id_khach_hang,a.ho_ten,b.id_hop_dong,b.ngay_lam_hop_dong,b.ngay_ket_thuc,(c.chi_phi_thue+d.so_luong*e.gia) as tong_tien
from (((khach_hang a left join hop_dong b on a.id_khach_hang=b.id_khach_hang) left join dich_vu c on c.id_dich_vu=b.id_dich_vu)left join hop_dong_chi_tiet d
      on d.id_hop_dong=b.id_hop_dong) left join dich_vu_di_kem e on e.id_dich_vu_di_kem=d.id_dich_vu_di_kem  ;

-- 6 6.	Hiển thị id_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu của tất cả các loại Dịch vụ chưa từng được Khách hàng thực hiện đặt từ quý 1 của năm 2019 (Quý 1 là tháng 1, 2, 3).
select id_dich_vu,ten_dich_vu,dien_tich,chi_phi_thue,ten_loai_dich_vu
 from dich_vu dv,loai_dich_vu ldv
 where dv.id_loai_dich_vu=ldv.id_loai_dich_vu  
and (id_dich_vu not in (select id_dich_vu from hop_dong ) or (id_dich_vu  in(select id_dich_vu from hop_dong where year(ngay_lam_hop_dong)=2018))and(id_dich_vu not in(select id_dich_vu from hop_dong where year(ngay_lam_hop_dong)=2019)));


-- 7.7.	Hiển thị thông tin id_dich_vu, ten_dich_vu, dien_tich, SoNguoiToiDa, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ đã từng được Khách hàng đặt phòng trong năm 2018 nhưng chưa từng được Khách hàng đặt phòng  trong năm 2019.
select id_dich_vu,ten_dich_vu,dien_tich,chi_phi_thue,ten_loai_dich_vu
from dich_vu dv,loai_dich_vu ldv
where (id_dich_vu in(select id_dich_vu from hop_dong where ngay_lam_hop_dong between '2018-01-01'and '2018-12-31'))
and (id_dich_vu not in(select id_dich_vu from hop_dong where year(ngay_lam_hop_dong)=2019))
and dv.id_loai_dich_vu=ldv.id_loai_dich_vu;

-- 8.	Hiển thị thông tin ho_ten_khach_hang có trong hệ thống, với yêu cầu ho_ten_khach_hang không trùng nhau.
select distinct ho_ten 
from khach_hang;

-- 9.	Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2019 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.
select month(ngay_lam_hop_dong) as thang , count(month(ngay_lam_hop_dong)) as sokhachlamhop_dong
from hop_dong
where year(ngay_lam_hop_dong ) =2019
group by thang
order by thang;

-- 10.	Hiển thị thông tin tương ứng với từng Hợp đồng thì đã sử dụng bao nhiêu Dịch vụ đi kèm. Kết quả hiển thị bao gồm id_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, so_luongdich_vu_di_kem (được tính dựa trên việc count các id_hop_dong_chi_tiet).
select a.id_hop_dong,ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,so_luong
from hop_dong a,hop_dong_chi_tiet b
where a.id_hop_dong=b.id_hop_dong;


-- 11.	Hiển thị thông tin các Dịch vụ đi kèm đã được sử dụng bởi những Khách hàng có ten_loai_khach_hang là “Diamond” và có địa chỉ là “Vinh” hoặc “Quảng Ngãi”.
select *
from dich_vu_di_kem
where id_dich_vu_di_kem IN (select id_dich_vu_di_kem
                        from hop_dong_chi_tiet
                        where id_hop_dong IN(select id_hop_dong from hop_dong where id_khach_hang IN(select id_khach_hang from khach_hang a,loai_khach b
                                                                where (a.id_loai_khach=b.id_loai_khach) and ((b.ten_loai_khach='Diamond') and (a.dia_chi='Vinh' or a.dia_chi='Quảng Ngãi'))))) ;
 -- 12. tat ca cac bang , dieu kien chi den ID dich_vu
select hop_dong.id_hop_dong , nhan_vien.ho_ten as ten_nhan_vien, khach_hang.ho_ten as ten_khach_hang,khach_hang.so_dien_thoai as so_dien_thoai_khachhhang,ten_dich_vu,hop_dong_chi_tiet.so_luong as so_luongdikem
from (((hop_dong join nhan_vien on hop_dong.id_nhan_vien=nhan_vien.id_nhan_vien) join khach_hang on hop_dong.id_khach_hang = khach_hang.id_khach_hang)
join dich_vu on hop_dong.id_dich_vu = dich_vu.id_dich_vu) join hop_dong_chi_tiet on hop_dong.id_hop_dong=hop_dong_chi_tiet.id_hop_dong
where(hop_dong.id_dich_vu in(select dich_vu.id_dich_vu where(hop_dong.id_dich_vu = dich_vu.id_dich_vu) and ((month(ngay_lam_hop_dong) in(10,11,12))and (year(ngay_lam_hop_dong)=2019)))
and(hop_dong.id_dich_vu not in (select dich_vu.id_dich_vu where(hop_dong.id_dich_vu=dv.id_dich_vu)and(month(ngay_lam_hop_dong) in(1,2,3,4,5,6) and year(ngay_lam_hop_dong)=2019))));

-- 13 Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng.
select *
 from dich_vu_di_kem
 where id_dich_vu_di_kem in(select id_dich_vu_di_kem from(
											select id_dich_vu_di_kem,count(id_dich_vu_di_kem) as SL from hop_dong_chi_tiet
											group by id_dich_vu_di_kem
											having SL= (select max(so_luong_dv)from(
													select id_dich_vu_di_kem,count(*) as so_luong_dv from hop_dong_chi_tiet group by id_dich_vu_di_kem) as S)) as B);
-- 14.	Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. Thông tin hiển thị bao gồm id_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, SoLanSuDung.
select hd.id_hop_dong,ldv.ten_loai_dich_vu,ten_dich_vu_di_kem
from (((hop_dong hd join dich_vu dv on hd.id_dich_vu=dv.id_dich_vu) join loai_dich_vu ldv on ldv.id_loai_dich_vu=dv.id_loai_dich_vu) 
      join hop_dong_chi_tiet hdct on hdct.id_hop_dong=hd.id_hop_dong)join dich_vu_di_kem dvdk on dvdk.id_dich_vu_di_kem=hdct.id_dich_vu_di_kem
where
   hdct.id_dich_vu_di_kem in(select id_dich_vu_di_kem
                    from hop_dong_chi_tiet
                    group by id_dich_vu_di_kem
                    having count(id_dich_vu_di_kem)=1);
                    
-- 	15.	Hiển thi thông tin của tất cả nhân viên bao gồm id_nhan_vien, ho_ten, trinh_do, ten_bo_phan, so_dien_thoai, dia_chi mới chỉ lập được tối đa 3 hợp đồng từ năm 2018 đến 2019.
select nv.id_nhan_vien,ho_ten,td.trinh_do,bp.ten_bo_phan,nv.so_dien_thoai as so_dien_thoai,dia_chi 
from ((nhan_vien nv join bophan bp on nv.id_bo_phan=bp.id_bo_phan) join hop_dong hd on hd.id_nhan_vien=nv.id_nhan_vien)join trinh_do td on nv.id_trinh_do=td.id_trinh_do
where 
     hd.id_nhan_vien in (select id_nhan_vien
                       from
                       (select id_nhan_vien,count(*) as SLNV
					    from hop_dong
						where
                             year(ngay_lam_hop_dong) between 2018 and 2019
						     group by id_nhan_vien
						      Having SLNV<=3) as B1)
                            group by id_nhan_vien ;
-- 16 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2017 đến năm 2019.
SET SQL_SAFE_UPDATES=0;  
delete from nhan_vien  where id_nhan_vien not in (select id_nhan_vien
                                        from hop_dong 
                                        where year(ngay_lam_hop_dong) between 2017 and 2019 );
 SET SQL_SAFE_UPDATES=1; 
 -- 17
 SET SQL_SAFE_UPDATES=0;  
delete from nhan_vien  where id_nhan_vien not in (select id_nhan_vien
                                        from hop_dong 
                                        where year(ngay_lam_hop_dong) between 2017 and 2019 );
 SET SQL_SAFE_UPDATES=1; 
 -- 18
 SET SQL_SAFE_UPDATES=0;  
 delete from khach_hang  where id_khach_hang in (select id_khach_hang
                                             from hop_dong
	                                     where id_khach_hang and year(ngay_lam_hop_dong)<2016);
 SET SQL_SAFE_UPDATES=1; 
 -- 20
 select id_nhan_vien as id,ho_ten,email,sdt,ngay_sinh,dia_chi
from nhan_vien
union all
select IDKhachHang as ID,ho_ten,email,sdt,ngay_sinh,dia_chi
from khach_hang  
