USE Test_AQ

CREATE TABLE NHANVIEN(
        MANV char(4) PRIMARY KEY ,
        HOTEN VARCHAR(40),
        DTHOAI VARCHAR(20),
        NGVL DATE)

CREATE TABLE KHACHHANG(
    MAKH CHAR(4) PRIMARY KEY,
    HOTEN VARCHAR(40),
    DCHI VARCHAR(50),
    SODT VARCHAR(20),
    NGSINH DATE,
    NGDK DATE, 
    DOANHSO BIGINT)
    
CREATE TABLE SANPHAM(
    MASP CHAR(4) PRIMARY KEY,
    TENSP VARCHAR(40),
    DVT VARCHAR(20),
    NUOCSX VARCHAR(40),
    GIA BIGINT)

CREATE TABLE HOADON(
    SOHD INT PRIMARY KEY,
    NGHD DATE,
    MAKH CHAR(4) REFERENCES KHACHHANG (MAKH),
    MANV CHAR(4) REFERENCES NHANVIEN (MANV),
    TRIGIA BIGINT)
    
CREATE TABLE CTHD(
    SOHD INT references HOADON (SOHD),
    MASP CHAR(4) REFERENCES SANPHAM (MASP),
    SL INT )
    
/*Add Data Table 'NHANVIEN'*/
insert into NHANVIEN values ('NV01','Nguyen Nhu Nhut','0927345678','2006-04-13')
insert into NHANVIEN values ('NV02','Le Thi Phi Yen','0987567390','2006-04-21')
insert into NHANVIEN values ('NV03','Nguyen Van B','0997047382','2006-04-27')
insert into NHANVIEN values ('NV04','Ngo Thanh Tuan','0913758498','2006-06-24')
insert into NHANVIEN values ('NV05','Nguyen Thi Truc Thanh','0918590387','2006-07-20')
    
/*Add Data Table 'KHACHHANG'*/
insert into KHACHHANG VALUES ('KH01','NGUYEN VAN A','731 TRAN HUNG DAO, Q5, TPHCM','08823451','1960-10-22','1960-10-22',13000000)
insert into KHACHHANG values ('KH02','Tran Ngoc Han','23/5, Nguyen Trai, Q 5, Tp HCM','0908256478','1974-04-03','2006-07-30',280000)
insert into KHACHHANG values ('KH03','Tran Ngoc Linh','45, Nguyen Canh Chan, Q 1, Tp HCM','0938776266','1980-06-12','2006-08-05',3860000)
insert into KHACHHANG values ('KH04','Tran Minh Long','50/34 Le Dai Hanh, Q 10, Tp HCM','0917325476','1965-03-09','2006-10-02',250000)
insert into KHACHHANG values ('KH05','Le Nhat Minh','34, Truong Dinh, Q 3, Tp HCM','08246108','1950-03-10','2006-10-28',21000)
insert into KHACHHANG values ('KH06','Le Hoai Thuong','227, Nguyen Van Cu, Q 5, Tp HCM','08631738','1981-12-31','2006-11-24',915000)
insert into KHACHHANG values ('KH07','Nguyen Van Tam','32/3, Tran Binh Trong, Q 5, Tp HCM','0916783565','1971-04-06','2006-12-01',12500)
insert into KHACHHANG values ('KH08','Phan Thi Thanh','45/2, An Duong Vuong, Q 5, Tp HCM','0938435756','1971-01-10','2006-12-13',365000)
insert into KHACHHANG values ('KH09','Le Ha Vinh','873, Le Hong Phong, Q 5, Tp HCM','08654763','1979-09-03','2007-01-14',70000)
insert into KHACHHANG values ('KH10','Ha Duy Lap','34/34B, Nguyen Trai, Q 1, Tp HCM','08768904','1983-05-02','2007-01-16',67500)    
    
