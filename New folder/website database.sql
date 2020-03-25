insert into suppliers (name,email,phone_number,address)values 
('dell','dell.com','12121','asdasdasda'),
('mac','mac.com','1111','aaaaa'),
('hp','hp.com','333333','gfgfgfgfgfg');
insert into categories(name , description)values
('fpt','xach tay'),
('dienmayxanh','chinh hang'),
('the gioi di dong','xach tay');
insert into employees(name,phone_number,address,email,birthday)values
('tien','0000000','Da Nang','1212121','1996-11-12'),
('nam','11111111','Thanh Hoa','23232323','2003-4-1'),
('Dung','22222222','Ha Noi','4454545454','1990-10-12');
insert into customers(name,phone_number,address,email,birthday)values
('ha','43453457','Da Nang','1212121','1996-11-12'),
('hanh','0101010111','Da Nang','1212121','1994-11-12'),
('tien','232323230','Da Nang','1212121','1995-11-12');
insert into products(name,price,discount,category_id,supplier_id,description)values
('vay',12,10,1,1,'hoan thanh'),
('ao',13,10,2,2,'hoan thanh'),
('quan xi',100,0,3,3,'hoan thanh');
insert into orders(created_date,shipped_date,description,shipping_address,payment_type,customer_id,employee_id)values
('2019-8-8','2019-8-10','hoan thanh','Da Nang','tra sau',1,1),
('2019-7-8','2019-7-10','hoan thanh','Quang Nam','chuyen khoan',2,2),
('2019-4-8','2019-4-10','hoan thanh','Hue','tra chuoc',3,3);
insert into orderdetails(order_id,product_id,quantity)values
(1,1,2),
(2,2,1),
(3,3,2),
(4,4,2);