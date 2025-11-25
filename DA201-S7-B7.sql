SELECT 
    id_khach_hang,
    SUM(so_luong * don_gia) AS tong_chi_tieu_2023
FROM giao_dich
WHERE YEAR(ngay_giao_dich) = 2023
GROUP BY id_khach_hang
HAVING SUM(so_luong * don_gia) > 30000000;
SELECT 
    khu_vuc,
    SUM(so_luong * don_gia) AS tong_doanh_thu,
    SUM(so_luong) AS tong_so_luong
FROM giao_dich
WHERE ten_san_pham = 'Laptop A'
GROUP BY khu_vuc
HAVING SUM(so_luong) >= 1;
SELECT 
    danh_muc,
    AVG(so_luong * don_gia) AS gia_tri_trung_binh
FROM giao_dich
WHERE khu_vuc = 'TP.HCM'
GROUP BY danh_muc
HAVING AVG(so_luong * don_gia) > 5000000;
SELECT 
    id_khach_hang
FROM giao_dich
WHERE YEAR(ngay_giao_dich) = 2023
GROUP BY id_khach_hang
HAVING COUNT(DISTINCT danh_muc) >= 2;