/*Add Data Table 'SANPHAM'*/
insert into SANPHAM values ('BC01','But chi','cay','Singapore',3000)
insert into SANPHAM values ('BC02','But chi','cay','Singapore',5000)
insert into SANPHAM values ('BC03','But chi','cay','Viet Nam',3500)
insert into SANPHAM values ('BC04','But chi','hop','Viet Nam',30000)
insert into SANPHAM values ('BB01','But bi','cay','Viet Nam',5000)
insert into SANPHAM values ('BB02','But bi','cay','Trung Quoc',7000)
insert into SANPHAM values ('BB03','But bi','hop','Thai Lan',100000)
insert into SANPHAM values ('TV01','Tap 100 giay mong','quyen','Trung Quoc',2500)
insert into SANPHAM values ('TV02','Tap 200 giay mong','quyen','Trung Quoc',4500)
insert into SANPHAM values ('TV03','Tap 100 giay tot','quyen','Viet Nam',3000)
insert into SANPHAM values ('TV04','Tap 200 giay tot','quyen','Viet Nam',5500)
insert into SANPHAM values ('TV05','Tap 100 trang','chuc','Viet Nam',23000)
insert into SANPHAM values ('TV06','Tap 200 trang','chuc','Viet Nam',53000)
insert into SANPHAM values ('TV07','Tap 100 trang','chuc','Trung Quoc',34000)
insert into SANPHAM values ('ST01','So tay 500 trang','quyen','Trung Quoc',40000)
insert into SANPHAM values ('ST02','So tay loai 1','quyen','Viet Nam',55000)
insert into SANPHAM values ('ST03','So tay loai 2','quyen','Viet Nam',51000)
insert into SANPHAM values ('ST04','So tay ','quyen','Thai Lan',55000)
insert into SANPHAM values ('ST05','So tay mong','quyen','Thai Lan',20000)
insert into SANPHAM values ('ST06','Phan viet bang','hop','Viet Nam',5000)
insert into SANPHAM values ('ST07','Phan khong bui','hop','Viet Nam',7000)
insert into SANPHAM values ('ST08','Bong bang','cai','Viet Nam',1000)
insert into SANPHAM values ('ST09','But long','cay','Viet Nam',5000)
insert into SANPHAM values ('ST10','But long','cay','Trung Quoc',7000)
    
/*Add Data Table 'HOADON'*/
insert into HOADON values (1001,'2006-07-23','KH01','NV01',320000)
insert into HOADON values (1002,'2006-08-12','KH01','NV02',840000)
insert into HOADON values (1003,'2006-08-23','KH02','NV01',100000)
insert into HOADON values (1004,'2006-09-01','KH02','NV01',180000)
insert into HOADON values (1005,'2006-10-20','KH01','NV02',3800000)
insert into HOADON values (1006,'2006-10-16','KH01','NV03',2430000)
insert into HOADON values (1007,'2006-10-28','KH03','NV03',510000)
insert into HOADON values (1008,'2006-10-28','KH01','NV03',440000)
insert into HOADON values (1009,'2006-10-28','KH03','NV04',200000)
insert into HOADON values (1010,'2006-11-01','KH01','NV01',5200000)
insert into HOADON values (1011,'2006-11-04','KH04','NV03',250000)
insert into HOADON values (1012,'2006-11-30','KH05','NV03',21000)
insert into HOADON values (1013,'2006-12-12','KH06','NV01',5000)
insert into HOADON values (1014,'2006-12-31','KH03','NV02',3150000)
insert into HOADON values (1015,'2007-01-01','KH06','NV01',910000)
insert into HOADON values (1016,'2007-01-01','KH07','NV02',12500)
insert into HOADON values (1017,'2007-01-02','KH08','NV03',35000)
insert into HOADON values (1018,'2007-01-13','KH08','NV03',330000)
insert into HOADON values (1019,'2007-01-13','KH01','NV03',30000)
insert into HOADON values (1020,'2007-01-14','KH09','NV04',70000)
insert into HOADON values (1021,'2007-01-16','KH10','NV03',67500)
insert into HOADON values (1022,'2007-01-16',null,'NV03',7000)
insert into HOADON values (1023,'2007-01-17',null,'NV01',330000)
    
