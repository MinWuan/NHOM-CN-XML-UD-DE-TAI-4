from lxml import etree


tree = etree.parse("heThongNhanSu.xml")

bang_Luong_1 = tree.xpath("//DS_BANG_LUONG/BANG_LUONG[luong_co_ban > 8000000]/luong_co_ban/text()")
print(" Danh sách lương cơ bản hơn 8 triệu:")
for luong in bang_Luong_1:
    print("-", luong)

bang_Luong_2 = tree.xpath("//DS_BANG_LUONG/BANG_LUONG/nam/text()")
print(" Danh sách năm của các bảng lương:")
for luong in bang_Luong_2:
    print("-", luong)
    
    
cham_cong_1 = tree.xpath("//DS_CHAM_CONG/CHAM_CONG/so_ngay_cong/text()")
print(" Danh sách số ngày công của các bảng chấm công:")
for cham_cong in cham_cong_1:
    print("-", cham_cong)
    
cham_cong_2 = tree.xpath("//DS_CHAM_CONG/CHAM_CONG[so_ngay_cong > 21]/ma_cc/text()")
print(" Danh sách mã chấm công của các bảng chấm công:")
for cham_cong in cham_cong_2:
    print("-", cham_cong)
    
chuc_vu_1 = tree.xpath("//DS_CHUC_VU/CHUC_VU/ten_chuc_vu/text()")
print(" Danh sách tên chức vụ:")
for chuc_vu in chuc_vu_1:
    print("-", chuc_vu)
    
chuc_vu_2 = tree.xpath("//DS_CHUC_VU/CHUC_VU[luong_co_ban > 6000000]/ten_chuc_vu/text()")
print(" Danh sách tên chức vụ có lương cơ bản hơn 6 triệu:")
for chuc_vu in chuc_vu_2:
    print("-", chuc_vu)
    


nhan_vien_1 = tree.xpath("//DS_NHAN_VIEN/NHAN_VIEN/ho_ten/text()")
print(" Danh sách tên nhân viên:")
for nhan_vien in nhan_vien_1:
    print("-", nhan_vien)

nhan_vien_2 = tree.xpath("//DS_NHAN_VIEN/NHAN_VIEN[starts-with(ho_ten, 'Nguyễn')]/ho_ten/text()")
print(" Danh sách tên nhân viên có họ là Nguyễn:")
for nhan_vien in nhan_vien_2:
    print("-", nhan_vien)
    
phong_ban_1 = tree.xpath("//DS_PHONG_BAN/PHONG_BAN/ten_phong_ban/text()")
print(" Danh sách tên phòng ban:")
for phong_ban in phong_ban_1:
    print("-", phong_ban)
    
du_an_1 = tree.xpath("//DS_DU_AN/DU_AN/ten_du_an/text()")
print(" Danh sách tên dự án:")
for du_an in du_an_1:
    print("-", du_an)
    

qtlv_1 = tree.xpath("//DS_QTLV/QTLV/ma_qtlv/text()")
print(" Danh sách mã qtlv:")
for qtlv in qtlv_1:
    print("-", qtlv)

tgda_1 = tree.xpath("//DS_THAM_GIA_DU_AN/THAM_GIA_DU_AN/ma_tgda/text()")
print(" Danh sách mã tgda:")
for qtlv in tgda_1:
    print("-", qtlv)


    




    