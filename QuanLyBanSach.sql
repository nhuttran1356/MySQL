CREATE TABLE chude (
  machude  varchar(10) NOT NULL, 
  tenchude varchar(50) NOT NULL, 
  PRIMARY KEY (machude));
CREATE TABLE donhang (
  madonhang   varchar(10) NOT NULL, 
  ngaygiao    date NOT NULL, 
  ngaydat     date NOT NULL, 
  tinhtrangGH varchar(10) NOT NULL, 
  dathanhtoan varchar(10) NOT NULL, 
  `Column`    int(10) NOT NULL, 
  makhach     varchar(10) NOT NULL, 
  PRIMARY KEY (madonhang));
CREATE TABLE khachhang (
  makhach   varchar(10) NOT NULL, 
  taikhoan  varchar(50) NOT NULL, 
  matkhau   varchar(20) NOT NULL, 
  email     varchar(50) NOT NULL, 
  diachi    varchar(50) NOT NULL, 
  dienthoai varchar(20) NOT NULL, 
  gioitinh  varchar(10) NOT NULL, 
  ngaysinh  varchar(3) NOT NULL, 
  hoten     varchar(100) NOT NULL, 
  PRIMARY KEY (makhach));
CREATE TABLE nhaxuatban (
  maNXB     varchar(10) NOT NULL, 
  tenNXB    varchar(50) NOT NULL, 
  diachi    varchar(50) NOT NULL, 
  dienthoai varchar(20) NOT NULL, 
  masach    varchar(10) NOT NULL);
CREATE TABLE sach (
  masach      varchar(10) NOT NULL, 
  tensach     varchar(200) NOT NULL, 
  giaban      bigint(20) NOT NULL, 
  mota        varchar(255) NOT NULL, 
  anhbia      bigint(20) NOT NULL, 
  ngaycapnhap date NOT NULL, 
  soluongton  int(10) NOT NULL, 
  `Column`    int(10) NOT NULL, 
  machude     varchar(10) NOT NULL, 
  PRIMARY KEY (masach));
CREATE TABLE sach_donhang (
  sachmasach       varchar(10) NOT NULL, 
  donhangmadonhang varchar(10) NOT NULL, 
  dongia           int(10) NOT NULL, 
  soluong          int(10) NOT NULL, 
  PRIMARY KEY (sachmasach, 
  donhangmadonhang));
CREATE TABLE tacgia (
  matacgia  varchar(10) NOT NULL, 
  tentacgia varchar(100) NOT NULL, 
  `Column`  int(10) NOT NULL, 
  diachi    varchar(50) NOT NULL, 
  tieusu    varchar(255) NOT NULL, 
  dienthoai varchar(20) NOT NULL, 
  PRIMARY KEY (matacgia));
CREATE TABLE tacgia_sach (
  tacgiamatacgia varchar(10) NOT NULL, 
  sachmasach     varchar(10) NOT NULL, 
  vaitro         varchar(10) NOT NULL, 
  vitri          varchar(10) NOT NULL, 
  PRIMARY KEY (tacgiamatacgia, 
  sachmasach));
ALTER TABLE donhang ADD CONSTRAINT FKdonhang290478 FOREIGN KEY (makhach) REFERENCES khachhang (makhach);
ALTER TABLE sach_donhang ADD CONSTRAINT FKsach_donha810449 FOREIGN KEY (sachmasach) REFERENCES sach (masach);
ALTER TABLE sach_donhang ADD CONSTRAINT FKsach_donha652643 FOREIGN KEY (donhangmadonhang) REFERENCES donhang (madonhang);
ALTER TABLE sach ADD CONSTRAINT FKsach813682 FOREIGN KEY (machude) REFERENCES chude (machude);
ALTER TABLE tacgia_sach ADD CONSTRAINT FKtacgia_sac799010 FOREIGN KEY (tacgiamatacgia) REFERENCES tacgia (matacgia);
ALTER TABLE tacgia_sach ADD CONSTRAINT FKtacgia_sac595749 FOREIGN KEY (sachmasach) REFERENCES sach (masach);
ALTER TABLE nhaxuatban ADD CONSTRAINT FKnhaxuatban487977 FOREIGN KEY (masach) REFERENCES sach (masach);