/*Add Data Table 'CTHD'*/
insert into CTHD values (1001,'TV02',10)
insert into CTHD values (1001,'ST01',5)
insert into CTHD values (1001,'BC01',5)
insert into CTHD values (1001,'BC02',10)
insert into CTHD values (1001,'ST08',10)
insert into CTHD values (1002,'BC04',20)
insert into CTHD values (1002,'BB01',20)
insert into CTHD values (1002,'BB02',20)
insert into CTHD values (1003,'BB03',10)
insert into CTHD values (1004,'TV01',20)
insert into CTHD values (1004,'TV02',20)
insert into CTHD values (1004,'TV03',20)
insert into CTHD values (1004,'TV04',20)
insert into CTHD values (1005,'TV05',50)
insert into CTHD values (1005,'TV06',50)
insert into CTHD values (1006,'TV07',20)
insert into CTHD values (1006,'ST01',30)
insert into CTHD values (1006,'ST02',10)
insert into CTHD values (1007,'ST03',10)
insert into CTHD values (1008,'ST04',8)
insert into CTHD values (1009,'ST05',10)
insert into CTHD values (1010,'TV07',50)
insert into CTHD values (1010,'ST07',50)
insert into CTHD values (1010,'ST08',100)
insert into CTHD values (1010,'ST04',50)
insert into CTHD values (1010,'TV03',100)
insert into CTHD values (1011,'ST06',50)
insert into CTHD values (1012,'ST07',3)
insert into CTHD values (1013,'ST08',5)
insert into CTHD values (1014,'BC02',80)
insert into CTHD values (1014,'BB02',100)
insert into CTHD values (1014,'BC04',60)
insert into CTHD values (1014,'BB01',50)
insert into CTHD values (1015,'BB02',30)
insert into CTHD values (1015,'BB03',7)
insert into CTHD values (1016,'TV01',5)
insert into CTHD values (1017,'TV02',1)
insert into CTHD values (1017,'TV03',1)
insert into CTHD values (1017,'TV04',5)
insert into CTHD values (1018,'ST04',6)
insert into CTHD values (1019,'ST05',1)
insert into CTHD values (1019,'ST06',2)
insert into CTHD values (1020,'ST07',10)
insert into CTHD values (1021,'ST08',5)
insert into CTHD values (1021,'TV01',7)
insert into CTHD values (1021,'TV02',10)
insert into CTHD values (1022,'ST07',1)
insert into CTHD values (1023,'ST04',6)
    
#QUESTION 1:In ra danh sách các sản phẩm (MASP,TENSP) do Viet Nam sản xuất
select MASP , TENSP , NUOCSX 
from sanpham 
where NUOCSX = 'Viet Nam'

#QUESTION 2: In ra danh sách các sản phẩm (MASP, TENSP) có đơn vị tính là “cay”, ”quyen”.
select MASP , TENSP 
from sanpham 
where DVT in ('cay' ,'quyen')
    
#QUESTION 3: In ra danh sách các sản phẩm (MASP,TENSP) có mã sản phẩm bắt đầu là “B” và kết thúc là “01”.
select MASP , TENSP 
from sanpham 
where MASP like 'b%01'
    
#QUESTION 4: In ra danh sách các sản phẩm (MASP,TENSP) do Việt Nan sản xuất có giá từ 20.000 đến 35.000.
select MASP, TENSP
from sanpham 
where GIA between 20000 and 35000

#QUESTION 5: In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quốc” hoặc “Việt Nam sản xuất có giá từ 30.000 đến 40.000.
select MASP , TENSP 
from sanpham 
where NUOCSX in ('Viet Nam', 'Trung Quoc')
and GIA between 30000 and 40000

#QUESTION 6: In ra các số hóa đơn, trị giá hóa đơn bán ra trong ngày 1/1/2007 và ngày 2/1/2007.
select SOHD , TRIGIA 
from hoadon 
where NGHD in ('2007-1-1', '2007-1-2')

#QUESTION 7: In ra các số hóa đơn, trị giá hóa đơn trong tháng 1/2007, sắp xếp theo ngày (tăng dần) và trị giá của hóa đơn (giảm dần).
select SOHD , TRIGIA , NGHD 
from hoadon 
where NGHD like '2007-01-%'
order by NGHD asc , TRIGIA desc 

#QUESTION 8: In ra danh sách các khách hàng (MAKH, HOTEN) đã mua hàng trong ngày 1/1/2007.
select k.MAKH , k.HOTEN , h.NGHD  
from khachhang as k
left join hoadon as h
on k.MAKH = h.MAKH 
where h.NGHD = '2007-1-1'

#QUESTION 9: In ra số hóa đơn, trị giá các hóa đơn do nhân viên có tên “Nguyen Van B” lập trong ngày 28/10/2006.
select h.SOHD , h.TRIGIA , n.HOTEN , h.NGHD  
from hoadon as h 
left join nhanvien as n 
on h.MANV = n.MANV 
where n.HOTEN = 'Nguyen Van B'
and h.NGHD = '2006-10-28'

#QUESTION 10: In ra danh sách các sản phẩm (MASP,TENSP) được khách hàng có tên “Nguyen Van A” mua trong tháng 10/2006.
-- select SANPHAM.MASP,TENSP
-- from KHACHHANG,SANPHAM,HOADON,CTHD
-- where (KHACHHANG.MAKH = HOADON.MAKH) 
-- and (SANPHAM.MASP = CTHD.MASP) 
-- and (HOADON.SOHD = CTHD.SOHD) 
-- and HOTEN= 'Nguyen Van A' and YEAR(NGHD)='2006' and MONTH(NGHD)='10'


select s.TENSP , s.MASP 
from sanpham s 
left join cthd c 
on s.MASP = c.MASP 
where c.SOHD in (select h.SOHD 
				from hoadon h
				left join khachhang k
				on h.MAKH = k.MAKH 
				where h.NGHD like '2006-10-%'
				and k.HOTEN  = 'NGUYEN VAN A' )
				
#QUESTION 11: Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”.
select SOHD , MASP 
from cthd 
where MASP in ('BB01', 'BB02')

#QUESTION 12: Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”, mỗi sản phẩm mua với số lượng từ 10 đến 20.
select SOHD , MASP , SL 
from cthd 
where MASP in ('BB01', 'BB02')
and SL between 10 and 20 

#QUESTION 13: Tìm các số hóa đơn mua cùng lúc 2 sản phẩm có mã số “BB01” và “BB02”, mỗi sản phẩm mua với số lượng từ 10 đến 20.
SELECT SOHD
FROM CTHD C1
WHERE MASP = 'BB02' AND C1.SL BETWEEN 10 AND 20 AND EXISTS (
	SELECT SOHD 
	FROM CTHD C2
	WHERE MASP = 'BB01' AND C1.SOHD = C2.SOHD AND C2.SL BETWEEN 10 AND 20
	)

#QUESTION 14: In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất hoặc các sản phẩm được bán ra trong ngày 1/1/2007.
select S.MASP , S.TENSP 
from sanpham s 
left join  (select MASP , H.NGHD 
			from cthd as c, hoadon as h 
			where C.SOHD = H.SOHD and H.NGHD = '2007-01-01') as A 
on S.MASP = A.MASP
where S.NUOCSX = 'Trung Quoc' 

#QUESTION 15: In ra danh sách các sản phẩm (MASP,TENSP) không bán được.
select s.MASP 
from sanpham s  
where not exists (select c.MASP from cthd c where c.MASP = s.MASP)

#QUESTION 16: In ra danh sách các sản phẩm (MASP,TENSP) không bán được trong năm 2006.
select distinct s.MASP , s.TENSP 
from sanpham s , hoadon h 
where not exists (select c.MASP from cthd c where c.MASP = s.MASP)
and exists (select c.MASP from cthd c where c.SOHD = h.SOHD and h.NGHD like "2006%")

#QUESTION 17: In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất không bán được trong năm 2006.
select distinct s.MASP , s.TENSP 
from sanpham s , hoadon h 
where not exists (select c.MASP from cthd c where c.MASP = s.MASP)
and exists (select c.MASP from cthd c where c.SOHD = h.SOHD and h.NGHD like "2006%")
and s.NUOCSX = 'Trung Quoc'

#QUESTION 18: Tìm số hóa đơn đã mua tất cả các sản phẩm do Singapore sản xuất.
select c.SOHD 
from sanpham s 
left join cthd c 
on s.MASP = c.MASP 
where s.NUOCSX = 'Singapore'

#QUESTION 19: Có bao nhiêu hóa đơn không phải của khách hàng đăng ký thành viên mua? 
select count(h.SOHD) as hoa_don_khong_phai_thanh_vien
from hoadon h 
left join khachhang k 
on h.MAKH = k.MAKH 
where h.MAKH is null 

#QUESTION 20: Có bao nhiêu sản phẩm khác nhau được bán ra trong năm 2006.
select count(distinct(c.MASP)) 
from hoadon h
left join cthd c 
on h.SOHD = c.SOHD 
where h.NGHD like "2006%" 

#QUESTION 21: Cho biết trị giá hóa đơn cao nhất, thấp nhất là bao nhiêu ?
select max(TRIGIA) as GiaHoaDonCaoNhat, min(TRIGIA) GiaHoaDonThapNhat
from hoadon h 

#QUESTION 22: Trị giá trung bình của tất cả các hóa đơn được bán ra trong năm 2006 là bao nhiêu?
select round(avg(TRIGIA)) 
from hoadon h 
where NGHD like "2006%"

#QUESTION 23: Tính doanh thu bán hàng trong năm 2006.
select round(sum(TRIGIA)) 
from hoadon h 
where NGHD like "2006%"

#QUESTION 24: Tìm số hóa đơn có trị giá cao nhất trong năm 2006.
select max(TRIGIA) as GiaHoaDonCaoNhat
from hoadon h 
where NGHD like "2006%"

#QUESTION 25: Tìm họ tên khách hàng đã mua hóa đơn có trị giá cao nhất trong năm 2006.
select K.HOTEN 
from khachhang k 
left join (select max(TRIGIA) as GiaHoaDonCaoNhat , MAKH 
			from hoadon h 
			where NGHD like "2006%"
			group by 2 
			limit 1	) as A 
on K.MAKH = A.MAKH
where K.MAKH = A.MAKH

#QUESTION 26: In ra danh sách 3 khách hàng (MAKH, HOTEN) có doanh số cao nhất.
select K.MAKH , K.HOTEN , sum(H.TRIGIA) as DoanhSo
from khachhang k 
left join hoadon h 
on K.MAKH = H.MAKH 
group by K.MAKH , K.HOTEN 
order by SUM(H.TRIGIA) desc 
limit 3

#QUESTION 27: In ra danh sách các sản phẩm (MASP, TENSP) có giá bán bằng 1 trong 3 mức giá cao nhất.
select S.MASP , S.TENSP 
from sanpham as s 
left join (select distinct s1.GIA 
			from sanpham as s1 
			order by s1.GIA desc 
			limit 3) as A 
on s.GIA = A.GIA
where S.GIA = A.GIA 

#QUESTION 28: In ra danh sách các sản phẩm (MASP, TENSP) do “Thai Lan” sản xuất có giá bằng 1 trong 3 mức giá cao nhất (của tất cả các sản phẩm).
select S.MASP , S.TENSP 
from sanpham as s 
left join (select distinct s1.GIA 
			from sanpham as s1 
			order by s1.GIA desc 
			limit 3) as A 
on s.GIA = A.GIA
where S.GIA = A.GIA 
and S.NUOCSX = 'Thai Lan' 

#QUESTION 29: In ra danh sách các sản phẩm (MASP, TENSP) do “Trung Quoc” sản xuất có giá bằng 1 trong 3 mức giá cao nhất (của sản phẩm do “Trung Quoc” sản xuất).
select S.MASP , S.TENSP 
from sanpham as s 
left join (select distinct s1.GIA 
			from sanpham as s1 
			where s1.NUOCSX = 'Trung Quoc' 
			order by s1.GIA desc 
			limit 3) as A 
on s.GIA = A.GIA
where S.GIA = A.GIA 
and S.NUOCSX = 'Trung Quoc' 

#QUESTION 30: In ra danh sách 3 khách hàng có doanh số cao nhất (sắp xếp theo kiểu xếp hạng).
select MAKH , HOTEN , RANK() OVER(order by DOANHSO desc) as XEPHANG
from khachhang k 
limit 3

#QUESTION 31: Tính tổng số sản phẩm do “Trung Quoc” sản xuất.
select COUNT(MASP) as TongSanPham , NUOCSX 
from sanpham s 
group by 2
having NUOCSX = 'Trung Quoc'

#QUESTION 32: Tính tổng số sản phẩm của từng nước sản xuất.
select  NUOCSX  , COUNT(MASP) as TongSanPham 
from sanpham s 
group by 1

#QUESTION 33: Với từng nước sản xuất, tìm giá bán cao nhất, thấp nhất, trung bình của các sản phẩm
select MAX(GIA) as GiaBanCaoNhat , min(GIA) as GiaBanThapNhat , round(AVG(GIA)) as TrungBinhGia , NUOCSX  
from sanpham 
group by NUOCSX 

#QUESTION 34: Tính doanh thu bán hàng mỗi ngày.
select sum(TRIGIA) as DOANHTHU , NGHD 
from hoadon h 
group by NGHD 

#QUESTION 35: Tính tổng số lượng của từng sản phẩm bán ra trong tháng 10/2006
select sum(c.SL) as TONGSOLUONG , c.MASP  
from cthd c  
left join hoadon h 
on c.SOHD = h.SOHD 
where h.NGHD like "2006-10%"
group by 2

#QUESTION 36: Tính doanh thu bán hàng của từng tháng trong năm 2006
select sum(TRIGIA) as DOANHTHU , month(NGHD) 
from hoadon h 
where NGHD like "2006%"
group by 2

#QUESTION 37: Tìm hóa đơn có mua ít nhất 4 sản phẩm khác nhau
select count(distinct MASP) as SOLUONG, SOHD 
from cthd
group by SOHD 
having SOLUONG >= 4

#QUESTION 38: Tìm hóa đơn có mua 3 sản phẩm do Viet Nam sản xuất (3 sản phẩm khác nhau)
select count(distinct c.MASP) as SOLUONG, c.SOHD 
from cthd c
left join sanpham s 
on c.MASP = s.MASP 
where s.NUOCSX = 'Viet Nam'
group by SOHD 
having SOLUONG = 3

#QUESTION 39: Tìm khách hàng (MAKH, HOTEN) có số lần mua hàng nhiều nhất
select count(h.SOHD) as SoLanMuaHang, k.MAKH , k.HOTEN  
from hoadon h 
left join khachhang k 
on h.MAKH = k.MAKH 
group by k.MAKH 
order by SoLanMuaHang desc 
limit 1

#QUESTION 40: Tháng mấy trong năm 2006, doanh số bán hàng cao nhất?
select sum(TRIGIA) as DOANHTHU , month(NGHD) 
from hoadon h 
where NGHD like "2006%"
group by 2
order by DOANHTHU desc 
limit 1

#QUESTION 41: Tìm sản phẩm (MASP, TENSP) có tổng số lượng bán ra thấp nhất trong năm 2006
-- select c.MASP , sum(c.SL) as TongSoLuong
-- from hoadon h , cthd c
-- where h.SOHD = c.SOHD 
-- and h.NGHD like "2006%"
-- group by c.MASP 
-- order by TongSoLuong asc 
-- limit 1

select a.MASP , s.TENSP , a.TongSoLuong
from sanpham s 
left join (select c.MASP , sum(c.SL) as TongSoLuong
			from hoadon h , cthd c
			where h.SOHD = c.SOHD 
			and h.NGHD like "2006%"
			group by c.MASP 
			order by TongSoLuong asc 
			limit 1) as a
on s.MASP = a.MASP
where s.MASP = a.MASP

#QUESTION 42: Mỗi nước sản xuất, tìm sản phẩm (MASP,TENSP) có giá bán cao nhất.
select s.NUOCSX , max(GIA) as GiaBanCaoNhat , s.MASP , s.TENSP 
from sanpham s 
group by s.NUOCSX , s.MASP , s.TENSP 
having max(GIA) >= all (select max(GIA) 
						from sanpham s1
						where s.NUOCSX = s1.NUOCSX 
						group by NUOCSX )

 
#QUESTION 43: Tìm nước sản xuất sản xuất ít nhất 3 sản phẩm có giá bán khác nhau.
select NUOCSX , count(distinct GIA) as LoaiGia
from sanpham s 
group by 1
having LoaiGia >= 3

#QUESTION 44: Trong 10 khách hàng có doanh số cao nhất, tìm khách hàng có số lần mua hàng nhiều nhất.
select h.MAKH , count(h.SOHD) as SoLanMuaHang, rank() over(order by k.DOANHSO desc) as XepHangDoanhSo
from hoadon h 
left join khachhang k 
on h.MAKH = k.MAKH 
group by h.MAKH 
limit 1



